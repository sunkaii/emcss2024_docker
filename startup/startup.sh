useradd -rm -d /home/$username -s /bin/bash -u 1001 $username
echo "${username}:${userpwd}"
echo "${username}:${userpwd}" | chpasswd
chown ${username}:${username} /home/${username}
echo "Asia/Taipei" > /etc/timezone
service ssh restart
# touch /home/$username/.bashrc
rm /home/$username/.bashrc
rm /home/$username/.profile
echo "export LD_LIBRARY_PATH=/usr/local/cuda/lib64:/tmp/_MEIyDHsz4" >> /home/$username/.bashrc
echo "export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin:/usr/local/cuda/bin" >> /home/$username/.bashrc
echo "export LD_LIBRARY_PATH=/usr/local/cuda/lib64:/tmp/_MEIyDHsz4" >> /home/$username/.profile
echo "export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin:/usr/local/cuda/bin" >> /home/$username/.profile
bash
#c
