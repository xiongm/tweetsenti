PREREQUISITE
====================================
sudo apt-get install -y python3-tk, rabbitmq-server
pip3 install tweepy
pip3 install textblob



RUN
====================================
1. update config.py file with appropriate info

2. run sub from one window

export PYTHONPATH=.
python3 ./sub.py


3. run pub from another

export PYTHONPATH=.
python3 ./pub.py


NOTES
====================================
a pub/sub model

pub.py is the scraping script collecting the stats and publishing to rabbit mq

sub.py is the the subscribing script consuming the stats and output to graph








