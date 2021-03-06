|Join the chat at https://gitter.im/Axelrod-Python/Axelrod|

This repository hold results for tournaments made possible by the
`Axelrod-Project <https://github.com/Axelrod-Python/Axelrod>`_ python library.

Reproducing these results:
==========================

To reproduce these results you will need to install the :code:`axelrod`
library::

    $ pip install axelrod

To re run the full set of results and output them to the `assets` directory
simply run::

    $ ./update_results.sh 0 100  # Runs with all CPUS and 100 repetitions

**Note that this uses the installed version of the axelrod library.**
If you want to keep things tidy you can create a virtualenv and install the
latest version of the library like so::

    $ virtualenv env
    $ source env/bin/activate
    $ pip install git+https://github.com/Axelrod-Python/Axelrod@master

If you have the Axelrod repository locally you can also run::

    $ pip install path_to_axelrod

If you have already installed :code:`axelrod` you can add the `-U` tag to update
to the latest version of master::

    $ pip install git+https://github.com/Axelrod-Python/Axelrod@master -U

or::

    $ pip install path_to_axelrod  -U

.. |Join the chat at https://gitter.im/Axelrod-Python/Axelrod| image:: https://badges.gitter.im/Join%20Chat.svg
   :target: https://gitter.im/Axelrod-Python/Axelrod?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge
