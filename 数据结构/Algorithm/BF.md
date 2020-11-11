# BF算法

### **简介：**



​	时间复杂度

​	空间复杂度

### **优缺点**

​	

### **代码实现：**

```c
#include <stdio.h>
#include <string.h>
//串普通模式匹配算法的实现函数，其中 B是伪主串，A是伪子串
int BF(char * B,char *A){
    int i=0,j=0;
    while (i<strlen(B) && j<strlen(A)) {
        if (B[i]==A[j]) {
            i++;
            j++;
        }else{
            i=i-j+1;
            j=0;
        }
    }
    //跳出循环有两种可能，i=strlen(B)说明已经遍历完主串，匹配失败；j=strlen(A),说明子串遍历完成，在主串中成功匹配
    if (j==strlen(A)) {
        return i-strlen(A)+1;
    }
    //运行到此，为i==strlen(B)的情况
    return 0;
}
int main() {
    int i=BF("ababcabcacbab", "abcac");
		printf(" \"ababcabcacbab\" \"abcac\"\n");
    printf("第%d个元素开始对齐",i);
  
  	getchar();//让cmd窗口等待
    return 0;
}
```

