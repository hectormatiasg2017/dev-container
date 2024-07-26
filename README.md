

## Dynamo DB

### List Tables

```bash curl
curl -X POST \
  http://dynamodb-local:8000/ \
  -H "Content-Type: application/x-amz-json-1.0" \
  -H "x-amz-target: DynamoDB_20120810.ListTables" \
  -H "Authorization: AWS4-HMAC-SHA256 Credential=fakeMyKeyId/20230726/us-west-2/dynamodb/aws4_request, SignedHeaders=host;x-amz-date, Signature=fake-signature" \
  -d '{}'
```