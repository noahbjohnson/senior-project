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

Syncing data to S3
^^^^^^^^^^^^^^^^^^

* `make sync_data_to_s3` will use `aws s3 sync` to recursively sync files in `data/` up to `s3://nbj-senior-project/data/`.
* `make sync_data_from_s3` will use `aws s3 sync` to recursively sync files from `s3://nbj-senior-project/data/` to `data/`.


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
