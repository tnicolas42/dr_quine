all:
	gcc Colleen.c -o Colleen -Wall -Wextra

clean:
	rm Colleen

fclean: clean

re: flcean all

diff: all
	@./Colleen > /tmp/tmp0
	@cat Colleen.c > /tmp/tmp1
	@diff /tmp/tmp0 /tmp/tmp1

exec: all
	./Colleen
