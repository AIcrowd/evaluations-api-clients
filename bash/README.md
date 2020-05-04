# AIcrowd Evaluations API Bash client

## Overview
This is a Bash client script for accessing AIcrowd Evaluations API service.

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
*AuthApi* | [**login**](docs/AuthApi.md#login) | **POST** /auth/login | 
*AuthApi* | [**logout**](docs/AuthApi.md#logout) | **POST** /auth/logout | 
*ClustersApi* | [**createCluster**](docs/ClustersApi.md#createcluster) | **POST** /clusters/ | 
*ClustersApi* | [**deleteCluster**](docs/ClustersApi.md#deletecluster) | **DELETE** /clusters/{cluster_id} | 
*ClustersApi* | [**getCluster**](docs/ClustersApi.md#getcluster) | **GET** /clusters/{cluster_id} | 
*ClustersApi* | [**listClusters**](docs/ClustersApi.md#listclusters) | **GET** /clusters/ | 
*GradersApi* | [**createGrader**](docs/GradersApi.md#creategrader) | **POST** /graders/ | 
*GradersApi* | [**deleteGrader**](docs/GradersApi.md#deletegrader) | **DELETE** /graders/{grader_id} | 
*GradersApi* | [**getGrader**](docs/GradersApi.md#getgrader) | **GET** /graders/{grader_id} | 
*GradersApi* | [**getGraderLogs**](docs/GradersApi.md#getgraderlogs) | **GET** /graders/{grader_id}/logs | 
*GradersApi* | [**listGraders**](docs/GradersApi.md#listgraders) | **GET** /graders/ | 
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
*UsersApi* | [**createUser**](docs/UsersApi.md#createuser) | **POST** /users/ | 
*UsersApi* | [**deleteUser**](docs/UsersApi.md#deleteuser) | **DELETE** /users/{user_id} | 
*UsersApi* | [**getUser**](docs/UsersApi.md#getuser) | **GET** /users/{user_id} | 
*UsersApi* | [**listUsers**](docs/UsersApi.md#listusers) | **GET** /users/ | 
*UsersApi* | [**updateUser**](docs/UsersApi.md#updateuser) | **PUT** /users/{user_id} | 
*UsersApi* | [**updateUserQuota**](docs/UsersApi.md#updateuserquota) | **PUT** /users/{user_id}/addquota | 


## Documentation For Models

 - [AuthLogout](docs/AuthLogout.md)
 - [AuthResponse](docs/AuthResponse.md)
 - [Cluster](docs/Cluster.md)
 - [Grader](docs/Grader.md)
 - [GraderMeta](docs/GraderMeta.md)
 - [Login](docs/Login.md)
 - [Organisation](docs/Organisation.md)
 - [OrganisationQuota](docs/OrganisationQuota.md)
 - [Submissions](docs/Submissions.md)
 - [User](docs/User.md)
 - [UserQuota](docs/UserQuota.md)


## Documentation For Authorization


## api_key

- **Type**: API key
- **API key parameter name**: AUTHORIZATION
- **Location**: HTTP header

