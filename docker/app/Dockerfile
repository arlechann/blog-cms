FROM arlechann/roswell:v20.06.14.107

RUN apt-get update \
	&& apt-get install -y libev-dev \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/*

RUN ros install clack qlot

WORKDIR /var/www/auth-base
RUN git clone -b master https://github.com/arlechann/blog-cms.git .
RUN qlot install

CMD ["qlot", "exec", "clackup", "--server", ":woo", "--address", "app", "--port", "5000", "app.lisp"]
