Submitted by: Mark Holton, holtonma@gmail.com
Date submitted: 12/14/2009
FacebookID: holtonma

INSTRUCTIONS:
from the command line, within the directory where hoppity is located... (testfile.txt located in same directory)

yourmachine@Macintosh ~/meepmeep[master]$ ruby meepmeep.rb 
Enter file name: 
asdf
Meep meep!


UNIT TESTS:
- located in test/test_meepmeep.rb

BACKGROUND INFO
from: http://www.facebook.com/careers/puzzles.php?puzzle_id=3
Meep meep!

To help test whether your puzzle submissions fit the guidelines, try this simple test puzzle. Your solution must follow the guidelines like any other puzzle. Write a program that takes as input a single argument on the command line. This argument must be a file name, which contains text. The program should completely ignore this argument and instead print to standard out the string "Meep meep!" (without the double quotes) followed by a newline. 


Input specifications

The input file will contain ASCII text that is going to be completely ignored by your program. In fact, do not even bother opening up the file handle, it will just complicate things. The input file format is as follows:
<Lots of ASCII characters that do not matter>
Example input file:
Just ignore me, I am not important.

Output specifications

The output should be the string "Meep meep!" (without the double quotes) followed by a single newline (don't forget this part!). 

Example output (newline after string):
Meep meep!