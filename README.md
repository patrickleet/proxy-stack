# proxy stack

The initial deploy of the proxy will need to be done manually, however,
after deploying this, and the Jenkins stack, future updates can be made
through Continuous Deployment.

You will need to create a secret to be used for basic authentication of private services.
The password needs to be encrypted. To make things more complicated, it needs to be encrypted
using a linux OS, cause the one on Mac doesn't work. I tried. 

So the easiest way to do this is running a Docker container.

```
docker run -it --rm alpine ash
# you will enter into the container's shell

mkpasswd -m sha-512 replaceThisWithYourPassword
```

The result of this command is your encrypted password. Use it below.

To do so, `ssh` into your cluster and then:

```
git clone YOUR_FORK/proxy-stack.git
cd proxy-stack

# create admin password
echo "admin:replaceThisWithYourEncryptedPassword" | docker secret create dfp_users_admin -

sh init.sh && sh deploy.sh
```

