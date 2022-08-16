hugo -D
aws s3 sync public s3://docs.sysrev.com --profile insilica

# TODO update below with the correct distribution id
# aws cloudfront create-invalidation --distribution-id EA1FHUI2SBWO4 --paths "/*"
# echo 'check status `aws cloudfront get-invalidation --id {invalidation_id} --distribution-id EA1FHUI2SBWO4'