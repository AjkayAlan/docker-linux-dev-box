FROM debian:buster

# Add scripts to image to provision and grant execute
ADD scripts /tmp/scripts
RUN chmod -R ugo+rwx /tmp/scripts

# Fix locales
RUN /tmp/scripts/fix-locales.sh
ENV LANG en_US.UTF-8 

# Install everything
RUN /tmp/scripts/fix-locales.sh && \
    /tmp/scripts/update-box.sh && \
    /tmp/scripts/install-basics.sh && \
    /tmp/scripts/install-git.sh && \
    /tmp/scripts/install-zsh.sh && \
    /tmp/scripts/install-nvm-node.sh && \
    /tmp/scripts/install-pyenv-python.sh && \
    /tmp/scripts/install-gvm-go.sh && \
    /tmp/scripts/install-sdkman.sh && \
    /tmp/scripts/install-jabba-java.sh && \
    /tmp/scripts/install-netcore.sh && \
    /tmp/scripts/install-powershell-core.sh && \
    /tmp/scripts/install-awscli.sh && \
    rm -rf /var/lib/apt/lists/*

# TODO
# RUN /tmp/scripts/install-rvm-ruby.sh

CMD ["zsh"]
