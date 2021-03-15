# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: asfaihi <asfaihi@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/11 18:53:30 by asfaihi           #+#    #+#              #
#    Updated: 2021/03/11 19:13:43 by asfaihi          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

SRC = ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s

FORMAT = -f macho64

OBJECT = $(SRC:.s=.o)

all: $(NAME)

$(NAME): $(OBJECT)
	ar rcs $(NAME) $(OBJECT)

%.o:%.s
	nasm $(FORMAT) $<

clean:
	/bin/rm -f $(OBJECT)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all