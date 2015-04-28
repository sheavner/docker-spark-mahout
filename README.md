
Rejoin mahout binary pror to building.  Too big for one commit.

```
cat mahout.tgz-aa  mahout.tgz-ab  mahout.tgz-ac > mahout.tgz 
```

Build docker:

```
docker build --force-rm -t spark-mahout:1.2.1 .
```

