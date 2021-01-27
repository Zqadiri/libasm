/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: zqadiri <zqadiri@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/12/20 17:13:33 by zqadiri           #+#    #+#             */
/*   Updated: 2021/01/27 14:44:52 by zqadiri          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "./libasm.h"

void	ft_bzero(void *s, size_t n)
{
	int		i;
	char	*str;

	i = 0;
	str = s;
	while (i < (int)n)
	{
		str[i] = 0;
		i++;
	}
}

void		check_strlen(void)
{
	char *empty;
	char *hello_world;
	char *alphabet;

	empty = "";
	hello_world = "Hello   world !";
	alphabet = "abcdefghijklgcmnopqrstuvwxyz";
	printf("\n================================\n");
	printf("========== FT_STRLEN ===========\n");
	printf("================================\n\n");
	printf("%-20s: \"%s\"\n", "char *", empty);
	printf("\n");
	printf("%-20s: %zu\n", "libc", strlen(empty));
	printf("%-20s: %zu\n", "libasm", ft_strlen(empty));
	printf("\n");
	printf("%-20s: \"%s\"\n", "char *", hello_world);
	printf("\n");
	printf("%-20s: %zu\n", "libc", strlen(hello_world));
	printf("%-20s: %zu\n", "libasm", ft_strlen(hello_world));
	printf("\n");
	printf("%-20s: \"%s\"\n", "char *", alphabet);
	printf("\n");
	printf("%-20s: %zu\n", "libc", strlen(alphabet));
	printf("%-20s: %zu\n", "libasm", ft_strlen(alphabet));
	printf("\n");
}

void		clear_buffer(char *buffer, int size)
{
	int i;

	i = 1;
	while (i < size)
		buffer[i++] = 0;
}

void		check_strcpy(void)
{
	char	buffer[50];
	char	*empty;
	char	*hello_world;
	char	*alphabet;
	
	empty = "";
	hello_world = "Hello world !";
	alphabet = "abcdefghijklm   stuvwxyz1233454";
	printf("\n================================\n");
	printf("========== FT_STRCPY ===========\n");
	printf("================================\n\n");
	printf("%-20s: \"%s\"\n", "char []", empty);
	printf("%-20s: \"%s\"\n", "libc", strcpy(buffer, empty));	
	clear_buffer(buffer, 30);
	printf("%-20s: \"%s\"\n", "libasm", ft_strcpy(buffer, empty));	
	clear_buffer(buffer, 30);
	printf("\n");
	printf("%-20s: \"%s\"\n", "char []", hello_world);
	printf("%-20s: \"%s\"\n", "libc", strcpy(buffer, hello_world));	
	clear_buffer(buffer, 30);
	printf("%-20s: \"%s\"\n", "libasm", ft_strcpy(buffer, hello_world));	
	clear_buffer(buffer, 30);
	printf("\n");
	printf("%-20s: \"%s\"\n", "char []", alphabet);
	printf("%-20s: \"%s\"\n", "libc", strcpy(buffer, alphabet));	
	clear_buffer(buffer, 30);
	printf("%-20s: \"%s\"\n", "libasm", ft_strcpy(buffer, alphabet));
	clear_buffer(buffer, 30);
	printf("\n");
}
void		check_strcmp(void)
{
	char 	*empty;
	char 	*hello_world;
	char 	*hello_human;
	char 	*hello_world2;
	
	empty = "";
	hello_world = "hello world !";
	hello_human = "Ello  !";
	hello_world2 = "Hello world !";
	printf("\n================================\n");
	printf("========== FT_STRCMP ===========\n");
	printf("================================\n\n");
	printf("%-20s: \"%s\"\n", "char *", hello_world);
	printf("%-20s: \"%s\"\n", "compared to", hello_human);
	printf("%-20s: \"%d\"\n", "libc", strcmp(hello_world, hello_human));
	printf("%-20s: \"%d\"\n", "libasm", ft_strcmp(hello_world, hello_human));
	printf("\n");
	printf("%-20s: \"%s\"\n", "char *", hello_world);
	printf("%-20s: \"%s\"\n", "compared to", hello_world2);
	printf("%-20s: \"%d\"\n", "libc", strcmp(hello_world, hello_world2));
	printf("%-20s: \"%d\"\n", "libasm", ft_strcmp(hello_world, hello_world2));
	printf("\n");
	printf("%-20s: \"%s\"\n", "char *", hello_world2);
	printf("%-20s: \"%s\"\n", "compared to", empty);
	printf("%-20s: \"%d\"\n", "libc", strcmp(hello_world2, empty));
	printf("%-20s: \"%d\"\n", "libasm", ft_strcmp(hello_world2, empty));
	printf("\n");
	printf("%-20s: \"%s\"\n", "char", "a");
	printf("%-20s: \"%s\"\n", "compared to", "c");
	printf("%-20s: \"%d\"\n", "libc",strcmp("a", "c"));
	printf("%-20s: \"%d\"\n", "libasm",ft_strcmp("a", "c"));
}

void		check_write(void)
{
	char 	*hello_world;
	char 	*empty;

	hello_world = "hello world";
	empty = "|  |";
	printf("\n================================\n");
	printf("========== FT_WRITE ============\n");
	printf("================================\n\n");
	printf("%-20s: \"%s\"\n", "char *", hello_world);
	printf("\tLibc:%zu\n", write(1, hello_world, 11));
	printf("\n");
	printf("\tLibasm:%zu\n", ft_write(1, hello_world, 11));
	printf("\n");
	printf("%-20s: \"%s\"\n", "char *", empty);
	printf("\n");
	printf("\tLibc:%zu\n", write(1, empty, 4));
	printf("\n");
	printf("\tLibasm:%zu\n", ft_write(1, empty, 4));
	printf("\n");
	printf("%-20s: \"%s\"\n", "char *", hello_world);
	printf("Libc:%zu\n", write(-7, NULL, 7));
	printf("\n");
	printf("Libasm:%zu\n", ft_write(-7, NULL, 7));
	printf("\n");
}

void		check_read(void)
{
	char	buff1[891];
	int		ret;
	int		fd;

	printf("\n================================\n");
	printf("========== FT_READ =============\n");
	printf("================================\n\n");

	printf("%-20s: \n", "wrong file descriptor \nlibc ");
	ret = read(-7, buff1, 890);
	printf("[return : %d]\n|%s|\n", ret, buff1);
	printf("\n");
	clear_buffer(buff1, 891);
	ft_bzero(buff1, 891);
	printf("%-20s: \n", "wrong file descriptor \nlibasm ");
	ret = ft_read(-7, buff1, 890);
	printf("[return : %d]\n|%s|\n", ret, buff1);
	printf("\n");
	clear_buffer(buff1, 891);
	
	
	fd = open("main.c", O_RDONLY);
	printf("%-20s: \n", "header main.c | libc ");
	ret = read(fd, buff1, 890);
	buff1[ret] = 0;
	printf("[return : %d]\n|%s|\n", ret, buff1);
	printf("\n");
	close(fd);
	clear_buffer(buff1, 891);
	fd = open("main.c", O_RDONLY);
	printf("%-20s: \n", "header main.c | libasm ");
	ret = ft_read(fd, buff1, 890);
	buff1[ret] = 0;
	printf("[return : %d]\n|%s|\n", ret, buff1);
	printf("\n");
	close(fd);
	clear_buffer(buff1, 891);
	fd = open("test", O_RDONLY);
	printf("%-20s: \n", "file test | libc ");
	ret = read(fd, buff1, 890);
	buff1[ret] = 0;
	printf("[return : %d]\n|%s|\n", ret, buff1);
	printf("\n");
	close(fd);
	clear_buffer(buff1, 891);
	fd = open("test", O_RDONLY);
	printf("%-20s: \n", "file test | libasm ");
	ret = ft_read(fd, buff1, 890);
	buff1[ret] = 0;
	printf("[return : %d]\n|%s|\n", ret, buff1);
	printf("\n");
	clear_buffer(buff1, 891);
	close(fd);
}

void		check_strdup(void)
{
	char	*hello_world = "Hello world !";
	char	*empty = "     ,      ";
	char	*save;
	char	*save2;

	hello_world = "Hello world !";
	empty = "     ,      ";
	printf("\n================================\n");
	printf("========== FT_STRDUP ===========\n");
	printf("================================\n\n");
	printf("%-20s: \"%s\"\n", "char *", hello_world);
	save = strdup(hello_world);
	printf("%-20s: \"%s\"\n", "libc", save);
	free(save);
	save = NULL;
	save2 = ft_strdup(hello_world);
	printf("%-20s: \"%s\"\n", "libasm", save2);
	free(save2);
	save2 = NULL;
	printf("\n");
	printf("%-20s: \"%s\"\n", "char *", empty);
	save = strdup(empty);
	printf("%-20s: \"%s\"\n", "libc", save);
	free(save);
	save = NULL;
	save2 = ft_strdup(empty);
	printf("%-20s: \"%s\"\n", "libasm", save2);
	free(save2);
	save2 = NULL;
	printf("\n");
}

int		main(void)
{
	// check_strcpy();
	// check_write();
	// check_read();
	check_strdup();
	// check_strcpy();
	// check_strcmp();
	// check_strlen();
}
