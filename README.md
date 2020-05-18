## Rails Hyperledger Blockchain Scaffold

My Rails 6 Hyperledger Fabric Blockchain CRUD Scaffold Using [Ruby Hyperledger Fabric SDK](https://github.com/kirshin/hyperledger-fabric-sdk).

Be Sure to Have a [Working Hyperledger Installation](https://hyperledger-fabric.readthedocs.io/en/release-1.4/install.html):

### Install VSCode with IBM Blockchain Platform Extension**:
- [VSCode version 1.39](https://code.visualstudio.com/updates/v1_39)
- [IBM Blockchain Platform Extension for VSCode](https://github.com/IBM-Blockchain/blockchain-vscode-extension)

### Test Your IBM Blockchain Platform Extension:

- Click on *1 Org Local Fabric* to start (Fabric Environment)
- Click on *Package Open Project* (Smart Contracts) after openning only `app/contracts/users` folder on VS Code
- Click on *Fabric Environments -> Smart Contracts -> Installed -> Install* and select `node_blockchain_api_scaffold@0.0.1`
- Click on *Fabric Environments -> Smart Contracts -> Instantiated -> Instantiate* and select `node_blockchain_api_scaffold@0.0.1` use default values (press Enter) for all questions
- Click on *1 Org Local Fabric -> Org 1* -> **right click** *-> Export Wallet* and save on api/wallets (will create a folder called wallets on /api path)

### Check That Everything is Working Before Using Rails:

- Click on *Fabric Gateways -> 1 Org Local Fabric - Org1* and selecting admin
- Click on *Fabric Gateways -> 1 Org Local Fabric - Org 1 -> Channels -> mychannel -> node_blockchain_api_scaffold@0.0.1 -> createUser* -> **right click** -> Submit Transaction and send `["1", "Élisson Michael"]` as argument (press Enter on next question) and you should see a "Successfully submitted transaction" notification
- Click on *Fabric Gateways -> 1 Org Local Fabric - Org 1 -> Channels -> mychannel -> node_blockchain_api_scaffold@0.0.1 -> readUser* -> **right click** -> Evaluate Transaction and send `["1"]` as argument (press Enter on next question) and you should see a "Successfully submitted transaction" notification followed by `[SUCCESS] Returned value from readUser: {"value":"Élisson Michael"}` message on terminal

I'm using Ubuntu 19.10, Ruby 2.6.6 and Rails 6.0.3.

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
* Open http://localhost:3000/users/1
