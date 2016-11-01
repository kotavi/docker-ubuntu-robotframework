#!/bin/bash
apt-get -y install build-essential libssl-dev libffi-dev python-dev libcurl4-openssl-dev
echo "------------------------------------------------"
pip install requests==2.3.0
echo "------------------------------------------------"
pip install -U setuptools
echo "------------------------------------------------"
cd /integration_test/src/dist/robotframework-2.8.5/
python setup.py install
echo "------------------------------------------------"
pip install PyMySQL
echo "------------------------------------------------"
pip install pycurl
echo "------------------------------------------------"
cd /integration_test/src/dist/elasticsearch-py/
python setup.py install
echo "------------------------------------------------"
cd /integration_test/src/dist/kafka-python/
python setup.py install
echo "------------------------------------------------"
cd /integration_test/src/dist/influxdb-2.4.0/
python setup.py install
echo "------------------------------------------------"
cd /integration_test/src/dist/PyYAML-3.11/
python setup.py install
echo "------------------------------------------------"
cd /integration_test/src/dist/webpy/
python setup.py install
echo "------------------------------------------------"
cd /integration_test/src/dist/Robotframework-Database-Library/
python setup.py install
echo "------------------------------------------------"
cd /integration_test/src/dist/
tar -xvf redis-2.10.3.tar.gz
cd redis-2.10.3/
python setup.py install
echo "------------------------------------------------"
cd /integration_test/src/dist/
tar -xvf robotframework-sshlibrary-2.1.1.tar.gz
cd robotframework-sshlibrary-2.1.1/
python setup.py install
echo "------------------------------------------------"
