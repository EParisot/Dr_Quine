# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eparisot <eparisot@42.student.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/07 19:04:14 by eparisot          #+#    #+#              #
#    Updated: 2019/09/08 10:11:31 by eparisot         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= Grace

SRCS	= Grace.c

OBJS	= $(SRCS:.c=.o)

CFLAGS	= -Wall -Wextra -Werror

RM		= rm -f

all		:	$(NAME)

$(NAME)	:	$(OBJS)
	gcc $(CFLAGS) $(OBJS) -o $(NAME)

clean	:
	$(RM) $(OBJS)

fclean	:	clean
	$(RM) $(NAME)

re		:	fclean all
