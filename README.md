### How to build this image

```
CGO_ENABLED=0 godep go install \
   -v -a -tags netgo -installsuffix netgo \
   -ldflags "-extldflags -static -w -X github.com/docker/swarm/version.GITCOMMIT=`git rev-parse --short HEAD`"
```

