%option noyywrap
%{
 #include<stdio.h>
 int flag = 0;
%}
%%
[A|a|AN|An|THE|The][" "] {flag=1;}
\n {return 0;}
%%
int main()
{
 printf("Enter a string\n");
 flag = 0;
 yylex();
 if(flag == 0) printf("No\n");
 else printf("Yes\n");
 return 0;
}


