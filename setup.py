from setuptools import setup

def readme():
    with open('README.md') as f:
        return f.read()

setup(
    name='FIDDLE',
    version='0.0.1',

    author='Adam A. Butchy',
    #author_email='',
    description='Finding Interactions using Diagram Driven modeL Extension',
    long_description='A tool to automatically assemble or extend models with the knowledge extracted from published literature, built by the Mechanisms and Logic of Dynamics Lab at the University of Pittsburgh',
    #license='',
    keywords='graph-search interaction extension',

    packages=['src', 'dependencies'],
    include_package_data=True,

    install_requires=[
        'networkx',
        'matplotlib',
        'openpyxl'
    ],
    zip_safe=False # install as directory
    )
