FROM python:3.11-alpine

WORKDIR /app

RUN apk add --no-cache chromium ffmpeg bash font-liberation ttf-dejavu
RUN apk add --no-cache --virtual .build-deps musl-dev libffi-dev gcc git
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN apk del .build-deps

COPY . .

ENV PYTHONUNBUFFERED=1 \
    JISHAKU_HIDE=1 \
    JISHAKU_RETAIN=1 \
    JISHAKU_NO_UNDERSCORE=true \
    JISHAKU_NO_DM_TRACEBACK=true \
    JISHAKU_NO_UNDERSCORE=true

CMD ["python", "-O", "main.py"]
