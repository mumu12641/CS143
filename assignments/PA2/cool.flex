/*
 *  The scanner definition for COOL.
 */
%option noyywrap
/*
 *  Stuff enclosed in %{ %} in the first section is copied verbatim to the
 *  output, so headers and global definitions are placed here to be visible
 * to the code in the file.  Don't remove anything that was here initially
 */
%{
#include <cool-parse.h>
#include <stringtab.h>
#include <utilities.h>

/* The compiler assumes these identifiers. */
#define yylval cool_yylval
#define yylex  cool_yylex

/* Max size of string constants */
#define MAX_STR_CONST 1025
#define YY_NO_UNPUT   /* keep g++ happy */

extern FILE *fin; /* we read from this file */

/* define YY_INPUT so we read from the FILE fin:
 * This change makes it possible to use this scanner in
 * the Cool compiler.
 */
#undef YY_INPUT
#define YY_INPUT(buf,result,max_size) \
	if ( (result = fread( (char*)buf, sizeof(char), max_size, fin)) < 0) \
		YY_FATAL_ERROR( "read() in flex scanner failed");

char string_buf[MAX_STR_CONST]; /* to assemble string constants */
char *string_buf_ptr;

extern int curr_lineno;
extern int verbose_flag;

extern YYSTYPE cool_yylval;

/*
 *  Add Your own definitions here
 */
static int comment_flag;
static int string_length;



%}

/*
 * Define names for regular expressions here.
 */
%x COMMENT
%x STRING

DARROW          =>
digit           [0-9]
digits          {digit}+
letter          [A-Za-z]      
identifiers     {letter}({letter}|{digit})*

number          {digit}+(\.{digit}+)?(E[+-]?{digit}+)?


%%

 /*
  *  Nested comments
  */


 /*
  *  The multiple-character operators.
  */

--.*$ {}
"(*"        {
            comment_flag = INITIAL;
            BEGIN(COMMENT);
}
<COMMENT>"\n"    {
            curr_lineno++;
}
<COMMENT>"*)"    {
        BEGIN(INITIAL);
}
<COMMENT>[^(\*\)] {

}

<COMMENT>\* {
        
}

<COMMENT><<EOF>> {
      BEGIN(INITIAL);
      cool_yylval.error_msg = "EOF in comment";
      return (ERROR);
}

"*)" {
      cool_yylval.error_msg = "Unterminated string constant";
      return (ERROR);
}
[ \t\f\r\v]  {}     
[\n]        {curr_lineno++;}  
{DARROW}		{ return (DARROW); }
"<-"        { return (ASSIGN); }
"<="        { return (LE); }

 /*
  * Keywords are case-insensitive except for the values true and false,
  * which must begin with a lower-case letter.
  * CLASS = 258,
  *  ELSE = 259,
  *   FI = 260,
  *   IF = 261,
  *   IN = 262,
  *   INHERITS = 263,
  *   LET = 264,
  *   LOOP = 265,
  *   POOL = 266,
  *   THEN = 267,
  *   WHILE = 268,
  *   CASE = 269,
  *   ESAC = 270,
  *   OF = 271,
  *   DARROW = 272,
  *   NEW = 273,
  *   ISVOID = 274,
  *   STR_CONST = 275,
  *   INT_CONST = 276,
  *   BOOL_CONST = 277,
  *   TYPEID = 278,
  *   OBJECTID = 279,
  *   ASSIGN = 280,
  *   NOT = 281,
  *   LE = 282,
  *   ERROR = 283,
  *   LET_STMT = 285
  */

class       { return (CLASS); }
Class       { return (CLASS); }
else        { return (ELSE); }
if          { return (IF); }
fi          { return (FI); }
in          { return (IN);}
inherits    { return (INHERITS);}
let         { return (LET); }
loop        { return (LOOP); }
pool        { return (POOL);}
then        { return (THEN); }
while       { return (WHILE);}
case        { return (CASE);}
esac        { return (ESAC); }
of          { return (OF); }
new         { return (NEW);}
isvoid      { return (ISVOID);}
not         { return (NOT); }

{digits}    {
              cool_yylval.symbol = inttable.add_string(yytext, yyleng);
              return (INT_CONST);
}

true        {  
              cool_yylval.boolean = true;
              return (BOOL_CONST); 
}
false       {
              cool_yylval.boolean = false;
              return (BOOL_CONST);
}
String      {
            cool_yylval.symbol = idtable.add_string(yytext, yyleng);
            return (TYPEID);
}
Int         {
            cool_yylval.symbol = idtable.add_string(yytext, yyleng);
            return (TYPEID);
}
SELF_TYPE   {
            cool_yylval.symbol = idtable.add_string(yytext, yyleng);
            return (TYPEID);
}
[A-Z][A-Za-z0-9_]* {
            cool_yylval.symbol = idtable.add_string(yytext, yyleng);
            return (TYPEID);
}
self        {
            cool_yylval.symbol = idtable.add_string(yytext, yyleng);
            return (OBJECTID);
}

[a-z][A-Za-z0-9_]* {
            cool_yylval.symbol = idtable.add_string(yytext, yyleng);
            return (OBJECTID);
}


 /*
  *  String constants (C syntax)
  *  Escape sequence \c is accepted for all characters c. Except for 
  *  \n \t \b \f, the result is c.
  */

\" {
        string_buf[0] = '\0';
        string_buf_ptr = &string_buf[0];
        string_length = 0;
        BEGIN(STRING);
}

<STRING>\" {
        cool_yylval.symbol = stringtable.add_string(string_buf);
        BEGIN(INITIAL);
        return (STR_CONST);
}

<STRING>\\n {
        strcat(string_buf, "\n");
}

<STRING>\\t {
        strcat(string_buf, "\t");
}

<STRING>\\b {
        strcat(string_buf, "\b");
}

<STRING>\\f {
        strcat(string_buf, "\f");
}

<STRING>\\. {
        strcat(string_buf, &yytext[1]);
          
}

<STRING>. {
        strcat(string_buf, &yytext[0]);
}


['\[\]\>] {
        cool_yylval.error_msg = yytext;
      return (ERROR);
}
. {
    return yytext[0];
}

%%