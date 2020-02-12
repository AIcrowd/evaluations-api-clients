# io.swagger.client - Kotlin client library for Evaluations API

## Requires

* Kotlin 1.1.2
* Gradle 3.3

## Build

First, create the gradle wrapper script:

```
gradle wrapper
```

Then, run:

```
./gradlew check assemble
```

This runs all tests and packages the library.

## Features/Implementation Notes

* Supports JSON inputs/outputs, File inputs, and Form inputs.
* Supports collection formats for query parameters: csv, tsv, ssv, pipes.
* Some Kotlin and Java types are fully qualified to avoid conflicts with types defined in Swagger definitions.
* Implementation of ApiClient is intended to reduce method counts, specifically to benefit Android targets.

<a name="documentation-for-api-endpoints"></a>
## Documentation for API Endpoints

All URIs are relative to *https://localhost/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ArgoApi* | [**postGenericFeedbackContract**](docs/ArgoApi.md#postgenericfeedbackcontract) | **POST** /argo/{model_name}/{object_id} | 
*ArgoApi* | [**postGraderFeedbackDao**](docs/ArgoApi.md#postgraderfeedbackdao) | **POST** /argo/graders/{grader_id} | 
*ArgoApi* | [**postSubmissionFeedbackDao**](docs/ArgoApi.md#postsubmissionfeedbackdao) | **POST** /argo/submissions/{submission_id} | 
*AuthApi* | [**logout a user**](docs/AuthApi.md#logout a user) | **POST** /auth/logout | 
*AuthApi* | [**user login**](docs/AuthApi.md#user login) | **POST** /auth/login | 
*ClustersApi* | [**deleteClusterDao**](docs/ClustersApi.md#deleteclusterdao) | **DELETE** /clusters/{cluster_id} | 
*ClustersApi* | [**getClusterDao**](docs/ClustersApi.md#getclusterdao) | **GET** /clusters/{cluster_id} | 
*ClustersApi* | [**getGraderListDao**](docs/ClustersApi.md#getgraderlistdao) | **GET** /clusters/ | 
*ClustersApi* | [**postGraderListDao**](docs/ClustersApi.md#postgraderlistdao) | **POST** /clusters/ | 
*GradersApi* | [**deleteGraderDao**](docs/GradersApi.md#deletegraderdao) | **DELETE** /graders/{grader_id} | 
*GradersApi* | [**getGraderDao**](docs/GradersApi.md#getgraderdao) | **GET** /graders/{grader_id} | 
*GradersApi* | [**getGraderListDao**](docs/GradersApi.md#getgraderlistdao) | **GET** /graders/ | 
*GradersApi* | [**postGraderListDao**](docs/GradersApi.md#postgraderlistdao) | **POST** /graders/ | 
*GradersApi* | [**putGraderDao**](docs/GradersApi.md#putgraderdao) | **PUT** /graders/{grader_id} | 
*OrganisationsApi* | [**deleteOrganisationDao**](docs/OrganisationsApi.md#deleteorganisationdao) | **DELETE** /organisations/{organisation_id} | 
*OrganisationsApi* | [**getOrganisationDao**](docs/OrganisationsApi.md#getorganisationdao) | **GET** /organisations/{organisation_id} | 
*OrganisationsApi* | [**getOrganisationListDao**](docs/OrganisationsApi.md#getorganisationlistdao) | **GET** /organisations/ | 
*OrganisationsApi* | [**postOrganisationListDao**](docs/OrganisationsApi.md#postorganisationlistdao) | **POST** /organisations/ | 
*OrganisationsApi* | [**putOrganisationDao**](docs/OrganisationsApi.md#putorganisationdao) | **PUT** /organisations/{organisation_id} | 
*OrganisationsApi* | [**putQuotaDao**](docs/OrganisationsApi.md#putquotadao) | **PUT** /organisations/addquota/{organisation_id} | 
*SubmissionsApi* | [**deleteSubmissionDao**](docs/SubmissionsApi.md#deletesubmissiondao) | **DELETE** /submissions/{submission_id} | 
*SubmissionsApi* | [**getSubmissionDao**](docs/SubmissionsApi.md#getsubmissiondao) | **GET** /submissions/{submission_id} | 
*SubmissionsApi* | [**getSubmissionListDao**](docs/SubmissionsApi.md#getsubmissionlistdao) | **GET** /submissions/ | 
*SubmissionsApi* | [**postSubmissionListDao**](docs/SubmissionsApi.md#postsubmissionlistdao) | **POST** /submissions/ | 
*UsersApi* | [**deleteUserDao**](docs/UsersApi.md#deleteuserdao) | **DELETE** /users/{user_id} | 
*UsersApi* | [**getUserDao**](docs/UsersApi.md#getuserdao) | **GET** /users/{user_id} | 
*UsersApi* | [**getUserListDao**](docs/UsersApi.md#getuserlistdao) | **GET** /users/ | 
*UsersApi* | [**postUserListDao**](docs/UsersApi.md#postuserlistdao) | **POST** /users/ | 
*UsersApi* | [**putQuotaDao**](docs/UsersApi.md#putquotadao) | **PUT** /users/addquota/{user_id} | 
*UsersApi* | [**putUserDao**](docs/UsersApi.md#putuserdao) | **PUT** /users/{user_id} | 


<a name="documentation-for-models"></a>
## Documentation for Models

 - [io.swagger.client.models.Cluster](docs/Cluster.md)
 - [io.swagger.client.models.GenericFeedback](docs/GenericFeedback.md)
 - [io.swagger.client.models.Grader](docs/Grader.md)
 - [io.swagger.client.models.GraderFeedback](docs/GraderFeedback.md)
 - [io.swagger.client.models.Login](docs/Login.md)
 - [io.swagger.client.models.Organisation](docs/Organisation.md)
 - [io.swagger.client.models.OrganisationQuota](docs/OrganisationQuota.md)
 - [io.swagger.client.models.SubmissionFeedback](docs/SubmissionFeedback.md)
 - [io.swagger.client.models.Submissions](docs/Submissions.md)
 - [io.swagger.client.models.User](docs/User.md)
 - [io.swagger.client.models.UserQuota](docs/UserQuota.md)


<a name="documentation-for-authorization"></a>
## Documentation for Authorization

<a name="api_key"></a>
### api_key

- **Type**: API key
- **API key parameter name**: AUTHORIZATION
- **Location**: HTTP header

