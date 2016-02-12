1. Copy RecordDeathRecap to the Addons directory
2. Edit eathskills2csv.lua to put in <accountName> and <characterName>
3. From terminal, create skills spreadsheet (need lua installed): lua deathskills2csv.lua > skills.csv
4. From terminal, create roll-up spreadhseet (need perl installed): ./classifyDamage.pl < skills.csv > rollup.csv
5. Open .csv in spreadsheet and format as desired

Notes: 

A. Made on a Mac - windows users will need to make the appropriate changes to #3 & #4
B. lua available here (for #3):  http://lua-users.org/wiki/LuaBinaries
C. Windows users will need to install perl (for #4): https://www.perl.org/get.html
