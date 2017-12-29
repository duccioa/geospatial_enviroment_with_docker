#! /bin/bash
# Create the file docker.list
touch /etc/apt/sources.list.d/docker.list

# Populate the file with the to links to the graph-tool server
echo "deb http://downloads.skewed.de/apt/artful artful universe" >> /etc/apt/sources.list.d/docker.list
echo "deb-src http://downloads.skewed.de/apt/artful artful universe" >> /etc/apt/sources.list.d/docker.list

# Verify the package and update
apt-key adv --keyserver pgp.skewed.de --recv-key 612DEFB798507F25
apt-key list
apt-get update

# Install the package
apt-get install -y python3-graph-tool

# Exit the Docker image
exit