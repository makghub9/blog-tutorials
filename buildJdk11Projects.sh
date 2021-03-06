#!/bin/bash

set -e
set -o pipefail

mvn -B -f consumer-driven-contracts-with-spring-cloud-contract/book-store-server install

declare -a arr=("whats-new-in-spring-boot-2.1" 
 "charts-in-pdf-java-ee"
 "bootstrap-jakarta-ee-8-application"
 "custom-maven-archetype"
 "demo-crud-application"
 "deploy-spring-boot-to-gke"
 "spring-boot-hibernate-flyway-best-practices"
 "random-data-in-java-using-java-faker"
 "guide-to-jakarta-ee-with-react-and-postgresql"
 "five-java-9-features"
 "consumer-driven-contracts-with-spring-cloud-contract/book-store-client"
 "java-ee-with-kotlin"
 "spring-boot-with-kotlin"
 "spring-boot-feature-toggles-with-togglz"
 "spring-boot-integration-tests-wiremock"
 "spring-boot-integration-tests-testcontainers"
 "telegram-bot-notifications-with-java"
 "websockets-with-jakarta-ee"
 "open-liberty-maven-plugin-review"
 "jakarta-ee-react-file-handling"
 "remote-debugging-spring-boot-application"
 "review-microshed-testing"
 "maven-plugins-to-ensure-quality"
 "spring-web-client-demo"
 "spring-boot-uploading-and-downloading-files-with-react"
 "spring-web-client-oauth2-reactive-stack"
 "spring-web-client-oauth2-servlet-stack"
 "spring-web-test-client"
 "spring-web-client-customizing"
 "whats-new-in-microprofile-3.1"
 "whats-new-in-spring-boot-2.1"
 "whats-new-in-spring-boot-2.2"
 "spring-web-test-client"
 "github-actions-java-maven"
 "spring-web-client-expose-metrics"
 "spring-boot-selenium-integration-tests"
 "testing-json-serialization-spring"
 "spring-web-mvc-cheat-sheet"
 "spring-boot-aws-ssm-parameter-resolving"
 "spring-boot-aws-integration-tests"
 "expose-git-information-actuator"
 "serverless-java-aws-examples/thumbnail-generator"
 "serverless-java-aws-examples/spring-cloud-function-aws"
 "spring-security-aws-cognito-thymeleaf"
)

for project in "${arr[@]}"
do
  mvn -B -f $project/pom.xml verify
done