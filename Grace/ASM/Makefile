# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eparisot <eparisot@42.student.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/07 19:04:14 by eparisot          #+#    #+#              #
#    Updated: 2019/09/08 21:41:23 by eparisot         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= Grace

SRCS	= Grace.s

OBJS	= Grace.o

FLAGS	= macho64

LDFLAGS	= -macosx_version_min 10.8 -lSystem

RM		= rm -f

all		:	$(NAME)

$(NAME)	:	$(SRCS)
	nasm -f $(FLAGS) $(SRCS) -o $(OBJS)
	ld $(LDFLAGS) $(OBJS) -o $(NAME)

clean	:
	$(RM) $(OBJS)

fclean	:	clean
	$(RM) $(NAME)

re		:	fclean all
