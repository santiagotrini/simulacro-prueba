app: app.c helpers.c
	@gcc -o app app.c helpers.c

test: app
	@bash tests.sh	
