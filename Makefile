.PHONY: reset, seed, init, fonts

reset:
	rake db:drop && rake db:create && rake db:migrate && rake db:schema:dump && rake db:test:prepare

fonts:
	mkdir app/assets/fonts
	wget -O ./zilla-slab.zip "https://google-webfonts-helper.herokuapp.com/api/fonts/zilla-slab?download=zip&subsets=latin&variants=500,700,regular"
	unzip ./zilla-slab.zip -d app/assets/fonts
	rm -rf ./zilla-slab.zip

seed:
	rake db:seed

init: fonts
	bundle install && make seed
	
clean-db:
	make reset && make seed

clean:
	rm -rf app/assets/fonts
