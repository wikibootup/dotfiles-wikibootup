# It loads brew list table file
# and read line by line(package name)
# and brew install each packages
brew update
filename="brew-list-table.dat"
while read -r line
do
  brew install $line
done < "$filename"
