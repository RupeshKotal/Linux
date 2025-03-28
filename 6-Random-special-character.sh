# Take Random special char
Char="!@#$%^&*()_+"

echo "${Char}"| fold -w1| shuf | head -c1