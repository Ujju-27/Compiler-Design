%{
	int count = 0;
%}

%%
[a-zA-Z_][a-zA-Z0-9_]* {count++;printf("\n%s is Valid Identifier\n", yytext);}
[a-zA-z_] {printf("\nInValid Identifier");}
%%

int yywrap(){}

int main(){
	printf("Enter the Sentence: ");
	yylex();
	printf("Total number of valid Identifier = %d\n", count);
	return 0;
}
