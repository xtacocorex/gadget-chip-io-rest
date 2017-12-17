# BASE OFF MY GADGET CHIP IO CHIPTAINER
FROM xtacocorex/gadget-chip-io

# INSTALL THE THINGS
RUN apk update && \
    apk add --no-cache python-dev && \
    apk add --no-cache py2-pip && \
    pip install --upgrade pip && \
    pip install CHIP-aREST && \
    apk del py2-pip && \
    apk del python-dev && \
    # REMOVE CACHE
    rm -rf /var/cache/apk/*

# WE'RE WORKING IN APP
WORKDIR /app

# PUT THE SCRIPT THERE
ADD . /app

