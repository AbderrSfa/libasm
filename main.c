#include <stdio.h>
#include <string.h>

size_t	ft_strlen(const char *s);
char	*ft_strcpy(char * dst, const char * src);

int main(int argc, char const *argv[])
{
	char	a[10];
	
	//printf("|%d|\n", ft_strlen(NULL));
	//printf("|%s|\n", strcpy(a, "Yeeeeeeee"));
	printf("|%s|\n", ft_strcpy(a, "NULL"));

	return (0);
}