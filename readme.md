run deployment scripts on machine
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=token-devops-project

login using ssh 
- check for existing ssh keys
    ls ~/.ssh 
- generate new ssh key
    ssh-keygen -t rsa -b 4096 -C "mail@address.com"
- add ssh key to github
    cat ~/.ssh/id_rsa.pub
        then goto github - settings - keys
                        - new ssh key
                        -paste the key - save
-test ssh connection
    ssh -T git@github.com

- change your remote url to use ssh
    git remote -v
    git remote set-url origin git@github.com:cygday/devops-project.git
-
