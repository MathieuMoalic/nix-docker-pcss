default:
    podman build . -t zfn-docker-pcss 
    podman run --rm -it \
        --device=nvidia.com/gpu=all \
        --name zfn-docker-pcss \
        --hostname zfn-docker-pcss \
        zfn-docker-pcss