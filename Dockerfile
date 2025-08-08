FROM kubeflownotebookswg/jupyter-scipy:v1.9.2

# Switch to user
USER root

RUN apt-get -yq update \
 && apt-get -yq install --no-install-recommends \
    make \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

USER 1000
