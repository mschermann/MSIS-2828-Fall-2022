FROM python
COPY requirements.txt /tmp/
RUN pip3 install -r /tmp/requirements.txt
ENV API_PORT=${API_PORT}
VOLUME [ "/app" ]
WORKDIR /app
EXPOSE ${API_PORT}