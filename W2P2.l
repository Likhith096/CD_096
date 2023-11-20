%option noyywrap
%{
 #include<stdio.h>
%}
%%
[aeiouAEIOU] {printf("\n%s is a Vowel",yytext);}
[a-zA-Z] {printf("\n%s is a consonent",yytext);}
%%
int main()
{
 printf("Enter\n");
 yylex();
 return 0;
}


