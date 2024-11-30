#!/bin/bash

# Print the header
echo -e "CONTAINER ID\tNAME\t\tIP ADDRESS\tIMAGE"

# Loop through each running container
docker ps -q | while read container_id; do
    # Get the container name
    name=$(docker inspect --format '{{.Name}}' $container_id | sed 's/\///')
    # Get the container IP address
    ip=$(docker inspect --format '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $container_id)
    # Get the container image name
    image=$(docker inspect --format '{{.Config.Image}}' $container_id)
    # Print the container details
    echo -e "$container_id\t$name\t$ip\t$image"
done