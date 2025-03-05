#!/bin/bash


pass=bandit0

lvl0(){ awk '{print $NF}' readme | tail -n 2 | head -n 1;exit; }
lvl1(){ cat ./-;exit; }
lvl2(){ cat "spaces in this filename";exit; }
lvl3(){ cat inhere/...Hiding-From-You;exit; }
lvl4(){ find inhere/./* -exec bash -c 'if [ "$(file -b "{}")" == "ASCII text" ]; then cat "{}"; fi' \;;exit; }
lvl5(){ cat $(find . -type f -size 1033c -readable -not -executable) | tr -d "[:blank:]";exit; } 
lvl6(){ cat $(find / -type f -user bandit7 -group bandit6 -size 33c 2>/dev/null);exit; }
lvl7(){ awk '/millionth/ {print $NF}' data.txt;exit; }
lvl8(){ sort data.txt | uniq -c | awk '!/10/ {print $NF}';exit; }
lvl9(){ strings data.txt | awk ' /===/ {print $NF}' | tail -1;exit; }
lvl10(){ base64 -d data.txt | awk '{print $NF}';exit; }
lvl11(){ cat data.txt | tr 'a-zA-Z' 'n-za-mN-ZA-M' | awk '{print $NF}';exit; }





for v in {0..11};
do
  pass=$(sshpass -p $pass ssh  -p 2220 bandit$v@bandit.labs.overthewire.org "$(declare -f lvl$v);lvl$v")
  echo $pass
  sleep 1
done
