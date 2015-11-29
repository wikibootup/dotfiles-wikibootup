# Stay the depth of directory structures as 1.
# Because, I don't manage these as a big program, 
# but just for executing as a independent source files

dotfiles=$(find $HOME/dotfiles/.bash-dot/bash-configs -name ".*")
for file in $dotfiles
do
  . $file
done
