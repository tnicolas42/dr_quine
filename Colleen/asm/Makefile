SRC=Colleen.s

NAME=Colleen

all:
	nasm -f macho64 $(SRC)
	gcc $(SRC:.s=.o) -o $(NAME)

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
