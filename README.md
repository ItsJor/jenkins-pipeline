# jenkins-pipeline

## Authentication with GitHub
- To clone private repository down from github to jenkins, authentication is required
- If jenkins is built on ec2 instance:

    1. On the jenkins server, generate an SSH keypair

        `ssh-keygen -t ed25519 -C "your_email@example.com"`\
        `ssh-keygen -t rsa -b 4096 -C "your_email@example.com"` (if legacy system) 
    2. Specify path to save key - enter for default
    3. To obtain key: `cat your-path`\
        Example: `cat /home/ec2-user/.ssh/id_ed25519.pub`

    2. Add the ssh key to github \
        `Github -> Settings -> SSH and GPG keys -> New SSH key`
- Store the keys in Jenkins credentials

