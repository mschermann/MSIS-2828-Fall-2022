FROM python
RUN pip install flask
ENV API_PORT=${API_PORT}
VOLUME [ "/app" ]
WORKDIR /app
EXPOSE ${API_PORT}