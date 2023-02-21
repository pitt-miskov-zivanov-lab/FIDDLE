Installation
============

To install this package via Github
----------------------------------

Download the package
::
   git clone https://github.com/pitt-miskov-zivanov-lab/FIDDLE.git

Navigate into the repo, create a microenvironment and install the requirements
::
   cd FIDDLE
   python -m venv env
   pip install -r requirements.txt

Activate the microenvironment
::
   source env/bin/activate

You're good to go!

To install this package via DockerHub
-------------------------------------

Download the container
::
   docker pull aabutchy/fiddle

Run the container
::
   docker run -p 8888:8888 -v $(pwd):/home/jovyan aabutchy/fiddle:latest

You're good to go!
