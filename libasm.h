/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: zqadiri <zqadiri@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/12/19 11:17:21 by zqadiri           #+#    #+#             */
/*   Updated: 2021/04/14 15:30:52 by zqadiri          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H
# define LIBASM_H

# include <stdio.h>
# include <string.h>
# include <unistd.h>
# include <fcntl.h>
# include <stdlib.h>
# include <errno.h>


# define RESET   "\033[0m"
# define RED     "\033[31m"
# define GREEN   "\033[32m"
# define BUFFER_SIZE 512

size_t		ft_strlen(const char *str);
char		*ft_strcpy(char *dst, const char *src);
int			ft_strcmp(const char *s1, const char *s2);
char		*ft_strdup(const char *s1);
ssize_t		ft_write(int fd, const void *buf, size_t nbyte);
ssize_t		ft_read(int fd, void *buf, size_t nbyte);

#endif
