%option noyywrap
%{
 #include<stdio.h>
 int flag;
%}
%%
[and|or|but|because|if|then|nevertheless][" "] {flag = 1;}
.;
\n  {if(flag==0) printf("You have entered a Simple string\n");
     else printf("You have entered a Compound string\n");}
%%
void main()
{
 printf("Enter a string\n");
 flag = 0;
 yylex();
}
