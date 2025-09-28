# Makefile for Sphinx documentation
#

# You can set these variables from the command line.
PYTHON       = python3
VENVDIR      = ./.venv
SPHINXBUILD  = $(VENVDIR)/bin/sphinx-build
#SPHINXOPTS   = --fail-on-warning --keep-going
SPHINXOPTS   = 
SOURCEDIR    = docs
BUILDDIR     = docs/_build
BUILDER      = html
JOBS         = auto
SPHINXLINT   = $(VENVDIR)/bin/sphinx-lint
REQUIREMENTS = requirements.txt

# Internal variables.
_ALL_SPHINX_OPTS = --jobs $(JOBS) $(SPHINXOPTS)

.PHONY: help
help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  venv       to create a venv with necessary tools"
	@echo "  html       to make standalone HTML files"
	@echo "  linkcheck  to check all external links for integrity"
	@echo "  htmlview   to open the index page built by the html target in your browser"
	@echo "  htmllive   to rebuild and reload HTML files in your browser"
	@echo "  clean      to remove the venv and build files"
	@echo "  check      to run a check for frequent markup errors"
	@echo "  lint       to lint all the files"

.PHONY: clean
clean: clean-venv
	-rm -rf $(BUILDDIR)/*

.PHONY: clean-venv
clean-venv:
	rm -rf $(VENVDIR)

.PHONY: venv
venv:
	@if [ -d $(VENVDIR) ] ; then \
		echo "venv already exists."; \
		echo "To recreate it, remove it first with \`make clean-venv'."; \
	else \
		$(MAKE) ensure-venv; \
	fi

.PHONY: ensure-venv
ensure-venv:
	@if [ ! -d $(VENVDIR) ] ; then \
		echo "Creating venv in $(VENVDIR)"; \
		if $(UV) --version >/dev/null 2>&1; then \
			$(UV) venv $(VENVDIR); \
			VIRTUAL_ENV=$(VENVDIR) $(UV) pip install -r $(REQUIREMENTS); \
		else \
			$(PYTHON) -m venv $(VENVDIR); \
			$(VENVDIR)/bin/python3 -m pip install --upgrade pip; \
			$(VENVDIR)/bin/python3 -m pip install -r $(REQUIREMENTS); \
		fi; \
		echo "The venv has been created in the $(VENVDIR) directory"; \
	fi

.PHONY: htmlview
htmlview: html
	$(PYTHON) -c "import os, webbrowser; webbrowser.open('file://' + os.path.realpath('docs/_build/html/index.html'))"

# .PHONY: htmllive
# htmllive: SPHINXBUILD = $(VENVDIR)/bin/sphinx-autobuild
# # Arbitrarily selected ephemeral port between 49152–65535
# # to avoid conflicts with other processes:
# htmllive: SPHINXOPTS = --re-ignore="/\.idea/|/venv/" --open-browser --delay 0 --port 0
# htmllive: html

.PHONY: htmllive
htmllive: SPHINXBUILD = $(VENVDIR)/bin/sphinx-autobuild
htmllive: SPHINXOPTS = --ignore "*.swp" --open-browser --port 8000 #0
htmllive: ensure-venv
	$(SPHINXBUILD) $(SPHINXOPTS) "$(SOURCEDIR)" "$(BUILDDIR)/html"


.PHONY: check
check: ensure-venv
	# Ignore the tools and venv dirs and check that the default role is not used.
	$(SPHINXLINT) -i tools -i $(VENVDIR) --enable default-role

.PHONY: _ensure-package
_ensure-package: venv
	if $(UV) --version >/dev/null 2>&1; then \
		VIRTUAL_ENV=$(VENVDIR) $(UV) pip install $(PACKAGE); \
	else \
		$(VENVDIR)/bin/python3 -m pip install $(PACKAGE); \
	fi

.PHONY: _ensure-pre-commit
_ensure-pre-commit:
	make _ensure-package PACKAGE=pre-commit

.PHONY: lint
lint: _ensure-pre-commit
	$(VENVDIR)/bin/python3 -m pre_commit run --all-files

# Defined so that "include/release-cycle.json"
# doesn't fall through to the catch-all target.
include/release-cycle.json:
	@exit

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.
.PHONY: Makefile
%: Makefile ensure-venv
	$(SPHINXBUILD) -M $@ "${SOURCEDIR}" "$(BUILDDIR)" $(_ALL_SPHINX_OPTS)
