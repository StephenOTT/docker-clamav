FROM tiredofit/alpine:3.6
LABEL maintainer="Dave Conroy (dave at tiredofit dot ca)"

### Disable Features From Base Image
   ENV ENABLE_SMTP=FALSE
### Install Dependencies
   RUN apk update && \
       apk add --no-cache \
               clamav \
               clamav-libunrar \
               && \

### Cleanup
       rm -rf /var/cache/apk/* /usr/src/*


### Add Files
   ADD install /

### Networking Configuration
   EXPOSE 3310
