# KMP算法

### **简介：**

**Knuth-Morris-Pratt[字符串查找算法](https://zh.wikipedia.org/wiki/字符串查找算法)**（简称为**KMP算法**）这个算法是由[高德纳](https://zh.wikipedia.org/wiki/高德纳)和[沃恩·普拉特](https://zh.wikipedia.org/w/index.php?title=沃恩·普拉特&action=edit&redlink=1)在1974年构思，同年[詹姆斯·H·莫里斯](https://zh.wikipedia.org/w/index.php?title=詹姆斯·H·莫里斯&action=edit&redlink=1)也独立地设计出该算法，最终由三人于1977年联合发表。

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

