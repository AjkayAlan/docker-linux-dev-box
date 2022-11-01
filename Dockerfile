FROM debian:bullseye

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
    /tmp/scripts/install-asdf.sh && \
    /tmp/scripts/install-asdf-python.sh && \
    /tmp/scripts/install-asdf-node.sh && \
    /tmp/scripts/install-asdf-ruby.sh && \
    /tmp/scripts/install-asdf-go.sh && \
    /tmp/scripts/install-asdf-java.sh && \
    /tmp/scripts/install-asdf-dotnet.sh && \
    /tmp/scripts/install-asdf-powershell-core.sh && \
    /tmp/scripts/install-asdf-awscli.sh && \
    /tmp/scripts/install-asdf-github-cli.sh && \
    /tmp/scripts/install-asdf-terraform.sh && \
    rm -rf /var/lib/apt/lists/*

CMD ["zsh"]
