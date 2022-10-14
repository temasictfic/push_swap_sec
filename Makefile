# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sciftci <sciftci@student.42kocaeli.com.tr> +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/09 22:11:09 by sciftci           #+#    #+#              #
#    Updated: 2022/10/14 08:52:45 by sciftci          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = cc
CFLAGS = -Wall -Wextra -Werror
RM = rm -f

NAME = push_swap
NAME_CHECKER = checker

SRCS = 	push_swap.c input_check.c index.c sort.c stack.c fill_order.c cost_move.c instructions.c utils.c
BSRCS =  checker.c fill_order.c instructions.c stack.c utils.c input_check.c gnl/get_next_line.c gnl/get_next_line_utils.c

all: ${NAME}

bonus: ${NAME} ${NAME_CHECKER}

${NAME}:
	${CC} ${CFLAGS} ${SRCS} -o ${NAME}

${NAME_CHECKER}:
	${CC} ${CFLAGS} ${BSRCS} -o ${NAME_CHECKER} 

clean:

fclean: clean
	$(RM) ${NAME} ${NAME_CHECKER}

re: fclean all

reb: fclean bonus

.PHONY: all bonus clean fclean re reb