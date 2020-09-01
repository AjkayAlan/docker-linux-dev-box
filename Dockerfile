FROM debian:buster

ADD scripts /tmp/scripts
RUN ["chmod", "-R", "ugo+rwx", "/tmp/scripts"]

# Fix Locales
RUN /tmp/scripts/fix-locales.sh
ENV LANG en_US.UTF-8 

# Install dev tools
RUN /tmp/scripts/update-box.sh
RUN /tmp/scripts/install-basics.sh
RUN /tmp/scripts/install-git.sh
RUN /tmp/scripts/install-zsh.sh
RUN /tmp/scripts/install-nvm-node.sh
RUN /tmp/scripts/install-pyenv-python.sh
RUN /tmp/scripts/install-gvm-go.sh
# RUN /tmp/scripts/install-rvm-ruby.sh
RUN /tmp/scripts/install-sdkman.sh
RUN /tmp/scripts/install-jabba-java.sh
RUN /tmp/scripts/install-netcore.sh
RUN /tmp/scripts/install-powershell-core.sh
RUN /tmp/scripts/install-awscli.sh

CMD ["zsh"]
