FROM debian:latest

ADD files/setup.sh /
RUN /setup.sh
RUN rm -f /setup.sh

ENV DISPLAY :0
USER kumir

CMD ["/bin/sh", "-c", "$0 \"$@\"", "/opt/kumir/bin/kumir2-ide"]
