#to set PS1 variable write the following command in shell
echo "PS1=[ `date +%R:%S` ] $PWD " > ~/.dotfile

#then we have to store the script in our bashrc file so execute the following command
 cat ~/.dotfile >> ~/.bashrc

 #and now press ctrl+alt+t new shell will open and will run the script included in it.