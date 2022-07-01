#!/bin/bash
set -xe


# Copy war file from S3 bucket to tomcat webapp folder
aws s3 cp s3://##awsgithubactions##/GitHubactionsDemo-0.0.1-SNAPSHOT.jar /usr/local/tomcat9/webapps/GitHubactionsDemo-0.0.1-SNAPSHOT.jar

aws s3 cp target/*.jar s3://${{ env.S3BUCKET }}
# Ensure the ownership permissions are correct.
chown -R tomcat:tomcat /usr/local/tomcat9/webapps