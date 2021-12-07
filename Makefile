##
# AP Lit Creative Project
#
# @file
# @version 0.1

site.tar.gz: public
	tar -C public -cvz . > site.tar.gz

public: clean
	zola build

clean:
	rm -rf public site.tar.gz

serve: clean
	./serve

# end
