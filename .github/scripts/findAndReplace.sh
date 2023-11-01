!/bin/bash
# **************** Change Variables Here ************
startdirectory="../../models/"
searchterm="test"
replaceterm="main"
# **********************************************************

echo "***************************************************"
echo "* Search and Replace in Files *"
echo "***************************************************"

i=0; 

  for file in $(grep -l -R $searchterm $startdirectory)
    do
      cp $file $file.bak
      sed -e "s/$searchterm/$replaceterm/ig" $file > tempfile.tmp
      mv tempfile.tmp $file

    let i++;

      echo "Modified: " $file
    done

echo " *** All Done! *** Modified files:" $i