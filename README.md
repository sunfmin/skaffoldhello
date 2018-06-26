# Download Docker for Desktop Edge

https://store.docker.com/editions/community/docker-ce-desktop-mac

https://download.docker.com/mac/edge/Docker.dmg

# Switch your kubectl to use docker-for-desktop context

```
kubectl config get-contexts
kubectl config use-context docker-for-desktop
```

# Private registry setup

https://kubernetes.io/docs/tasks/configure-pod-container/pull-image-private-registry/

```
kubectl create secret docker-registry dockerhub --docker-server=<your-registry-server> --docker-username=<your-name> --docker-password=<your-pword> --docker-email=<your-email>

```

your-registry-server could be `https://index.docker.io/v1/ `


# Build Go packages dependency image for compile Go program

```
docker build -t sunfmin/golangskaffoldhello -f Dockerfile.dep .
```

# Run skaffold

```
skaffold dev
```
