.PHONY: reset

reset:
	rake db:purge db:create db:migrate RAILS_ENV=test
