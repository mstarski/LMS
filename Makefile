.PHONY: reset, seed, init

reset:
	rake db:drop && rake db:create && rake db:migrate && rake db:schema:dump && rake db:test:prepare

seed:
	rake db:seed

init:
	make reset && make seed
