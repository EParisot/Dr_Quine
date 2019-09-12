# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eparisot <eparisot@42.student.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/07 19:04:14 by eparisot          #+#    #+#              #
#    Updated: 2019/09/12 15:40:56 by eparisot         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= Sully

SRCS	= Sully.c

CFLAGS	= -Wall -Wextra -Werror

RM		= rm -f

all		:	$(NAME)

$(NAME)	:	$(SRCS)
	gcc $(SRCS) -o $(NAME)

clean	:
	$(RM) $(NAME)_*

fclean	:	clean
	$(RM) $(NAME)

re		:	fclean all
