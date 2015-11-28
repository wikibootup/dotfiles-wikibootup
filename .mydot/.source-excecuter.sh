# Stay the depth of directory structures as 1.
# Because, I don't manage these as a big program, 
# but just for executing as a independent source files
sh_extension_files=$(find $HOME/.mydot/shell-files -name "*.sh")
for file in $sh_extension_files
do
  . $file
done
