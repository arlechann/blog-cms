.PHONY: run, test

run:
	qlot exec clackup app.lisp

test:
	qlot exec ros run -e '(asdf:test-system :blog-cms :verbose t)' -q
