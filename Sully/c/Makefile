SRC=Sully.c

NAME=Sully

all:
	gcc $(SRC) -o $(NAME) -Wall -Wextra -Werror

clean:
	rm $(NAME)

fclean: clean

re: flcean all

diff: all
	./$(NAME)
	for i in 5 4 3 2 1 0; do diff ./$(NAME)_${i}.c ./$(NAME).c; done;

exec: all
	./$(NAME)
