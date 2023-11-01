Select * from contacts;

SELECT *
 FROM contacts
 WHERE last_name LIKE '%t'
 /*There are several wildcard expressions supported by Transact SQL:

The % wildcard matches zero or more characters of any type and can be used to define 
wildcards both before and after the pattern. If you're familiar with DOS pattern matching, 
it's the equivalent of the * wildcard in that syntax.
The _ wildcard matches exactly one character of any type. It's the equivalent of the ? 
wildcard in DOS pattern matching.
Specify a list of characters by enclosing them in square brackets. For example, 
the wildcard [aeiou] matches any vowel.
Specify a range of characters by enclosing the range in square brackets. For example, 
the wildcard [a-m] matches any letter in the first half of the alphabet.
Negate a range of characters by including the carat character immediately inside of the 
opening square bracket. For example, [^aeiou] matches any non-vowel character while [^a-m] 
matches any character not in the first half of the alphabet.*/
 SELECT *
 FROM contacts
 WHERE last_name LIKE '[a-m]%[^aeiou]' 