<h4><b>⚠️Work in Progress script is not yet complete⚠️</b></h4>

# <a href="https://overthewire.org/wargames/bandit/">OverTheWire-Bandit-Solver</a>
Forgot to save the password fam i got U. Bandit Solver can skip levels for you!! No need to keep the passwords anymore :D 

<h4>For Whom ?</h4>
<p>->Forgot to save the passwords</p>
<p>->Want to solve specific levels</p>
<p>->Passwords have been reset D:</p>

<p>Bandit Solver is very much for YOU!!!</p>

<hr>

<h2>Dependencies</h2>
<code> sudo apt install sshpass </code>

<h2>How to Run</h2>
<code> bash solver.sh </code>

<h2>Note</h2>
<li>lvl 25 -> 26 requires manual interaction steps are provided</li>
<li>lvl 26 -> 27 is part of the prev lvl 25 -> 26 </li>
<li>Be patient working is a bit slow</li>
<br>
<h2>⚠️Possible Errors ⚠️</h2>
<ol>
  <li> kex_exchange_identification: Connection closed by remote host --> recommed restart ssh using cmd: <code> sudo systemctl restart ssh </code></li>
  <li>exec request failed on channel 0  --> try login in using ssh later. Resources unavailable at server side</li>
  <li>conflicting passwords --> run script in a new terminal again ;D worked for me!! or restart ssh using the cmd given above</li>
</ol>

<hr>
Bandit Solver is my second ever script so pls do pardon my amateur work. I would visit bandit ctf on random days and it was quite frustating to see the passwords have been reset. As u can see the script has the solution of the levels emebbed cause i wanted to preserve the solutions where i can refer back to.
<br>
<br>
PS: Do not refer the the embeded solutions. They are not meant to make any sense. It was needed for parsing the output

