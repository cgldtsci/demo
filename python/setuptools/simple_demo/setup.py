from setuptools import setup, find_packages

setup(
    name='demo',
    version='1.0',
    author='cgl',
    author_email='null',
    packages=find_packages(exclude=['*.test', '*.tests.*', 'tests'])
)
