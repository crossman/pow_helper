# Setup

1. First configure apache to host on port 8088
2. Clone the reverse proxy and rack it up with pow

```ssh
    git clone git@github.com:crossman/pow_helper.git && cd pow_helper
    bundle install
    ln -s `pwd` ~/.pow/any_apache_vhost
```