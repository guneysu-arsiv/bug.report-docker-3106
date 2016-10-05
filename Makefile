IMAGE := sandbox/compose-stderr-test

default: tty

build:
	@docker build --tag $(IMAGE) .

clean: 
	@rm *.log || echo > /dev/null

notty:
	@docker-compose \
			-f docker-compose-notty.yaml \
			--verbose up --no-color 2> error.log 1>output.log

tty:
	@docker-compose \
			-f docker-compose-tty.yaml \
			up --no-color 1>output.log	2> error.log 1>output.log	

log: 
	@echo '---------- STDERR --------------'	
	@cat error.log
	@echo '-----------STDOUT----------------'
	@cat output.log

.PHONY: default build clean notty tty log