FROM cubuntu_inet

RUN apt-get update  \
    && apt-get -y install  \
        binutils \
        curl   \
        dnsutils  \
        tcpdump   \
        bind9  \
        bind9utils 



COPY named.conf  named.conf.options /etc/bind/
CMD named-checkconf
CMD service named start  && tail -f /dev/null

