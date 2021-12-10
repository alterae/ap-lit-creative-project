##
# AP Lit Creative Project
#
# @file
# @version 0.1

site.tar.gz: public
	tar -C public -cvz . > site.tar.gz

static/style.css: styles/style.css
	tailwindcss build ./styles/style.css -o ./static/style.css

public: clean
	zola build

clean:
	rm -rf public site.tar.gz

serve: clean static/style.css
	zola serve --interface 0.0.0.0 --base-url $$(hostname -f)

# end
