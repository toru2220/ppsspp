# Pull base image.
FROM 	jlesage/baseimage-gui:ubuntu-18.04

# Install xterm.
RUN 	apt-get update && \
	apt-get install -y software-properties-common

RUN     add-apt-repository -y ppa:ppsspp/stable && \
	apt-get update && \
	apt-get install -y ppsspp-qt ppsspp-sdl

# Copy the start script.
COPY startapp.sh /startapp.sh

# Set the name of the application.
ENV APP_NAME="PPSSPP"
