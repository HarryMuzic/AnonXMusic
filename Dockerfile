FROM python:3.10

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y git ffmpeg curl

# 🔥 NodeJS install
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs

WORKDIR /app

COPY . .

RUN pip3 install --no-cache-dir --upgrade -r requirements.txt

CMD ["python3", "-m", "AnonXMusic"]
