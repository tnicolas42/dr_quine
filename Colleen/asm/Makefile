SRC=Colleen.s

NAME=Colleen

all:
	nasm -f macho64 $(SRC)
	ld -macosx_version_min 10.7.0 -lSystem -o $(NAME) $(SRC:.s=.o)

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
