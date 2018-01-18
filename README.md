# proxy stack

The initial deploy of the proxy will need to be done manually, however,
after deploying this, and the Jenkins stack, future updates can be made
through Continuous Deployment.

To do so, `ssh` into your cluster and then:

```
git clone YOUR_FORK/proxy-stack.git
cd proxy-stack

sh init.sh && sh deploy.sh
```

---
To learn more about this stack, visit https://www.microservicedriven.com
