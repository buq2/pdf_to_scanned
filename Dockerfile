FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends \
    imagemagick ghostscript

RUN sed -i '/policy domain="coder" rights="none" pattern="PDF"/d' /etc/ImageMagick-6/policy.xml

COPY . .

ENTRYPOINT [ "/pdf_to_scanned.sh" ]
