FROM happylay/vue:alpine-v3.11
MAINTAINER Kevin Liu <kevin.liuzhong@gmail.com>

ENV APP_DIR /app
RUN mkdir -p $APP_DIR
WORKDIR $APP_DIR
COPY . $APP_DIR/

RUN npm install

EXPOSE 3000

CMD ["npm", "run", "dev"]