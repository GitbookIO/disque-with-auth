# VERSION 0.1.1
FROM richnorth/disque:1.0-rc1

# Create conf directory
RUN mkdir /usr/local/etc/disque

# Copy template file
COPY disque-template.conf /usr/local/etc/disque/disque-template.conf

# Copy and run script
COPY env.sh /env.sh

ENTRYPOINT [ "/env.sh" ]

CMD [ "disque-server", "/usr/local/etc/disque/disque.conf" ]
