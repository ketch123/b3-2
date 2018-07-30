FROM alpine

COPY ./b3-1/bin/b3-1 /bin
EXPOSE 8080
CMD /bin/b3-1
