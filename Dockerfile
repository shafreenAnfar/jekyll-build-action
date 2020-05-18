# This image is cached on the Github Actions VM, so it drastically reduces build time
FROM jekyll/builder@sha256:a8345b1d5316347dccd73ed4e96cb08e29bd8b2634bb727fb4d9311fe1e
USER root

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
