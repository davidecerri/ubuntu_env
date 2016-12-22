CURRENT=`pwd`

if [ ! -d ~/.ansible_desktop_configuration_src ] ; then
   echo "Install Dependencies"
   sudo apt-get install -y -qq python python-pip git openssh-server

   echo "Install ansible"
   sudo pip install ansible

   echo "Get code from github"
   git clone git@github.com:davidecerri/ubuntu_env.git ~/.ansible_desktop_configuration_src
   else
       echo " $HOME/.ansible_desktop_configuration_src is already cloned"
fi

   cd  ~/.ansible_desktop_configuration_src
   git pull

   ansible-playbook -i hosts site.yml -c local -K
