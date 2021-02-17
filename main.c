#include "libasm.h"

void	ft_test_strlen(void)
{
	printf("LEN OF [HELLO WORLD] : %d \n", (int)ft_strlen("HELLO WORLD"));
}

void	ft_test_strcpy(void)
{
	char	dest[100];

	ft_strcpy(dest, "HELLO WORLD");
	printf("COPY OF [HELLO WORLD] : %s \n", dest);
}

void	ft_test_strcmp(void)
{
	printf("DIFFERENCE BETWEEN [HELLO WORLD] and [HELLO WORLDS]: %d \n", ft_strcmp("HELLO WORLD", "HELLO WORLDS"));
}

void	ft_test_write(void)
{
	write(1, "WRITE [HELLO WORLD]: ", 21);
	ft_write(1, "HELLO WORLD\n", 12);
}

void	ft_test_read(void)
{
	char	dest[36];
	int		fd;

	fd = open("testread.txt", O_RDONLY);
	ft_read(fd, dest, 35);
	printf("contenu de [testread.txt] : %s", dest);
	close (fd);
}

void	ft_test_strdup(void)
{
	char *dest;

	dest = ft_strdup("HELLO WORLD");
	printf("DUP OF [HELLO WORLD] : %s \n", dest);
}

int		main(void)
{
	ft_test_strlen();
	ft_test_strcpy();
	ft_test_strcmp();
	ft_test_write();
	ft_test_read();
	ft_test_strdup();
}
