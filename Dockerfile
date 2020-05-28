FROM happylay/vue:alpine-v3.11
MAINTAINER Kevin Liu <kevin.liuzhong@gmail.com>

ENV APP_DIR /app
RUN mkdir -p $APP_DIR
WORKDIR $APP_DIR
COPY . $APP_DIR/

ENV HOST = 0.0.0.0
ENV PORT = 30000
ENV baseUrl="https://newing.org/tbk"

RUN npm install

EXPOSE 30000

CMD ["npm", "run", "dev"]