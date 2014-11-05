# DevOps With Ansible

## Local Development

## AWS Development

**in order use aws we need the follow environment variables:**

* AWS_ACCESS_KEY:  AWS access key
* AWS_SECRET_KEY: AWS secret key

> You can define mutil enviroments.
> for example if we need build a test env in aws. you can modify the ./provision/enviroments/test.yml
> and then you can use the follow command to set up a new aws instance for test

```
cd bin
./launch.sh test
```
