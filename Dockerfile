FROM homebrew/brew:3.3.14
LABEL maintainer="anna.cruz@gmail.com"

RUN mkdir -p /home/linuxbrew/app
WORKDIR /home/linuxbrew/app
COPY . .
