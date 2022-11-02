FROM ubuntu:latest

RUN apt-get update && apt-get install --yes curl lsb-release wget software-properties-common gnupg
RUN bash -c "$(curl -s https://apt.llvm.org/llvm.sh)"

RUN apt-get install --yes neovim

RUN mkdir /app
WORKDIR /app
