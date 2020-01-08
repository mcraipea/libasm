# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mcraipea <mcraipea@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/08 12:37:28 by mcraipea          #+#    #+#              #
#    Updated: 2020/01/08 17:11:31 by mcraipea         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC = ft_strlen.s \
	  ft_strdup.s \
	  ft_strcmp.s \
	  ft_strcpy.s \
	  ft_read.s   \
	  ft_write.s  \

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
