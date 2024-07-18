# network-bash-scripts
Bash scripts that start and stop the 5G system, OpenRTiST clients and servers, and iperf3 clients and servers.

Some bash scripts initiate screen sessions. These scripts must not be executed with sudo (start_5G_gNB.sh. and all bash scripts that start clients or servers).
All other bash scripts must run with sudo.

In order to execute bash scripts that run with sudo remotely via the paramiko python library, edit the sudoers file:

```
sudo nano /etc/sudoers
```
And add the following line:
```
your_username ALL=(ALL) NOPASSWD: /home/wlab/panos/network-bash-scripts/
```

Moreover, some bash scripts initiate screens and then enter sudo commands (start_5G_gNB.sh, start_openrtist_server.sh)
To make them correctly, please also add the following lines in the sudoers file:

```
your_username ALL=(ALL) NOPASSWD: /home/wlab/panos/custom-openairinterface5g/cmake_targets/ran_build/build/nr-softmodem
your_username ALL=(ALL) NOPASSWD: /home/wlab/panos/openrtist/server/venv/bin/python
```

where your_username is the name of the local user that runs the bash scripts.
