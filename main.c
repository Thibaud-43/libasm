#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

extern ft_strlen();
extern hello();
extern ft_strcpy();
extern _ft_strcmp();
extern	ft_write();
extern	ft_read();
extern ft_strdup();

int		main(int argc, char **argv)
{
	char dest[100];
	ft_read(0, dest, 32);
	printf(" dup : %d", ft_strdup(dest));
}
