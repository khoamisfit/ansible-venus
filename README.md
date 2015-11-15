# Roles

We have two roles:

* users: Manage users ( Add, Delete, Update ).
* manage-ssh-key: Manage ssh keys.

# How to use:

## users role:

Go to the `roles/users/defauls` . You will find the variables.

### Role Variables

```
# Add or Update user

users:
  - username: foo
    name: Foo Barrington
    groups: []
    uid: 1003
    ssh_key:
      - "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDsVsDd0zZTFyXTq3o82N4Syiv0catKLk353p8d0Jyy/ir3Qxj45/x71wkf5WN5CULqc75tTdplIC0bI24gMdfEmdOKGF91xAfRJkz0DO7ruxMJ16n8BM5zSb2SIJ0x7ryMMVCEyURpSVm0EpMiWhANVvZ84qykKt0RUrUmjetQ+fxllyyAti1O/BVEy4Z/0AM9tOiT/Gq1WJOW/+I8jr+iEdFIOmfn54NwR+raHrhYULOtKPBEY+iEYQjzuCInFK35he3WjdiW6f2txBk7nCCDiBFmCuibAWZA1KZm/t3KWKkliKOQ6i3g4+CwMk9Iz0L+j0fLolfYJmry8YbdiKhKp7liKZCWtlasNpQ8gpgiqdJUJO45Ua+TyJ3Yz7NStSK1xv2dFqqdOBe3OF+pHCEuv/+H6sWG3wcF7sMHN6MncByjD+OxKQMJK274tB9313m4qsYeboW/TVlOHezTfjXJrqvFgtfTT2jK3KpSW8N0II7MUi/1wYRLuhMARSvjlKU0qinckoP+fE3HGXWxGOClwtKgzMmvaFWLF5iGOlKGMUvgTa55tieaA5fysdLpLKWOnBv8bxlKuh7562hViS7ywLP3tcWEdyTn9rdyf39R3wanMQFMjK4aHvZA2Tw31hzIKFF42gpGjcYKkDV2Eq+g9ZSTejff0r86HeLC9aF8cQ== ubuntu@example.com"

# Delete user

users_deleted:
  - username: bar
    uid: 1004
```
## manage-ssh-key role:

Go to the `roles/users/defauls` folder . You will find the variables.

###Role Variables


````
---
# defaults file for ansible-manage-ssh-keys
enable_manage_ssh_keys: false  #defines if remote ssh keys should be managed

manage_ssh_keys:
  - remote_user: foo #define username on remote system to add defined keys to
    present: true  #defines if ssh key should be added or removed
    keys:  #define key(s) to add to remote username
       - ssh_pub_keys/ubuntu.pub
       - ssh_pub_keys/centos.pub

  - remote_user: foo
    present: false
    keys:
       - ssh_pub_keys/centos.pub

````


