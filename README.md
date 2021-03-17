# libasm

## Description
The aim of this project is to get familiar with assembly languagem by writing the following functions in x86 64-bit assembly (Intel syntax):
```c
int		ft_strlen(char const *str);
int		ft_strcmp(char const *s1, char const *s2);
char		*ft_strcpy(char *dst, char const *src);
ssize_t		ft_write(int fd, void const *buf, size_t nbyte);
ssize_t		ft_read(int fd, void *buf, size_t nbyte);
char		*ft_strdup(char const *s1);
```

## Usage
To create the `libasm.a` library, run:

`make`

To compile, use:

`gcc libasm.a <your_file>`
