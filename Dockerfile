FROM nginx:alpine
WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY ./* ./
ENTRYPOINT ["nginx", "-g", "daemon off;"]

EXPOSE 80
HEALTHCHECK --interval=2s --retries=5 --timeout=5s CMD curl --fail http://localhost:80/ || exit 1


