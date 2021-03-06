NPM=node_modules/.bin

site: clean assets
	./src/index.js

clean:
	rm -f index.html build/{css,js}/*

assets:
	mkdir -p build/css build/js
	$(NPM)/lessc --compress src/less/all.less > build/css/all.css
	uglifyjs src/js/font-samples.js > build/js/font-samples.js
