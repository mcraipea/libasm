SRC = ft_strlen.s \
	  ft_memcpy.s \
	  ft_strcmp.s \
	  ft_strcpy.s \

OBJ = $(SRC:%.s=%.o)

NAME = libasm.a

all: $(NAME)

$(NAME):	$(OBJ)
			@ar -sucr $(NAME) $(OBJ)
			@ranlib $(NAME)

%.o: %.s libasm.h
	@nasm -f macho64 $<

clean:
		@rm -f $(OBJ)

fclean: clean
		@rm -f $(NAME)

re: fclean all
