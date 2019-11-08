SRC=Grace.c

NAME=Grace

all:
	gcc $(SRC) -o $(NAME) -Wall -Wextra -Werror

clean:
	rm $(NAME)

fclean: clean

re: flcean all

diff: all
	./$(NAME)
	diff ./$(NAME)_kid.c ./$(NAME).c

exec: all
	./$(NAME)
