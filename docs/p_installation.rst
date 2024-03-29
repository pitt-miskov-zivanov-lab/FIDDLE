Installation
============

To install this package via Github
----------------------------------

Download the package

.. code-block:: bash

 git clone https://github.com/pitt-miskov-zivanov-lab/FIDDLE.git

Navigate into the repo, create a microenvironment and install the requirements

.. code-block:: bash

 cd FIDDLE
 python -m venv env
 pip install -e .

Activate the microenvironment

.. code-block:: bash

 source env/bin/activate

You're good to go!

To install this package via DockerHub
-------------------------------------

Download the container

.. code-block:: bash

 docker pull aabutchy/fiddle

Run the container

.. code-block:: bash

 docker run -p 8888:8888 -v $(pwd):/home/jovyan aabutchy/fiddle:latest

You're good to go!
