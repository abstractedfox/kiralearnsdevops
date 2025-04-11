podman build -t "persistantstorage" .

podman run --mount type=volume,src=volumeMount,dst=/persist  "persistantstorage"
