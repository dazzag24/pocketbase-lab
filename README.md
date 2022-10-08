# Pocketbase lab

This is my repository for playing around with pocketbase and a React SPA as the frontend.

It also uses https://litestream.io/ to replicate the Sqlite databases to Oracle
object store using the S3 compatability layer.

Pocketbase is hosted on fly.io and the React app is hosted on Cloudflare Pages

Check it out at https://pocketbase-lab.pages.dev/

I am not very good at React, and just picked up last month. So if you think I'm doing
weird stuff and doing things "the React way", I would really appreciate feedback! Just raise in issue!

## Deploying yourself

### Backend

Deploying on fly.io is simple. Follow their guide

https://fly.io/docs/getting-started/dockerfile/

I am including my own fly.toml file here, but you would need to change the appname or generate one yourself :)

I am using a bucket on Oracle clouds always free tier, which you can read about and sign up for [here](https://www.oracle.com/cloud/free/?source=:ow:o:h:po:OHPPanel1nav0625&intcmp=:ow:o:h:po:OHPPanel1nav0625).


You need to set some environment variables for the litestream replication. The access key and secret key can be created/obtained from the Oracle admin. See the documentation [here](Secret keys (needed for S3 compatability usage) creation is detailed here: https://docs.oracle.com/en/cloud/paas/big-data-service/bdsmg/create-customer-secret-key.html)

They are:

```
S3_BUCKET
S3_ACCESS_KEY
S3_SECRET_KEY
S3_DATA_PATH
S3_LOGS_PATH
S3_URL
```

Put them in a secrets.env file and run `fly secrets import < secrets.env` to set all of them at the same time.

### Frontend

If you want to try this out for yourself all the code I use is here.

For react follow this guide: https://developers.cloudflare.com/pages/framework-guides/deploy-a-react-application/

You need to set the build root directory to `/frontend` for it properly build the React app.

You need to set some environment variables in the settings after deploying it on Cloudflare Pages:

```
NODE_VERSION=16
REACT_APP_API_URL=https://pocketbase-alex.fly.dev/
```




