# com.aicrowd.evaluations - Kotlin client library for AIcrowd Evaluations API

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
*AuthApi* | [**login**](docs/AuthApi.md#login) | **POST** /auth/login | 
*AuthApi* | [**logout**](docs/AuthApi.md#logout) | **POST** /auth/logout | 
*ClustersApi* | [**createCluster**](docs/ClustersApi.md#createcluster) | **POST** /clusters/ | 
*ClustersApi* | [**deleteCluster**](docs/ClustersApi.md#deletecluster) | **DELETE** /clusters/{cluster_id} | 
*ClustersApi* | [**getCluster**](docs/ClustersApi.md#getcluster) | **GET** /clusters/{cluster_id} | 
*ClustersApi* | [**listClusters**](docs/ClustersApi.md#listclusters) | **GET** /clusters/ | 
*GradersApi* | [**archiveGrader**](docs/GradersApi.md#archivegrader) | **POST** /graders/{grader_id}/archive | 
*GradersApi* | [**createGrader**](docs/GradersApi.md#creategrader) | **POST** /graders/ | 
*GradersApi* | [**deleteGrader**](docs/GradersApi.md#deletegrader) | **DELETE** /graders/{grader_id} | 
*GradersApi* | [**getGrader**](docs/GradersApi.md#getgrader) | **GET** /graders/{grader_id} | 
*GradersApi* | [**getGraderLogs**](docs/GradersApi.md#getgraderlogs) | **GET** /graders/{grader_id}/logs | 
*GradersApi* | [**listGraders**](docs/GradersApi.md#listgraders) | **GET** /graders/ | 
*GradersApi* | [**unarchiveGrader**](docs/GradersApi.md#unarchivegrader) | **POST** /graders/{grader_id}/unarchive | 
*GradersApi* | [**updateGrader**](docs/GradersApi.md#updategrader) | **PATCH** /graders/{grader_id} | 
*OrganisationsApi* | [**createOrganisation**](docs/OrganisationsApi.md#createorganisation) | **POST** /organisations/ | 
*OrganisationsApi* | [**deleteOrganisation**](docs/OrganisationsApi.md#deleteorganisation) | **DELETE** /organisations/{organisation_id} | 
*OrganisationsApi* | [**getOrganisation**](docs/OrganisationsApi.md#getorganisation) | **GET** /organisations/{organisation_id} | 
*OrganisationsApi* | [**listOrganisations**](docs/OrganisationsApi.md#listorganisations) | **GET** /organisations/ | 
*OrganisationsApi* | [**updateOrganisation**](docs/OrganisationsApi.md#updateorganisation) | **PUT** /organisations/{organisation_id} | 
*OrganisationsApi* | [**updateOrganisationQuota**](docs/OrganisationsApi.md#updateorganisationquota) | **PUT** /organisations/{organisation_id}/addquota | 
*SubmissionsApi* | [**createSubmission**](docs/SubmissionsApi.md#createsubmission) | **POST** /submissions/ | 
*SubmissionsApi* | [**deleteSubmission**](docs/SubmissionsApi.md#deletesubmission) | **DELETE** /submissions/{submission_id} | 
*SubmissionsApi* | [**getSubmission**](docs/SubmissionsApi.md#getsubmission) | **GET** /submissions/{submission_id} | 
*SubmissionsApi* | [**getSubmissionData**](docs/SubmissionsApi.md#getsubmissiondata) | **GET** /submissions/{submission_id}/data | 
*SubmissionsApi* | [**getSubmissionLogs**](docs/SubmissionsApi.md#getsubmissionlogs) | **GET** /submissions/{submission_id}/logs | 
*SubmissionsApi* | [**listSubmissions**](docs/SubmissionsApi.md#listsubmissions) | **GET** /submissions/ | 
*SubmissionsApi* | [**retrySubmissions**](docs/SubmissionsApi.md#retrysubmissions) | **POST** /submissions/retry | 
*UsersApi* | [**createUser**](docs/UsersApi.md#createuser) | **POST** /users/ | 
*UsersApi* | [**deleteUser**](docs/UsersApi.md#deleteuser) | **DELETE** /users/{user_id} | 
*UsersApi* | [**getUser**](docs/UsersApi.md#getuser) | **GET** /users/{user_id} | 
*UsersApi* | [**listUsers**](docs/UsersApi.md#listusers) | **GET** /users/ | 
*UsersApi* | [**updateUser**](docs/UsersApi.md#updateuser) | **PUT** /users/{user_id} | 
*UsersApi* | [**updateUserQuota**](docs/UsersApi.md#updateuserquota) | **PUT** /users/{user_id}/addquota | 


<a name="documentation-for-models"></a>
## Documentation for Models

 - [com.aicrowd.evaluations.models.AuthLogout](docs/AuthLogout.md)
 - [com.aicrowd.evaluations.models.AuthResponse](docs/AuthResponse.md)
 - [com.aicrowd.evaluations.models.Cluster](docs/Cluster.md)
 - [com.aicrowd.evaluations.models.Grader](docs/Grader.md)
 - [com.aicrowd.evaluations.models.GraderMeta](docs/GraderMeta.md)
 - [com.aicrowd.evaluations.models.Login](docs/Login.md)
 - [com.aicrowd.evaluations.models.Organisation](docs/Organisation.md)
 - [com.aicrowd.evaluations.models.OrganisationQuota](docs/OrganisationQuota.md)
 - [com.aicrowd.evaluations.models.SubmissionRetry](docs/SubmissionRetry.md)
 - [com.aicrowd.evaluations.models.SubmissionRetryInput](docs/SubmissionRetryInput.md)
 - [com.aicrowd.evaluations.models.Submissions](docs/Submissions.md)
 - [com.aicrowd.evaluations.models.User](docs/User.md)
 - [com.aicrowd.evaluations.models.UserQuota](docs/UserQuota.md)


<a name="documentation-for-authorization"></a>
## Documentation for Authorization

<a name="api_key"></a>
### api_key

- **Type**: API key
- **API key parameter name**: AUTHORIZATION
- **Location**: HTTP header

