# This image is cached on the Github Actions VM, so it drastically reduces build time
FROM jekyll/builder:3.8
USER root

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
