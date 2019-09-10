# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eparisot <eparisot@42.student.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/07 19:04:14 by eparisot          #+#    #+#              #
#    Updated: 2019/09/10 14:58:59 by eparisot         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= Colleen

SRCS	= Colleen.go

RM		= rm -f

all		:	$(NAME)

$(NAME)	:	$(SRCS)
	go build -o $(NAME)

clean	:
	$(RM) $(NAME)

fclean	:	clean

re		:	fclean all
