# Binary tree

create binary tree

```c
#include<stdio.h>
typedef struct binarytree{
  char data;
  struct binarytree *lchild,*rchild;
  
}BinNode;
//给定一棵括号法表示的二叉树，建立一棵以二叉链存储的二叉树
void creat_binary_Tree(BinNode *&b,char str[]){
  char ch;
  int i=0;
  while((ch=str[i++])!='/0'){
    switch(ch){
      case '(':;
    }
    
  }
}
//输出二叉树中的中序遍历结果
//输出二叉树中的前序遍历结果
//输出二叉树中的后序遍历结果

//统计二叉树的叶结点个数
int main(){
  return 0;
}

```

