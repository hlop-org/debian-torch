FROM debian:11

# Copy the current directory contents into the container at /app
COPY requirements.txt .

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    python3 \
    python3-dev \
    python3-websockets \
    python3-setuptools \
    python3-pip \
    python3-wheel \
    python3-cffi \
    ffmpeg

RUN pip install --no-cache-dir --upgrade -r requirements-torch.txt
