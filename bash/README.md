# Evaluations API Bash client

## Overview
This is a Bash client script for accessing Evaluations API service.

The script uses cURL underneath for making all REST calls.

## Usage

```shell
# Make sure the script has executable rights
$ chmod u+x aicrowd-evaluations

# Print the list of operations available on the service
$ ./aicrowd-evaluations -h

# Print the service description
$ ./aicrowd-evaluations --about

# Print detailed information about specific operation
$ ./aicrowd-evaluations <operationId> -h

# Make GET request
./aicrowd-evaluations --host http://<hostname>:<port> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make GET request using arbitrary curl options (must be passed before <operationId>) to an SSL service using username:password
aicrowd-evaluations -k -sS --tlsv1.2 --host https://<hostname> -u <user>:<password> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make POST request
$ echo '<body_content>' | aicrowd-evaluations --host <hostname> --content-type json <operationId> -

# Make POST request with simple JSON content, e.g.:
# {
#   "key1": "value1",
#   "key2": "value2",
#   "key3": 23
# }
$ echo '<body_content>' | aicrowd-evaluations --host <hostname> --content-type json <operationId> key1==value1 key2=value2 key3:=23 -

# Preview the cURL command without actually executing it
$ aicrowd-evaluations --host http://<hostname>:<port> --dry-run <operationid>

```

## Docker image
You can easily create a Docker image containing a preconfigured environment
for using the REST Bash client including working autocompletion and short
welcome message with basic instructions, using the generated Dockerfile:

```shell
docker build -t my-rest-client .
docker run -it my-rest-client
```

By default you will be logged into a Zsh environment which has much more
advanced auto completion, but you can switch to Bash, where basic autocompletion
is also available.

## Shell completion

### Bash
The generated bash-completion script can be either directly loaded to the current Bash session using:

```shell
source aicrowd-evaluations.bash-completion
```

Alternatively, the script can be copied to the `/etc/bash-completion.d` (or on OSX with Homebrew to `/usr/local/etc/bash-completion.d`):

```shell
sudo cp aicrowd-evaluations.bash-completion /etc/bash-completion.d/aicrowd-evaluations
```

#### OS X
On OSX you might need to install bash-completion using Homebrew:
```shell
brew install bash-completion
```
and add the following to the `~/.bashrc`:

```shell
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
```

### Zsh
In Zsh, the generated `_aicrowd-evaluations` Zsh completion file must be copied to one of the folders under `$FPATH` variable.


## Documentation for API Endpoints

