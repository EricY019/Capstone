int main(void)
{
	int i=0;
	int count = 1000000000;
	int a[1000] = {0};
	for(i=0;i<count;i++)
	{
		a[i%1000] = i;
	}
	return 0;
}
