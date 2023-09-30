FROM python:3

LABEL org.opencontainers.image.source=https://github.com/ezzatron/nvector-test-api
LABEL org.opencontainers.image.description="A simple WebSocket-based API for calling functions from the Python nvector package."
LABEL org.opencontainers.image.licenses=MIT

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "./api" ]
