# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eparisot <eparisot@42.student.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/07 19:04:14 by eparisot          #+#    #+#              #
#    Updated: 2019/09/12 15:56:59 by eparisot         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= Sully

SRCS	= Sully.s

OBJS	= Sully.o

FLAGS	= macho64

LDFLAGS	= -macosx_version_min 10.8 -lSystem

RM		= rm -f

all		:	$(NAME)

$(NAME)	:	$(SRCS)
	nasm -f $(FLAGS) $(SRCS) -o $(OBJS)
	ld $(LDFLAGS) $(OBJS) -o $(NAME)
	$(RM) $(OBJS)

clean	:
	$(RM) $(NAME)_*

fclean	:	clean
	$(RM) $(NAME)

re		:	fclean all
