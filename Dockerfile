FROM dart:stable

RUN git clone https://github.com/flutter/flutter.git /root/flutter
ENV PATH="${PATH}:/root/flutter/bin"

RUN flutter channel stable
RUN flutter upgrade
RUN flutter config --enable-web
RUN flutter doctor -v

CMD ["flutter", "run", "-d", "web-server", "--web-port=8888", "--web-hostname", "0.0.0.0"]
