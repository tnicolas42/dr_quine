SRC=Grace.c

NAME=Grace

all:
	gcc $(SRC) -o $(NAME) -Wall -Wextra -Werror

clean:
	rm $(NAME) || true
	rm $(NAME)_kid.c || true

fclean: clean

re: flcean all

diff: all
	./$(NAME)
	diff ./$(NAME)_kid.c ./$(NAME).c

exec: all
	./$(NAME)
