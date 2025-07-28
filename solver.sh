#!/bin/bash


pass=bandit0
oldpass=""

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
  sshpass -p $pass scp -q  -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -P 2220 bandit13@bandit.labs.overthewire.org:sshkey.private .

  chmod 700 sshkey.private
  pass=$(ssh -i sshkey.private -q  -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null bandit14@bandit.labs.overthewire.org -p 2220 "cat /etc/bandit_pass/bandit14")
  rm "sshkey.private"
}
lvl14(){ cd $(mktemp -d); (cat /etc/bandit_pass/bandit14 | nc localhost 30000) >> file; cat file | head -n 2| tail -1; exit; }
lvl15(){ echo "$( cat /etc/bandit_pass/bandit15 | ncat --ssl localhost 30001)" | tail -1;exit; }
lvl16(){
   cd $(mktemp -d)
   cat /etc/bandit_pass/bandit16 | ncat  --ssl localhost 31790 >>  sshkey.private
   chmod 700 sshkey.private
   ssh -i sshkey.private -q -o StrictHostKeyChecking=accept-new -o UserKnownHostsFile=/dev/null bandit17@bandit.labs.overthewire.org -p2220 "cat /etc/bandit_pass/bandit17"
   exit;
 }
lvl17(){ diff passwords.old passwords.new |  awk '{print $NF}' | tail -1; exit; }
lvl18(){ cat readme; exit; }
lvl19(){ ./bandit20-do cat /etc/bandit_pass/bandit20; exit; }
lvl20()
{
   (sleep 1; cat /etc/bandit_pass/bandit20) | ncat -l -p 20000 &
   sleep 1
   echo $(./suconnect 20000 1>/dev/null)
   exit;
}
lvl21() { cat $(cat /usr/bin/cronjob_bandit22.sh | awk '/>/{print $NF}');exit; }
lvl22() { cat /tmp/$(echo I am user bandit23 | md5sum | cut -d ' ' -f 1);exit; }
lvl23()
{
   cd /var/spool/bandit24/foo
   echo '#!/bin/bash' > script.sh
   echo 'cat /etc/bandit_pass/bandit24 > /tmp/huh' >> script.sh
   chmod +x script.sh
   for i in {1..60}; do
     [ -s /tmp/huh ] && break
     sleep 1
   done
   cat /tmp/huh
   exit;
}
lvl24()
{
   cd  $(mktemp -d)
   echo '#!/bin/bash' >> script.sh
   echo 'pass=$(cat /etc/bandit_pass/bandit24)' >> script.sh
   echo 'for pin in  {0000..9999}; do' >> script.sh
   echo 'echo $pass $pin >> pass.txt' >> script.sh
   echo 'done' >> script.sh
   echo 'cat pass.txt | ncat localhost 30002 > ans.txt' >> script.sh
   bash script.sh
   grep -v Wrong ans.txt | awk '/is/{print $NF}'
   exit;
}
lvl25()
{
    echo 'Step 1: type "v" (without quotes) when __MORE__() shows up'
    sleep 2
    echo 'Step 2: type  :set shell=/bin/bash'
    sleep 2
    echo 'Step 3: type  :shell'
    sleep 2
    echo 'Step 4: Once logged into bandit26 ./bandit27_do cat /etc/bandit_pass/bandit27'
    sleep 2
    echo 'Copy the password and type exit'
    sleep 2
    echo 'Exit out of vim by typing :q!'
    sleep 2
    echo 'Exit out of MORE by pressing Enter bunch of times'
    sleep 2
    echo 'NOTE DO NOT PANIC WHEN THE TERMINAL SIZE BECOMES SMALL RESIZE IT'
    sleep 5

    sshpass -p "$pass" -- scp -T -q -P 2220 -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null \
        bandit25@bandit.labs.overthewire.org:bandit26.sshkey .

    chmod 700 bandit26.sshkey
    printf '\e[8;10;40t' 
    ssh -i bandit26.sshkey -p 2220 -o StrictHostKeyChecking=no bandit26@bandit.labs.overthewire.org
    echo -n "paste the password:"
    read pass
    rm bandit26.sshkey
}
lvl27()
{
    cd $(mktemp -d)
    PASSWORD=$(cat /etc/bandit_pass/bandit27)
    echo '#!/bin/sh' > askpass.sh
    echo "echo $PASSWORD" >> askpass.sh
    chmod +x askpass.sh
    export DISPLAY=:0
    export SSH_ASKPASS="$PWD/askpass.sh"
    export GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -p 2220"
    setsid git clone ssh://bandit27-git@localhost:2220/home/bandit27-git/repo

    cat repo/README | awk '{print $NF}'; exit ;
}
lvl28()
{
 cd $(mktemp -d)
    PASSWORD=$(cat /etc/bandit_pass/bandit28)
    echo '#!/bin/sh' > askpass.sh
    echo "echo $PASSWORD" >> askpass.sh
    chmod +x askpass.sh
    export DISPLAY=:0
    export SSH_ASKPASS="$PWD/askpass.sh"
    export GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -p 2220"
    setsid git clone ssh://bandit28-git@localhost:2220/home/bandit28-git/repo
    
    cd repo
    git reset --quiet --hard fb0df1358b1ff146f581651a84bae622353a71c0
    tail -2 README.md | head -1 | awk '{print $NF}'; exit ;
}
lvl29()
{
 cd $(mktemp -d)
    PASSWORD=$(cat /etc/bandit_pass/bandit29)
    echo '#!/bin/sh' > askpass.sh
    echo "echo $PASSWORD" >> askpass.sh
    chmod +x askpass.sh
    export DISPLAY=:0
    export SSH_ASKPASS="$PWD/askpass.sh"
    export GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -p 2220"
    setsid git clone ssh://bandit29-git@localhost:2220/home/bandit29-git/repo
    
    cd repo 
    git reset --quiet --hard a97d0dbf8fd910ead6fcf648829ff55c1a629c8e
    grep 'password:' README.md | awk '{print $NF}'; exit
}
lvl30()
{
 cd $(mktemp -d)
    PASSWORD=$(cat /etc/bandit_pass/bandit30)
    echo '#!/bin/sh' > askpass.sh
    echo "echo $PASSWORD" >> askpass.sh
    chmod +x askpass.sh
    export DISPLAY=:0
    export SSH_ASKPASS="$PWD/askpass.sh"
    export GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -p 2220"
    setsid git clone ssh://bandit30-git@localhost:2220/home/bandit30-git/repo
    
    cd repo 
    git show secret
}   
lvl31()
{
 cd $(mktemp -d)
    PASSWORD=$(cat /etc/bandit_pass/bandit31)
    echo '#!/bin/sh' > askpass.sh
    echo "echo $PASSWORD" >> askpass.sh
    chmod +x askpass.sh
    export DISPLAY=:0
    export SSH_ASKPASS="$PWD/askpass.sh"
    export GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -p 2220"
    setsid git clone ssh://bandit31-git@localhost:2220/home/bandit31-git/repo
    
    sleep 2
    cd repo 
    echo 'May I come in?' > key.txt
    git add -f key.txt
    git commit -q -m "adding key.txt" >/dev/null
    git push -q 2>&1 | awk '$1 == "remote:" && $2 ~ /^[a-zA-Z0-9]{32}$/ { print $2 }'; exit;
}

for v in {0..31};
do
  if [ $v -eq 13 ];
  then
    lvl13
  elif [ $v -eq 25 ];
  then
    lvl25
  elif [ $v -eq 26 ];
  then
    continue
  else
    oldpass="$pass"
    pass=""
    while [ -z "$pass" ]; do
      pass=$(sshpass -p "$oldpass" -- ssh -q -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -p 2220 bandit$v@bandit.labs.overthewire.org "$(declare -f lvl$v);lvl$v")
    done
  fi
  echo "$v -> $((v+1)) :  $pass"
  sleep $((RANDOM % 2 + 1))
done

