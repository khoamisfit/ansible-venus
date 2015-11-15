# Roles

We have two roles:

* users: Manage users ( Add, Delete, Update ).
* manage-ssh-key: Manage ssh keys.

# How to use:

## users role:

Go to the `group_vars` . You will find the variables.

#### Role Variables

* username - The user's username.
* name - The full name of the user (gecos field)
* uid - The numeric user id for the user. This is required for uid consistency
  across systems.
* password - If a hash is provided then that will be used, but otherwise the
  account will be locked
* groups - a list of supplementary groups for the user.
* ssh_keys - This should be a list of ssh keys for the user. Each ssh key
  should be included directly and should have no newlines.

```
# Add or Update user

users:
  - username: foo
    name: Foo Barrington
    groups: []
    uid: 1003
    ssh_keys:
      - ssh_pub_keys/centos.pub

# Delete user

users_deleted:
  - username: bar
    uid: 1004
```

#### Add SSH key

You can access `roles/users/files/ssh_pub_keys` to add ssh key. For example: centos.pub or ubuntu.pub

## manage-ssh-key role:

Go to the `group_vars` folder . You will find the variables.

#### Role Variables


````

manage_ssh_keys:
  - remote_user: foo #define username on remote system to add defined keys to
    present: true  #defines if ssh key should be added or removed
    ssh_keys:  #define key(s) to add to remote username
       - ssh_pub_keys/ubuntu.pub
       - ssh_pub_keys/centos.pub

  - remote_user: foo
    present: false
    ssh_keys:
       - ssh_pub_keys/centos.pub

````

#### Add SSH key

You can access `roles/manage-ssh-key/files/ssh_pub_keys` to add ssh key. For example: centos.pub or ubuntu.pub

## Run the main playbook

```
ansible-playbook  -i hosts playbook.yml
```

