FROM busybox:ubuntu-14.04
MAINTAINER fox

# Install ngrok
ADD https://api.equinox.io/1/Applications/ap_pJSFC5wQYkAyI0FIVwKYs9h1hW/Updates/Asset/ngrok.zip?os=linux&arch=amd64&channel=stable /
RUN unzip ngrok.zip -d /bin && \
 rm -f ngrok.zip && \
 touch /.ngrok

CMD /bin/ngrok -config /.ngrok -log stdout $HTTP_PORT
