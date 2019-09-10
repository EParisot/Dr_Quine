# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eparisot <eparisot@42.student.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/07 19:04:14 by eparisot          #+#    #+#              #
#    Updated: 2019/09/10 21:50:44 by eparisot         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= Grace

SRCS	= Grace.go

RM		= rm -f

all		:	$(NAME)

$(NAME)	:	$(SRCS)
	go build -o $(NAME)

clean	:
	$(RM) $(NAME)

fclean	:	clean
	$(RM) Grace_kid.go

re		:	fclean all
