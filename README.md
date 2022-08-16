# Biobricks.ai Static Documentation Page

Deploy with

```
hugo -D
aws s3 sync public s3://biobricks.ai --profile insilica
aws cloudfront create-invalidation --distribution-id E2739YSAG8CXB8 --paths /*
```

# Development

1. Install hugo `brew install hugo`
2. Check version `hugo version` should be `hugo v0.101.0+extended linux/amd64`
3. hugo server for live server