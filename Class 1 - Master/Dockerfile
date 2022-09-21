# Adapted from Cloud Native DevOps with Kubernetes: Building, Deploying, and Scaling Modern Applications in the Cloud 2nd Edition by Justin Domingus, John Arundel

FROM golang:1.17-alpine AS build

WORKDIR /src/
COPY main.go go.* /src/
RUN CGO_ENABLED=0 go build -o /bin/firstclass

FROM scratch
COPY --from=build /bin/firstclass /bin/firstclass

ENV USER=msis

ENTRYPOINT ["/bin/firstclass"]
EXPOSE 8888