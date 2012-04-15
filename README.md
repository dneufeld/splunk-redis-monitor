# splunk-redis-monitor

This is the Splunk for Redis application developed by Dale Neufeld. This
app provides the ability to monitor Redis servers.

## Usage

###pre-requisites
splunk (http://www.splunk.com)
redis (http://www.redis.io)

````
cd $SPLUNK_HOME/etc/apps
git clone https://github.com/dneufeld/splunk-redis-monitor.git
$SPLUNK_HOME/bin/splunk restart
````

###The application consists of:

A Ruby script to gather data from Redis as scripted input
Dashboards and macros to enable monitoring and investigation of Redis
servers

###This applciation has been tested on:

-redis 2.4.1

###Data collection script

The data collection script can be found in

`$SPLUNK_HOME/etc/apps/redismonitor/bin/`

###Splunk configuration

To configure your Splunk server you should:

-Configure inputs.conf
