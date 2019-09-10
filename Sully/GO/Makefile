# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eparisot <eparisot@42.student.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/07 19:04:14 by eparisot          #+#    #+#              #
#    Updated: 2019/09/10 22:43:29 by eparisot         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= Sully

SRCS	= Sully.go

OBJ		= Sully.o

RM		= rm -f

all		:	$(NAME)

$(NAME)	:	$(SRCS)
	go build $(SRCS)
	go tool compile $(SRCS)

clean	:
	$(RM) $(NAME) $(OBJ)

fclean	:	clean

re		:	fclean all
