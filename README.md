# ptfe docker image

Custome worker for TFE with jq added.

CA bundle as required.

```
docker build -f docker/Dockerfile -t ihuntenator/ptfe-jq:1.0.0
```

Check jq with:
```
docker run -it ihuntenator/ptfe-jq:1.0.0 bash
```
## References

 * https://www.terraform.io/docs/enterprise/install/automating-the-installer.html
 * https://www.terraform.io/docs/enterprise/install/config.html#system-configuration
 * https://www.terraform.io/docs/enterprise/install/installer.html#alternative-terraform-worker-image
