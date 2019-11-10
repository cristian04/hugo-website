FROM alpine/git
COPY . /data
WORKDIR /data
RUN rm -rf themes/
RUN git submodule init
RUN git submodule update
##

FROM jojomi/hugo
COPY --from=0 /data /data
WORKDIR /data
RUN hugo --minify