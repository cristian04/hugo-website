FROM alpine/git
COPY . /data
WORKDIR /data
RUN rm -rf themes/
RUN git submodule init
RUN git submodule update
##

FROM klakegg/hugo:0.55.6
COPY --from=0 /data /data
WORKDIR /data
RUN hugo --minify

FROM nginx:alpine
COPY --from=1 /data/public /usr/share/nginx/html