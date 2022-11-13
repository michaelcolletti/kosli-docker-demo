FROM alpine:latest
RUN  apk add --update git curl docker openrc git
#RUN curl -fsSL https://get.docker.com -o get-docker.sh
#RUN chmod 755 get-docker.sh 
#RUN sh ./get-docker.sh
#RUN curl https://get.docker.com/ | bash
RUN rc-update add docker default
#RUN rc-service docker start
#RUN run service docker start
RUN git clone https://github.com/digitalstudium/grafana-docker-stack.git
ENTRYPOINT ["docker stack deploy", "-c", "grafana-docker-stack/docker-compose.yml", "monitoring"]
