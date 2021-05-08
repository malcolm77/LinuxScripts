<h2> A copy of everything under /home/malcolm/github/LinuxScripts on owlbear.</h2>
<p>
I use this as a 'backup' of the scripts and config files that i create.<br>
Where ever I create them, i have to copy them to /home/malcolm/github/LinuxScripts to put them here.<br>
This might also discourage me from using the root account so much.
</p>

To pull this repo</br>
<pre>
git init
git remote add origin git@github.com:malcolm77/LinuxScripts.git
git pull origin master
</pre>

To setup git on new server</br>

1) install
<pre>
yum install git
or
yum install <path-to-rpm>
or
apt-get install git
</pre>

2) initialization</br>
<pre>
git init
git remote add origin git@github.com:malcolm77/LinuxScripts.git
git config --global credential.helper store
</pre>

3) pull repo</br>
<pre>
git pull origin master
git branch --set-upstream-to=origin/master master
</pre>

4) update</br>
<pre>
after making changes.....
git add <file-that-was-changed-or-added>
git commit -m "updated"
git push
</pre>