All URIs are relative to */v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ArgoApi* | [**postGenericFeedbackContract**](docs/ArgoApi.md#postgenericfeedbackcontract) | **POST** /argo/{model_name}/{object_id} | 
*ArgoApi* | [**postGraderFeedbackDao**](docs/ArgoApi.md#postgraderfeedbackdao) | **POST** /argo/graders/{grader_id} | 
*ArgoApi* | [**postSubmissionFeedbackDao**](docs/ArgoApi.md#postsubmissionfeedbackdao) | **POST** /argo/submissions/{submission_id} | 
*AuthApi* | [**postLogoutApi**](docs/AuthApi.md#postlogoutapi) | **POST** /auth/logout | 
*AuthApi* | [**postUserLogin**](docs/AuthApi.md#postuserlogin) | **POST** /auth/login | 
*ClustersApi* | [**deleteClusterDao**](docs/ClustersApi.md#deleteclusterdao) | **DELETE** /clusters/{cluster_id} | 
*ClustersApi* | [**getClusterDao**](docs/ClustersApi.md#getclusterdao) | **GET** /clusters/{cluster_id} | 
*ClustersApi* | [**getClusterListDao**](docs/ClustersApi.md#getclusterlistdao) | **GET** /clusters/ | 
*ClustersApi* | [**postClusterListDao**](docs/ClustersApi.md#postclusterlistdao) | **POST** /clusters/ | 
*GradersApi* | [**deleteGraderDao**](docs/GradersApi.md#deletegraderdao) | **DELETE** /graders/{grader_id} | 
*GradersApi* | [**getGraderDao**](docs/GradersApi.md#getgraderdao) | **GET** /graders/{grader_id} | 
*GradersApi* | [**getGraderListDao**](docs/GradersApi.md#getgraderlistdao) | **GET** /graders/ | 
*GradersApi* | [**postGraderListDao**](docs/GradersApi.md#postgraderlistdao) | **POST** /graders/ | 
*OrganisationsApi* | [**deleteOrganisationDao**](docs/OrganisationsApi.md#deleteorganisationdao) | **DELETE** /organisations/{organisation_id} | 
*OrganisationsApi* | [**getOrganisationDao**](docs/OrganisationsApi.md#getorganisationdao) | **GET** /organisations/{organisation_id} | 
*OrganisationsApi* | [**getOrganisationListDao**](docs/OrganisationsApi.md#getorganisationlistdao) | **GET** /organisations/ | 
*OrganisationsApi* | [**postOrganisationListDao**](docs/OrganisationsApi.md#postorganisationlistdao) | **POST** /organisations/ | 
*OrganisationsApi* | [**putOrganisationDao**](docs/OrganisationsApi.md#putorganisationdao) | **PUT** /organisations/{organisation_id} | 
*OrganisationsApi* | [**putQuotaDao**](docs/OrganisationsApi.md#putquotadao) | **PUT** /organisations/addquota/{organisation_id} | 
*SubmissionsApi* | [**deleteSubmissionDao**](docs/SubmissionsApi.md#deletesubmissiondao) | **DELETE** /submissions/{submission_id} | 
*SubmissionsApi* | [**getSubmissionDao**](docs/SubmissionsApi.md#getsubmissiondao) | **GET** /submissions/{submission_id} | 
*SubmissionsApi* | [**getSubmissionDataDao**](docs/SubmissionsApi.md#getsubmissiondatadao) | **GET** /submissions/{submission_id}/data | 
*SubmissionsApi* | [**getSubmissionListDao**](docs/SubmissionsApi.md#getsubmissionlistdao) | **GET** /submissions/ | 
*SubmissionsApi* | [**postSubmissionListDao**](docs/SubmissionsApi.md#postsubmissionlistdao) | **POST** /submissions/ | 
*UsersApi* | [**deleteUserDao**](docs/UsersApi.md#deleteuserdao) | **DELETE** /users/{user_id} | 
*UsersApi* | [**getUserDao**](docs/UsersApi.md#getuserdao) | **GET** /users/{user_id} | 
*UsersApi* | [**getUserListDao**](docs/UsersApi.md#getuserlistdao) | **GET** /users/ | 
*UsersApi* | [**postUserListDao**](docs/UsersApi.md#postuserlistdao) | **POST** /users/ | 
*UsersApi* | [**putQuotaDao**](docs/UsersApi.md#putquotadao) | **PUT** /users/addquota/{user_id} | 
*UsersApi* | [**putUserDao**](docs/UsersApi.md#putuserdao) | **PUT** /users/{user_id} | 


## Documentation For Models

 - [AuthLogout](docs/AuthLogout.md)
 - [AuthResponse](docs/AuthResponse.md)
 - [Cluster](docs/Cluster.md)
 - [GenericFeedback](docs/GenericFeedback.md)
 - [Grader](docs/Grader.md)
 - [GraderFeedback](docs/GraderFeedback.md)
 - [Login](docs/Login.md)
 - [Organisation](docs/Organisation.md)
 - [OrganisationQuota](docs/OrganisationQuota.md)
 - [SubmissionFeedback](docs/SubmissionFeedback.md)
 - [Submissions](docs/Submissions.md)
 - [User](docs/User.md)
 - [UserQuota](docs/UserQuota.md)


## Documentation For Authorization


## api_key

- **Type**: API key
- **API key parameter name**: AUTHORIZATION
- **Location**: HTTP header

