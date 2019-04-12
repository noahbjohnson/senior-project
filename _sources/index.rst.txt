.. Senior-Project documentation master file, created by
   sphinx-quickstart.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Senior-Project documentation!
==============================================

Contents:

Makefile
---------

The Makefile contains the central entry points for common tasks related to this project.

Creating a project environment
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* `make create_environment` will create a conda or venv virtual environemnt for project usage.
* `source activate senior-project` will activate a conda virtual environment after creation

Installing Project Requirements
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* `make requirements` will install the required packages for the project to run.

Syncing data to S3
^^^^^^^^^^^^^^^^^^

* `make sync_data_to_s3` will use `aws s3 sync` to recursively sync files in `data/` up to `s3://nbj-senior-project/data/`.
* `make sync_data_from_s3` will use `aws s3 sync` to recursively sync files from `s3://nbj-senior-project/data/` to `data/`.

Run the notebooks
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* `make notebooks` will run the notebooks and save rst output to docs/notebooks


Run the notebooks
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* `make docs` will generate html documentation using sphinx. Output is in docs/_build/html


.. toctree::
   :maxdepth: 2
   

Notebooks
----------

.. toctree::
   :numbered:
   :glob:
   
   notebooks/*

   


Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`
