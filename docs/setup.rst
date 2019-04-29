Project Setup
==========================

Quickstart
-------------------

This code will create a virtual environment, and use it to create the notebooks and docs.

Output will be at docs/_build/html/index.html

.. code-block:: bash

  make create_environment
  source activate senior-project

  make requirements
  make sync_data_from_s3

  make notebooks
  make docs

Makefile
---------

The Makefile contains the central entry points for common tasks related to this project.

Creating a project environment
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* `make create_environment` will create a conda or venv virtual environment for project usage.
* `source activate senior-project` will activate a conda virtual environment after creation

Installing Project Requirements
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* `make requirements` will install the required packages for the project to run.

Syncing data to S3
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* `make sync_data_to_s3` will use `aws s3 sync` to recursively sync files in `data/` up to `s3://nbj-senior-project/data/`.
* `make sync_data_from_s3` will use `aws s3 sync` to recursively sync files from `s3://nbj-senior-project/data/` to `data/`.

Run the notebooks
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* `make notebooks` will run the notebooks and save rst output to docs/notebooks

Run the notebooks
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* `make docs` will generate html documentation using sphinx. Output is in docs/_build/html

Clean Up
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
## Delete all compiled Python files, Virtual Environments, and downloaded data
clean:
