int is_digit(char d) {
  if (d >= '0' && d <= '9')
    return 1;
  return -1;
}

int as_int(char *str)
{
  int acc;

  for (acc = 0; is_digit(*str); str++) {
    acc = acc * 10 + (*str - '0');
  }

  return acc;
}

int main(void)
{

  char *str = "123";
  printf("%s\n", "Test");
  printf("%d\n", as_int("123"));

  
  return 0;
}
