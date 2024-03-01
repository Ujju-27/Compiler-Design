%{
	#include<stdio.h>
	int lines = 0, spaces = 0, tabs = 0, chars = 0;
%}

%%
\n {lines++;}
[" "] {spaces++;}
\t {tabs++;}
. {chars++;}
%%

int yywrap(){}

int main(){
    printf("Enter the sentence = ");
    yylex();
    printf("\nNumber of Lines are -  %d\n", lines);
    printf("Number of character are -  %d\n" ,chars);
    printf("Number of spaces are -  %d\n", spaces);
    printf("Number of tabs are -  %d\n" , tabs);
}	
