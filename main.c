#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>

size_t	ft_strlen(const char *s);
char	*ft_strcpy(char * dst, const char * src);
int		ft_strcmp(const char *s1, const char *s2);
ssize_t	ft_write(int fildes, const void *buf, size_t nbyte);
ssize_t	ft_read(int fildes, void *buf, size_t nbyte);

char *	ft_strdup(const char *s1);

// error when file doesn't exist

int main(int argc, char const *argv[])
{
	char	a[10];
	char	b[10];
	int		fd;
	int		fd2;

	fd = open("trry.txt", O_RDWR);
	fd2 = open("trry.txt", O_RDWR);

	//printf("MINE:\t|%d|\n", ft_strlen(NULL));
	//printf("ORIGINAL:\t|%d|\n", strlen(NULL));

	//printf("MINE:\t\t|%s|\n", ft_strcpy(a, "Yeeeeeeee"));
	//printf("ORIGINAL:\t|%s|\n", strcpy(a, "Yeeeeeeee"));

	//printf("MINE:\t\t|%d|\n", ft_strcmp("Yeet", "woah"));
	//printf("ORIGINAL:\t|%d|\n", strcmp("Yeet", "woah"));

	//printf("\t|%ld|\n", ft_write(0, "Yeeeeeee", 5));
	//printf("\t|%ld|\n", write(0, "Yeeeeeee", 5));

	printf("MINE:\t\t|%ld|\n", ft_read(fd, a, 5));
	printf("ORIGINAL:\t|%ld|\n", read(fd2, a, 5));
	
	//printf("MINE:\t\t|%s|\n", ft_strdup("YEET"));
	//printf("ORIGINAL:\t|%s|\n", strdup("YEET"));
	return (0);
}