# Jenkins Exporter

Jenkins exporter for prometheus.io, written in python.

This exporter is based on Robust Perception's python exporter example:
For more information see (http://www.robustperception.io/writing-a-jenkins-exporter-in-python)

## Usage
```
jenkins_exporter.py [-h] [-j jenkins] [--user user] [-k]
                    [--password password] [-p port]

optional arguments:
    -h, --help            show this help message and exit
    -j jenkins, --jenkins jenkins
                    server url from the jenkins api
    --user user           jenkins api user
    --password password   jenkins api password
    -a address, --address address
                        Listen to this address or ip
    -p port, --port port  Listen to this port
    -k, --insecure        Allow connection to insecure Jenkins API
```

#### Example


```
python3 /path/to/jenkins_exporter.py -j https://jenkins/ -a 127.0.0.1 -p 9118
```


## Installation

    git clone git@github.com:RobinMarechal/jenkins_exporter.git
    cd jenkins_exporter
    pip install -r requirements.txt

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request
