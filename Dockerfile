FROM debian:sid-slim

RUN apt -y update && apt -y install btop curl git locales neovim stow sudo tmux wget zsh 

ENV LC_ALL=en_US.UTF-8
ENV LANG=en_US

RUN printf '%s\n' LANG=en_US LC_ALL=en_US.UTF-8 >/etc/default/locale
RUN echo en_US.UTF-8 UTF-8 >>/etc/locale.gen
RUN locale-gen

WORKDIR /root

ENTRYPOINT ["zsh"]
