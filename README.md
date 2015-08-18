# rsync-s3

A docker container that runs in a loop and constantly tries to rsync files from an rsync server to an s3 bucket


## configuration

 * AWS_ACCESS_KEY_ID
 * AWS_SECRET_ACCESS_KEY
 * AWS_DEFAULT_REGION
 * RSYNC_SERVER
 * RSYNC_USERNAME
 * RSYNC_PASSWORD
 * RSYNC_SHARE


## Running

Run like this:

```
docker run -e AWS_ACCESS_KEY_ID=AKIAASDFOASDFHAD*IFHS -e AWS_SECRET_ACCESS_KEY=isadoahfaiHHSDf/a/sdf/adsf -e AWS_DEFAULT_REGION=us-east-1 -e RSYNC_SERVER=some.rsync-server.com -e RSYNC_USERNAME=realgeeks -e RSYNC_PASSWORD=secret -e RSYNC_SHARE=some-share-name realgeeks/rsync-s3
```
