# SRVC Documentation and Issues
Use this repository to make SRVC or sysrev.com related feature requests and bug reports.

* [Request a feature](https://github.com/sysrev/srvc-docs/issues/new)  
* [Report a bug](https://github.com/sysrev/srvc-docs/issues/new)

# Developers

Deploy with

```
hugo -D
aws s3 sync public s3://biobricks.ai --profile insilica
aws cloudfront create-invalidation --distribution-id E2739YSAG8CXB8 --paths /*
```

1. Install hugo `brew install hugo`
2. Check version `hugo version` should be `hugo v0.101.0+extended linux/amd64`
3. `hugo server` for live server
