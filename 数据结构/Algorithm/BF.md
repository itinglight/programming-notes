# BF算法(暴力破解法)

### **简介：**



​	时间复杂度

​	该算法最理想的时间复杂度 `O(n)`，n 表示串 A 的长度，即第一次匹配就成功。

​	BF 算法最坏情况的时间复杂度为 `O(n*m)`，n 为串 A 的长度，m 为串 B 的长度。例如，串 B 为 "0000000001"，而串 A 为 "01"，这种情况下，两个串每次匹配，都必须匹配至串 A 的最末尾才能判断匹配失败，因此运行了 n*m 次。

### **优缺点**

​	

### **代码实现：**

```c
/**
@软件本1903-姜斌
BF算法
*/
#pragma warning(disable:4996)//屏蔽4996错误

#include <stdio.h>
#include <string.h>
#define maxSize 20 //字符数字大小

int BF(char * B,char *A){
    int i=0,j=0;
    while (i<strlen(B) && j<strlen(A)) { //当i=strlen(B)说明已经遍历完主串，匹配失败；
        if (B[i]==A[j]) {
            i++;
            j++;
        }else{
            i=i-j+1;
            j=0;
        }
    }
   
    if (j==strlen(A)) {//当j=strlen(A),说明子串遍历完成，在主串中成功匹配
       printf("匹配成功\n");
        return i-strlen(A)+1;
     
    }
    //匹配失败
 	 printf("匹配失败\n");
    return 0;
}
int main() {
	int i;
  	char host[maxSize],son[maxSize];
  	printf("请输入主字符串：");
  	scanf("%s",host);
  	printf("请输入子字符串：");
  	scanf("%s",son);
	
	printf(" \"%s\" \"%s\"\n",host,son);
	i=BF(host,son);
	if(i) printf("从第%d个元素开始对齐",i);
  	getchar();getchar();//让cmd窗口等待
    return 0;
}
```

