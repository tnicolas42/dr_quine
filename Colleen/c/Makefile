SRC=Colleen.c

NAME=Colleen

all:
	gcc $(SRC) -o $(NAME) -Wall -Wextra -Werror

clean:
	rm $(NAME)

fclean: clean

re: flcean all

diff: all
	@./$(NAME) > /tmp/tmp0
	@cat $(SRC) > /tmp/tmp1
	@diff /tmp/tmp0 /tmp/tmp1

exec: all
	./$(NAME)
