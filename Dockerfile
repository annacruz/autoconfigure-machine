FROM homebrew/brew:latest
LABEL maintainer="anna.cruz@gmail.com"

RUN brew update && \
  brew install ansible && \
  brew cleanup

WORKDIR /workspace

