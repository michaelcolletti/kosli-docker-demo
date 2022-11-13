FROM ubuntu:latest
RUN  apt get install git curl
RUN curl -fsSL https://get.docker.com -o get-docker.sh
RUN chmod 755 get-docker.sh &&  sh ./get-docker.sh
#RUN curl https://get.docker.com/ | bash
RUN git clone https://github.com/digitalstudium/grafana-docker-stack.git
RUN docker stack deploy -c grafana-docker-stack/docker-compose.yml monitoring
