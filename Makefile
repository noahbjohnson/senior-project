.PHONY: clean data lint requirements docs notebooks sync_data_to_s3 sync_data_from_s3

#################################################################################
# GLOBALS                                                                       #
#################################################################################

PROJECT_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
BUCKET = nbj-senior-project
PROFILE = default
PROJECT_NAME = senior-project
PYTHON_INTERPRETER = python3

ifeq (,$(shell which conda))
HAS_CONDA=False
else
HAS_CONDA=True
endif

#################################################################################
# COMMANDS                                                                      #
#################################################################################

## Make Project (requirements, notebooks, docs)
project: data notebooks docs


## Install Python Dependencies
requirements: test_environment
	$(PYTHON_INTERPRETER) -m pip install -U pip setuptools wheel
	$(PYTHON_INTERPRETER) -m pip install -r requirements.txt

## Make Dataset
data: requirements
	$(PYTHON_INTERPRETER) src/data/make_dataset.py

## Make Notebooks
notebooks:
	jupyter nbconvert --ExecutePreprocessor.timeout=600 --execute --to rst notebooks/0.ipynb --output ../docs/notebooks/0.rst
	jupyter nbconvert --ExecutePreprocessor.timeout=600 --execute --to rst notebooks/1.ipynb --output ../docs/notebooks/1.rst
	jupyter nbconvert --ExecutePreprocessor.timeout=600 --execute --to rst notebooks/2.ipynb --output ../docs/notebooks/2.rst
	jupyter nbconvert --ExecutePreprocessor.timeout=600 --execute --to rst notebooks/3.ipynb --output ../docs/notebooks/3.rst
	jupyter nbconvert --ExecutePreprocessor.timeout=600 --execute --to rst notebooks/4.ipynb --output ../docs/notebooks/4.rst
	jupyter nbconvert --ExecutePreprocessor.timeout=600 --execute --to rst notebooks/5.ipynb --output ../docs/notebooks/5.rst
    jupyter nbconvert --ExecutePreprocessor.timeout=600 --execute --to rst notebooks/5.ipynb --output ../docs/notebooks/6.rst
    jupyter nbconvert --ExecutePreprocessor.timeout=600 --execute --to rst notebooks/5.ipynb --output ../docs/notebooks/7.rst
    jupyter nbconvert --ExecutePreprocessor.timeout=600 --execute --to rst notebooks/5.ipynb --output ../docs/notebooks/8.rst


## Make Docs
docs:
	cd docs && make html && cd ..
	echo "file://$(PWD)/docs/_build/html/index.html"
	touch docs/_build/html/.nojekyll

## Delete all compiled Python files, Virtual Environments, and downloaded data
clean:
	find . -type f -name "*.py[co]" -delete
	find . -type d -name "__pycache__" -delete
	rm -f data/interim/*
	rm -f data/processed/*
	rm -f data/raw/*
ifeq (True,$(HAS_CONDA))
	conda remove --name $(PROJECT_NAME) --all -y
else
	deactivate
	rmvirtualenv $(PROJECT_NAME)
	workon
endif

## Lint using flake8
lint:
	flake8 src

## Upload Data to S3
sync_data_to_s3:
ifeq (default,$(PROFILE))
	aws s3 sync data/ s3://$(BUCKET)/data/
else
	aws s3 sync data/ s3://$(BUCKET)/data/ --profile $(PROFILE)
endif

## Download Data from S3
sync_data_from_s3:
ifeq (default,$(PROFILE))
	aws s3 sync s3://$(BUCKET)/data/ data/
else
	aws s3 sync s3://$(BUCKET)/data/ data/ --profile $(PROFILE)
endif

## Set up python interpreter environment
create_environment:
ifeq (True,$(HAS_CONDA))
		@echo ">>> Detected conda, creating conda environment."
ifeq (3,$(findstring 3,$(PYTHON_INTERPRETER)))
	conda create --name $(PROJECT_NAME) python=3 -y
else
	conda create --name $(PROJECT_NAME) python=2.7 -y
endif
		@echo ">>> New conda env created. Activate with:\nsource activate $(PROJECT_NAME)"
else
	$(PYTHON_INTERPRETER) -m pip install -q virtualenv virtualenvwrapper
	@echo ">>> Installing virtualenvwrapper if not already intalled.\nMake sure the following lines are in shell startup file\n\
	export WORKON_HOME=$$HOME/.virtualenvs\nexport PROJECT_HOME=$$HOME/Devel\nsource /usr/local/bin/virtualenvwrapper.sh\n"
	@bash -c "source `which virtualenvwrapper.sh`;mkvirtualenv $(PROJECT_NAME) --python=$(PYTHON_INTERPRETER)"
	@echo ">>> New virtualenv created. Activate with:\nworkon $(PROJECT_NAME)"
endif
		@echo ">>> After activating your environment run make project or debug with other options."

## Test python environment is setup correctly
test_environment:
	$(PYTHON_INTERPRETER) test_environment.py

#################################################################################
# PROJECT RULES                                                                 #
#################################################################################



#################################################################################
# Self Documenting Commands                                                     #
#################################################################################

.DEFAULT_GOAL := help

# Inspired by <http://marmelab.com/blog/2016/02/29/auto-documented-makefile.html>
# sed script explained:
# /^##/:
# 	* save line in hold space
# 	* purge line
# 	* Loop:
# 		* append newline + line to hold space
# 		* go to next line
# 		* if line starts with doc comment, strip comment character off and loop
# 	* remove target prerequisites
# 	* append hold space (+ newline) to line
# 	* replace newline plus comments by `---`
# 	* print line
# Separate expressions are necessary because labels cannot be delimited by
# semicolon; see <http://stackoverflow.com/a/11799865/1968>
.PHONY: help
help:
	@echo "$$(tput bold)Available rules:$$(tput sgr0)"
	@echo
	@sed -n -e "/^## / { \
		h; \
		s/.*//; \
		:doc" \
		-e "H; \
		n; \
		s/^## //; \
		t doc" \
		-e "s/:.*//; \
		G; \
		s/\\n## /---/; \
		s/\\n/ /g; \
		p; \
	}" ${MAKEFILE_LIST} \
	| LC_ALL='C' sort --ignore-case \
	| awk -F '---' \
		-v ncol=$$(tput cols) \
		-v indent=19 \
		-v col_on="$$(tput setaf 6)" \
		-v col_off="$$(tput sgr0)" \
	'{ \
		printf "%s%*s%s ", col_on, -indent, $$1, col_off; \
		n = split($$2, words, " "); \
		line_length = ncol - indent; \
		for (i = 1; i <= n; i++) { \
			line_length -= length(words[i]) + 1; \
			if (line_length <= 0) { \
				line_length = ncol - indent - length(words[i]) - 1; \
				printf "\n%*s ", -indent, " "; \
			} \
			printf "%s ", words[i]; \
		} \
		printf "\n"; \
	}' \
	| more $(shell test $(shell uname) = Darwin && echo '--no-init --raw-control-chars')
