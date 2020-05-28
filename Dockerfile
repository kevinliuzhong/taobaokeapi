FROM happylay/vue:alpine-v3.11
MAINTAINER Kevin Liu <kevin.liuzhong@gmail.com>

ENV APP_DIR /app
RUN mkdir -p $APP_DIR
WORKDIR $APP_DIR
COPY . $APP_DIR/

ENV HOST = 0.0.0.0
ENV BASE_URL = https://newing.org/tbk
ENV PORT = 30000

RUN npm install
RUN npm run build


EXPOSE 30000

CMD ["npm", "run", "start"]