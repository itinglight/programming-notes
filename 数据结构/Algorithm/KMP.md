# KMP算法

### **简介：**

KMP是三位大牛：D.E.Knuth、J.H.Morris和V.R.Pratt同时发现的。其中第一位就是《计算机程序设计艺术》的作者！！

### 原理：

利用已经部分匹配这个有效信息，保持i指针不回溯，通过修改j指针，让模式串尽量地移动到有效的位置。

### **算法复杂度**

​	时间复杂度

​	空间复杂度

### **优缺点**

​	

### **代码实现：**

```c
#include <stdio.h>
#include <string.h>
void getNext(char*T,int *next){
    int i=1;
    next[1]=0;
    int j=0;
    while (i<strlen(T)) {
        if (j==0||T[i-1]==T[j-1]) {
            i++;
            j++;
            next[i]=j;
        }else{
            j=next[j];
        }
    }
}
int KMP(char * S,char * T){
    int next[10];
    getNext(T,next);//根据模式串T,初始化next数组
    int i=1;
    int j=1;
    while (i<=strlen(S)&&j<=strlen(T)) {
        //j==0:代表模式串的第一个字符就和当前测试的字符不相等；S[i-1]==T[j-1],如果对应位置字符相等，两种情况下，指向当前测试的两个指针下标i和j都向后移
        if (j==0 || S[i-1]==T[j-1]) {
            i++;
            j++;
        }
        else{
            j=next[j];//如果测试的两个字符不相等，i不动，j变为当前测试字符串的next值
        }
    }
    if (j>strlen(T)) {//如果条件为真，说明匹配成功
        return i-(int)strlen(T);
    }
    return -1;
}
int main() {
    int i=KMP("ababcabcacbab","abcac");
 		printf(" \"ababcabcacbab\" \"abcac\"\n");
    printf("第%d个元素开始对齐",i);
  
  	getchar();//让cmd窗口等待
    return 0;
}
```

