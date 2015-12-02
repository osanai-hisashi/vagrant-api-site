vagrant-api-site
===

Require
---

* vagrant
* vagrant-omnibus
* vagrant-proxyconf

Usage
---

set `http_proxy`, `https_proxy` and `no_proxy`, if you need.

```
$ vagrant up --provision
$ vagrant ssh-config --host api-site >> ~/.ssh/config
```
