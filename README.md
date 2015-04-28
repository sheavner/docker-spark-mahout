
Rejoin mahout binary prior to building.  Too big for one commit.

```
cat mahout.tgz-aa  mahout.tgz-ab  mahout.tgz-ac > mahout.tgz 
```

Build docker:

```
docker build --force-rm -t spark-mahout:1.3.0 .
```

Run docker:

```
docker run -it --rm -p :8088:8088 -h HOSTNAME  -m=4g -c=6 -v /tmp:/host spark-mahout:1.3.0 /etc/bootstrap.sh -bash
```

http://HOSTNAME:8088/
