# Run ansible-vireo4 in a local Virtual Machine

## 1.  Edit vars_vireo4.yml

### 1.1 Set apache_use_ssl to false presuming the VM will be used just for testing/development
```
  apache_use_ssl: false
```

### 1.2 Set allow_multiple to false if you do not need this modification of Submission.java line 41.
The modification does not happen until migration.yml calls role 'vireo4.server'
```
  allow_multiple: false
```

### 1.3  Set the current_site, and vm_location values.  The current_site denotes the site to be replicated in the VM.
 These entries refer to values in vars_vireo4_hosts.yml. The vm_location should be 'localvm' for building in a local VM.
```
  current_site: twu
  vm_location: localvm
```

### 1.4  Set the vireo_gitsource, vireo_gitbranch and vireo_warversion values for the vireo4 version 
which will be downloaded.


## 2.  Edit Vagrantfile

### 2.1  Uncomment the BASIC SETUP ansible.playbook value.  This will build the base system.
```
    ansible.playbook = "vireo4.yml"
```

## 2.2  Build VM
```
  vagrant up
```

### 2.3  Comment out the vireo4.yml playbook and uncomment the migration.yml playbook.
```
    #ansible.playbook = "vireo4.yml"
    ansible.playbook = "migration.yml"
```

## 2.4  Provision the existing VM
```
  vagrant provision
```

### 2.5  Comment out the migration.yml playbook and uncomment the run_migration.yml playbook.
```
    #ansible.playbook = "vireo4.yml"
    #ansible.playbook = "migration.yml"
    ansible.playbook = "run_migration.yml"
```

### 2.6  Provision the existing VM
```
  vagrant provision
```

## 3. Verify by going to http://localhost:8080

## 4. Verify by ssh.
```
  vagrant ssh
```

### 4.1 Sign in as root
```
  sudo bash -login
```

### 4.2 Sign in as vireo4 (from root)
```
  sudo -u vireo4 bash -login
```

### 4.2 Sign in as postgres (from root)
```
  sudo -i -u postgres
```

