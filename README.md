## Rails Hyperledger Blockchain Scaffold

My Rails 6 Hyperledger Fabric Blockchain CRUD Scaffold Using https://github.com/kirshin/hyperledger-fabric-sdk

I'm using Ubuntu 19.10, Ruby 2.6.6 and Rails 6.0.3:

### Install Ruby

```
sudo apt install curl
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt-get update
sudo apt-get install git-core zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn
```

### Install Ruby Version Manager [(RVM)](https://rvm.io/).

```
sudo apt-get install libgdbm-dev libncurses5-dev automake libtool bison libffi-dev
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm install 2.6.6
rvm use 2.6.6 --default
ruby -v
```

### Install Bundler

`gem install bundler`

### Install [Ruby on Rails](https://rubyonrails.org/)

`gem install rails -v 6.0.3`

### Instalando as Bibliotecas (Gems)

* `git clone git@github.com:elissonmichael/rails-hyperledger-blockchain-scaffold.git`
* `cd rails-hyperledger-blockchain-scaffold`
* `bundle install`
* `rails s`
* Open [http://localhost:3000](http://localhost:3000)
