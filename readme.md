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


webhook setup
- create a job with pipeline - syntax pipeline - checkout from version control
- place github url and do authenticate - add jenkins --username with password
- generate password from github token - github settings- developer settings 
- PAT - generate new token classic - check all the boxes -generate token -copy
  token and paste token as password for authentication - specify branch main -
  generate pipeline script - copy script and paste it in stage - run pipeline -
  configure now webhook -goto github -goto settings - add webhook - for url -
  use ngrok http 8080 - it converts the job url into a line - copy it and paste=
  to url on web hook - applicatino/json - just push the event - check it - check github webhook scm on configure job
-


sonarqube token
squ_b63ed92191e0a51a94492ed952ad649b1f3c7af5


sonarqube scan is not possible, check it out
https://www.youtube.com/watch?v=sk36v_gEjxM

set up project on sonarqube 

create a project
name
branch
baseline for new code for this project
use the global setting
then create project-> locally
provide a token and generate

save this token to jenkinns credentials
add credentials->secret text
name
create

manage jenkins 
system -> sonarqube servers -> url -> token->save

download plugins
sonarqube scanner for jenkins

create a pipline
freestyle project

soruce code management
git -> url -> branch 

build env
prepare sonarquebe env
server auth token -> token 

build steps 
execute sonarqube scanner
under analysis properties

