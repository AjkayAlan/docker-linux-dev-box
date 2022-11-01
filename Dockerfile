FROM debian:bullseye

# Add scripts to image to provision and grant execute
ADD scripts /tmp/scripts
RUN chmod -R ugo+rwx /tmp/scripts

# Fix locales
RUN /tmp/scripts/fix-locales.sh
ENV LANG en_US.UTF-8

# Install everything
RUN /tmp/scripts/fix-locales.sh
RUN /tmp/scripts/update-box.sh
RUN /tmp/scripts/install-basics.sh
RUN /tmp/scripts/install-git.sh
RUN /tmp/scripts/install-zsh.sh
RUN /tmp/scripts/install-asdf.sh
RUN /tmp/scripts/install-asdf-python.sh
RUN /tmp/scripts/install-asdf-node.sh
RUN /tmp/scripts/install-asdf-ruby.sh
RUN /tmp/scripts/install-asdf-go.sh
RUN /tmp/scripts/install-asdf-java.sh
RUN /tmp/scripts/install-asdf-dotnet.sh
RUN /tmp/scripts/install-asdf-powershell-core.sh
RUN /tmp/scripts/install-asdf-awscli.sh
RUN /tmp/scripts/install-asdf-github-cli.sh
RUN /tmp/scripts/install-asdf-terraform.sh
RUN rm -rf /var/lib/apt/lists/*

CMD ["zsh"]
