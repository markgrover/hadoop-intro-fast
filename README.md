hadoop-intro-fast
=================

This github repository contains code for some of the Intro to Hadoop presentations I have done.

You would need a hadoop cluster in order to run the demo code. If you don't have a Hadoop cluster already and would like to get one, Cloudera's QuickStart VM is a very good first place. It's a single VM that contains all hadoop services installed on it. So, your QuickStat VM would be your one node Hadoop cluster.
You can download the QuickStart VM from tiny.cloudera.com/quick-start

Once you have downloaded the QuickStart VM and are running it, you'd have to do the following steps inside the QuickStart VM:
* Before you start the VM, you should make the VM have atleast 8 GB of RAM and 2 cores. The default memory and cores is a little too low.
* Once you get to the desktop in the VM, you will see an icon for 'Launch Cloudera Manager'. You should click on this icon and be patient after it's complete. This icon will run a script that will let your existing cluster, already set up in the VM, to be managed by Cloudera Manager, which is a free administrative tool to administer and monitor the health of your cluster.
* Now, go to a terminal and git clone this repo for the demo code:
<pre>
<src>
git clone https://github.com/markgrover/hadoop-intro-fast.git
cd hadoop-intro-fast/demo
</src>
</pre>
* Once you have downloaded he code, you will have to cd into each of the components, labeled 01_hdfs, etc. and run the steps file.

Special thanks to Tom Wheeler for letting me borrow his initial content for this respository.
