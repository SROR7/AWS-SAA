## Install rails 

```sh 
gem install rails
```

## Create The Web APP

```sh 
rails new example -A -J -T -d postgresql
```

## install Packages 

```sh 
bundle install 
```

## start the project 

```sh
bundle exec rails s -b 0.0.0.0
```

## Create DataBase

```sh 
bundle exec rails db:create
```


## Migrate DataBase

```sh 
bundle exec rails db:migrate
```

## install EB CLI 

```sh 

git clone https://github.com/aws/aws-elastic-beanstalk-cli-setup.git

python ./aws-elastic-beanstalk-cli-setup/scripts/ebcli_installer.py