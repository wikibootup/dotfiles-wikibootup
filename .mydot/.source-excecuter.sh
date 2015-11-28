sh_extension_files=$(find $HOME/.mydot/shell-files -name "*.sh")
for file in $sh_extension_files
do
  . $file
done
