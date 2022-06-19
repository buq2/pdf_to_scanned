#!/bin/bash
docker run --rm -it -v `pwd -W`:/data pdf_to_scanned "//data/$1"
