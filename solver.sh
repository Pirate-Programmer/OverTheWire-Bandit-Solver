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
lvl12(){
  cd $(mktemp -d)
  cp /home/bandit12/data.txt data.txt
  xxd -r data.txt data.gz
  gzip -d data.gz
  mv data data.bz2
  bzip2 -d data.bz2
  mv data data.gz
  gzip -d data.gz
  mv data data.tar
  tar -xf data.tar
  mv data5.bin data5.tar
  tar -xf data5.tar
  mv data6.bin data6.bz2
  bzip2 -d data6.bz2
  mv data6 data6.tar
  tar -xf data6.tar
  mv data8.bin data8.gz
  gzip -d data8.gz
  awk '{print $NF}' data8
  exit
}
lvl13(){
  sshpass -p $pass scp -P 2220 bandit13@bandit.labs.overthewire.org:sshkey.private .
  chmod 700 sshkey.private
  pass=$(ssh -i sshkey.private bandit14@bandit.labs.overthewire.org -p 2220 "cat /etc/bandit_pass/bandit14")
  rm "sshkey.private"
}
lvl14(){ cd $(mktemp -d); (cat /etc/bandit_pass/bandit14 | nc localhost 30000) >> file; cat file | head -n 2| tail -1; exit; }
lvl15(){ echo "$( cat /etc/bandit_pass/bandit15 | ncat --ssl localhost 30001)" | tail -1;exit; }
lvl16(){
   cd $(mktemp -d)
   cat /etc/bandit_pass/bandit16 | ncat  --ssl localhost 31790 >>  sshkey.private
   chmod 700 sshkey.private
   ssh -i sshkey.private  -o StrictHostKeyChecking=accept-new  bandit17@bandit.labs.overthewire.org -p2220 "cat /etc/bandit_pass/bandit17"
   exit
 }
lvl17(){ diff passwords.old passwords.new |  awk '{print $NF}' | tail -1; exit; }
lvl18(){ cat readme; exit; }
lvl19(){ ./bandit20-do cat /etc/bandit_pass/bandit20; exit; }
lvl20()
{
   cat /etc/bandit_pass/bandit20 | nc -l -p 20000 & 
   echo $(./suconnect 20000 1>/dev/null); exit;
}
lvl21() { cat $(cat /usr/bin/cronjob_bandit22.sh | awk '/>/{print $NF}');exit; }

for v in {0..21};
do
  if [ $v -eq 13 ];
  then
	lvl13
  else
 	 pass=$(sshpass -p $pass ssh  -p 2220 bandit$v@bandit.labs.overthewire.org "$(declare -f lvl$v);lvl$v")
   fi
   echo "$v -> $((v+1)) :  $pass"
   sleep 1
done
