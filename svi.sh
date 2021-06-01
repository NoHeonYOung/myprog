  1 #!/bin/bash
  2 inputs() {
  3     read -p " Enter two integers : " int1 int2
  4 }
  5 exitPrompt(){
  6      read -p "Do you wish to continue? [y]es or [n]o: " ans
  7      if [ $ans == 'n' ]
  8      then
  9          echo "Exiting the script. Have a nice day!"
 10          exit 0
 11      else
 12          continue  되돌아가기
 13      fi
 14 }
 15 while (true)
 16 do
 17  clear
 18  printf "Choose from the following operations: \n"
 19  printf "[a]Addition [b]Subtraction [c] Multiplication [d]Division\n"
 20  read -p "### Your choice: " choice
 21  case $choice in
 22  [aA])
 23      inputs
 24      res=$((int1+int2))
 25  ;;
 26 [bB])
 27     inputs
 28     res=$((int1-int2))
 29 ;;
 30 [cC])
 31     inputs
 32     res=$((int1*int2))
 33 ;;
 34 [dD])
 35     inputs
 36     res=$((int1/int2))
 37 ;;
 38  *)
 39      res=0
 40      echo "wrong choice!"
 41  esac
