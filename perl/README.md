# NAME

AIcrowdEvaluations::Role - a Moose role for the AIcrowd Evaluations API

API to create and evaluate custom challenges on AIcrowd!

# VERSION

Automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 1.0.0
- Package version: 0.0.1
- Build package: io.swagger.codegen.languages.PerlClientCodegen

## A note on Moose

This role is the only component of the library that uses Moose. See
AIcrowdEvaluations::ApiFactory for non-Moosey usage.

# SYNOPSIS

The Perl Swagger Codegen project builds a library of Perl modules to interact with
a web service defined by a OpenAPI Specification. See below for how to build the
library.

This module provides an interface to the generated library. All the classes,
objects, and methods (well, not quite \*all\*, see below) are flattened into this
role.

        package MyApp;
        use Moose;
        with 'AIcrowdEvaluations::Role';

        package main;

        my $api = MyApp->new({ tokens => $tokens });

        my $pet = $api->get_pet_by_id(pet_id => $pet_id);


## Structure of the library

The library consists of a set of API classes, one for each endpoint. These APIs
implement the method calls available on each endpoint.

Additionally, there is a set of "object" classes, which represent the objects
returned by and sent to the methods on the endpoints.

An API factory class is provided, which builds instances of each endpoint API.

This Moose role flattens all the methods from the endpoint APIs onto the consuming
class. It also provides methods to retrieve the endpoint API objects, and the API
factory object, should you need it.

For documentation of all these methods, see AUTOMATIC DOCUMENTATION below.

## Configuring authentication

In the normal case, the OpenAPI Spec will describe what parameters are
required and where to put them. You just need to supply the tokens.

    my $tokens = {
        # basic
        username => $username,
        password => $password,

        # oauth
        access_token => $oauth_token,

        # keys
        $some_key => { token => $token,
                       prefix => $prefix,
                       in => $in,             # 'head||query',
                       },

        $another => { token => $token,
                      prefix => $prefix,
                      in => $in,              # 'head||query',
                      },
        ...,

        };

        my $api = MyApp->new({ tokens => $tokens });

Note these are all optional, as are `prefix` and `in`, and depend on the API
you are accessing. Usually `prefix` and `in` will be determined by the code generator from
the spec and you will not need to set them at run time. If not, `in` will
default to 'head' and `prefix` to the empty string.

The tokens will be placed in a L<AIcrowdEvaluations::Configuration> instance
as follows, but you don't need to know about this.

- `$cfg->{username}`

    String. The username for basic auth.

- `$cfg->{password}`

    String. The password for basic auth.

- `$cfg->{api_key}`

    Hashref. Keyed on the name of each key (there can be multiple tokens).

            $cfg->{api_key} = {
                    secretKey => 'aaaabbbbccccdddd',
                    anotherKey => '1111222233334444',
                    };

- `$cfg->{api_key_prefix}`

    Hashref. Keyed on the name of each key (there can be multiple tokens). Note not
    all api keys require a prefix.

            $cfg->{api_key_prefix} = {
                    secretKey => 'string',
                    anotherKey => 'same or some other string',
                    };

- `$cfg->{access_token}`

    String. The OAuth access token.

# METHODS

## `base_url`

The generated code has the `base_url` already set as a default value. This method
returns the current value of `base_url`.

## `api_factory`

Returns an API factory object. You probably won't need to call this directly.

        $self->api_factory('Pet'); # returns a AIcrowdEvaluations::PetApi instance

        $self->pet_api;            # the same

# MISSING METHODS

Most of the methods on the API are delegated to individual endpoint API objects
(e.g. Pet API, Store API, User API etc). Where different endpoint APIs use the
same method name (e.g. `new()`), these methods can't be delegated. So you need
to call `$api->pet_api->new()`.

In principle, every API is susceptible to the presence of a few, random, undelegatable
method names. In practice, because of the way method names are constructed, it's
unlikely in general that any methods will be undelegatable, except for:

        new()
        class_documentation()
        method_documentation()

To call these methods, you need to get a handle on the relevant object, either
by calling `$api->foo_api` or by retrieving an object, e.g.
`$api->get_pet_by_id(pet_id => $pet_id)`. They are class methods, so
you could also call them on class names.

# BUILDING YOUR LIBRARY

See the homepage `https://github.com/swagger-api/swagger-codegen` for full details.
But briefly, clone the git repository, build the codegen codebase, set up your build
config file, then run the API build script. You will need git, Java 7 or 8 and Apache
maven 3.0.3 or better already installed.

The config file should specify the project name for the generated library:

        {"moduleName":"WWW::MyProjectName"}

Your library files will be built under `WWW::MyProjectName`.

          $ git clone https://github.com/swagger-api/swagger-codegen.git
          $ cd swagger-codegen
          $ mvn package
          $ java -jar modules/swagger-codegen-cli/target/swagger-codegen-cli.jar generate \
    -i [URL or file path to JSON swagger API spec] \
    -l perl \
    -c /path/to/config/file.json \
    -o /path/to/output/folder

Bang, all done. Run the `autodoc` script in the `bin` directory to see the API
you just built.

# AUTOMATIC DOCUMENTATION

You can print out a summary of the generated API by running the included
`autodoc` script in the `bin` directory of your generated library. A few
output formats are supported:

          Usage: autodoc [OPTION]

    -w           wide format (default)
    -n           narrow format
    -p           POD format
    -H           HTML format
    -m           Markdown format
    -h           print this help message
    -c           your application class


The `-c` option allows you to load and inspect your own application. A dummy
namespace is used if you don't supply your own class.

# DOCUMENTATION FROM THE OpenAPI Spec

Additional documentation for each class and method may be provided by the Swagger
spec. If so, this is available via the `class_documentation()` and
`method_documentation()` methods on each generated object class, and the
`method_documentation()` method on the endpoint API classes:

        my $cmdoc = $api->pet_api->method_documentation->{$method_name};

        my $odoc = $api->get_pet_by_id->(pet_id => $pet_id)->class_documentation;
        my $omdoc = $api->get_pet_by_id->(pet_id => $pet_id)->method_documentation->{method_name};


Each of these calls returns a hashref with various useful pieces of information.

# LOAD THE MODULES

To load the API packages:
```perl
use AIcrowdEvaluations::AuthApi;
use AIcrowdEvaluations::ClustersApi;
use AIcrowdEvaluations::GradersApi;
use AIcrowdEvaluations::OrganisationsApi;
use AIcrowdEvaluations::SubmissionsApi;
use AIcrowdEvaluations::UsersApi;

```

To load the models:
```perl
use AIcrowdEvaluations::Object::AuthLogout;
use AIcrowdEvaluations::Object::AuthResponse;
use AIcrowdEvaluations::Object::Cluster;
use AIcrowdEvaluations::Object::Grader;
use AIcrowdEvaluations::Object::GraderLogs;
use AIcrowdEvaluations::Object::GraderMeta;
use AIcrowdEvaluations::Object::Login;
use AIcrowdEvaluations::Object::Organisation;
use AIcrowdEvaluations::Object::OrganisationQuota;
use AIcrowdEvaluations::Object::SubmissionLogs;
use AIcrowdEvaluations::Object::SubmissionRetry;
use AIcrowdEvaluations::Object::SubmissionRetryInput;
use AIcrowdEvaluations::Object::Submissions;
use AIcrowdEvaluations::Object::User;
use AIcrowdEvaluations::Object::UserQuota;

````

# GETTING STARTED
Put the Perl SDK under the 'lib' folder in your project directory, then run the following
```perl
#!/usr/bin/perl
use lib 'lib';
use strict;
use warnings;
# load the API package
use AIcrowdEvaluations::AuthApi;
use AIcrowdEvaluations::ClustersApi;
use AIcrowdEvaluations::GradersApi;
use AIcrowdEvaluations::OrganisationsApi;
use AIcrowdEvaluations::SubmissionsApi;
use AIcrowdEvaluations::UsersApi;

# load the models
use AIcrowdEvaluations::Object::AuthLogout;
use AIcrowdEvaluations::Object::AuthResponse;
use AIcrowdEvaluations::Object::Cluster;
use AIcrowdEvaluations::Object::Grader;
use AIcrowdEvaluations::Object::GraderLogs;
use AIcrowdEvaluations::Object::GraderMeta;
use AIcrowdEvaluations::Object::Login;
use AIcrowdEvaluations::Object::Organisation;
use AIcrowdEvaluations::Object::OrganisationQuota;
use AIcrowdEvaluations::Object::SubmissionLogs;
use AIcrowdEvaluations::Object::SubmissionRetry;
use AIcrowdEvaluations::Object::SubmissionRetryInput;
use AIcrowdEvaluations::Object::Submissions;
use AIcrowdEvaluations::Object::User;
use AIcrowdEvaluations::Object::UserQuota;

# for displaying the API response data
use Data::Dumper;
use AIcrowdEvaluations::;

my $api_instance = AIcrowdEvaluations::->new(
);

my $payload = AIcrowdEvaluations::Object::Login->new(); # Login | 
my $x_fields = 'x_fields_example'; # string | An optional fields mask

eval {
    my $result = $api_instance->login(payload => $payload, x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthApi->login: $@\n";
}

```

# DOCUMENTATION FOR API ENDPOINTS

All URIs are relative to *https://localhost/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AuthApi* | [**login**](docs/AuthApi.md#login) | **POST** /auth/login | 
*AuthApi* | [**logout**](docs/AuthApi.md#logout) | **POST** /auth/logout | 
*ClustersApi* | [**create_cluster**](docs/ClustersApi.md#create_cluster) | **POST** /clusters/ | 
*ClustersApi* | [**delete_cluster**](docs/ClustersApi.md#delete_cluster) | **DELETE** /clusters/{cluster_id} | 
*ClustersApi* | [**get_cluster**](docs/ClustersApi.md#get_cluster) | **GET** /clusters/{cluster_id} | 
*ClustersApi* | [**list_clusters**](docs/ClustersApi.md#list_clusters) | **GET** /clusters/ | 
*GradersApi* | [**archive_grader**](docs/GradersApi.md#archive_grader) | **POST** /graders/{grader_id}/archive | 
*GradersApi* | [**create_grader**](docs/GradersApi.md#create_grader) | **POST** /graders/ | 
*GradersApi* | [**delete_grader**](docs/GradersApi.md#delete_grader) | **DELETE** /graders/{grader_id} | 
*GradersApi* | [**download_grader_logs**](docs/GradersApi.md#download_grader_logs) | **GET** /graders/{grader_id}/logs/download | 
*GradersApi* | [**get_grader**](docs/GradersApi.md#get_grader) | **GET** /graders/{grader_id} | 
*GradersApi* | [**get_grader_logs**](docs/GradersApi.md#get_grader_logs) | **GET** /graders/{grader_id}/logs | 
*GradersApi* | [**list_graders**](docs/GradersApi.md#list_graders) | **GET** /graders/ | 
*GradersApi* | [**unarchive_grader**](docs/GradersApi.md#unarchive_grader) | **POST** /graders/{grader_id}/unarchive | 
*GradersApi* | [**update_grader**](docs/GradersApi.md#update_grader) | **PATCH** /graders/{grader_id} | 
*OrganisationsApi* | [**create_organisation**](docs/OrganisationsApi.md#create_organisation) | **POST** /organisations/ | 
*OrganisationsApi* | [**delete_organisation**](docs/OrganisationsApi.md#delete_organisation) | **DELETE** /organisations/{organisation_id} | 
*OrganisationsApi* | [**get_organisation**](docs/OrganisationsApi.md#get_organisation) | **GET** /organisations/{organisation_id} | 
*OrganisationsApi* | [**list_organisations**](docs/OrganisationsApi.md#list_organisations) | **GET** /organisations/ | 
*OrganisationsApi* | [**update_organisation**](docs/OrganisationsApi.md#update_organisation) | **PUT** /organisations/{organisation_id} | 
*OrganisationsApi* | [**update_organisation_quota**](docs/OrganisationsApi.md#update_organisation_quota) | **PUT** /organisations/{organisation_id}/addquota | 
*SubmissionsApi* | [**create_submission**](docs/SubmissionsApi.md#create_submission) | **POST** /submissions/ | 
*SubmissionsApi* | [**delete_submission**](docs/SubmissionsApi.md#delete_submission) | **DELETE** /submissions/{submission_id} | 
*SubmissionsApi* | [**download_submission_logs**](docs/SubmissionsApi.md#download_submission_logs) | **GET** /submissions/{submission_id}/logs/download | 
*SubmissionsApi* | [**get_submission**](docs/SubmissionsApi.md#get_submission) | **GET** /submissions/{submission_id} | 
*SubmissionsApi* | [**get_submission_data**](docs/SubmissionsApi.md#get_submission_data) | **GET** /submissions/{submission_id}/data | 
*SubmissionsApi* | [**get_submission_logs**](docs/SubmissionsApi.md#get_submission_logs) | **GET** /submissions/{submission_id}/logs | 
*SubmissionsApi* | [**list_submissions**](docs/SubmissionsApi.md#list_submissions) | **GET** /submissions/ | 
*SubmissionsApi* | [**retry_submissions**](docs/SubmissionsApi.md#retry_submissions) | **POST** /submissions/retry | 
*UsersApi* | [**create_user**](docs/UsersApi.md#create_user) | **POST** /users/ | 
*UsersApi* | [**delete_user**](docs/UsersApi.md#delete_user) | **DELETE** /users/{user_id} | 
*UsersApi* | [**get_user**](docs/UsersApi.md#get_user) | **GET** /users/{user_id} | 
*UsersApi* | [**list_users**](docs/UsersApi.md#list_users) | **GET** /users/ | 
*UsersApi* | [**update_user**](docs/UsersApi.md#update_user) | **PUT** /users/{user_id} | 
*UsersApi* | [**update_user_quota**](docs/UsersApi.md#update_user_quota) | **PUT** /users/{user_id}/addquota | 


# DOCUMENTATION FOR MODELS
 - [AIcrowdEvaluations::Object::AuthLogout](docs/AuthLogout.md)
 - [AIcrowdEvaluations::Object::AuthResponse](docs/AuthResponse.md)
 - [AIcrowdEvaluations::Object::Cluster](docs/Cluster.md)
 - [AIcrowdEvaluations::Object::Grader](docs/Grader.md)
 - [AIcrowdEvaluations::Object::GraderLogs](docs/GraderLogs.md)
 - [AIcrowdEvaluations::Object::GraderMeta](docs/GraderMeta.md)
 - [AIcrowdEvaluations::Object::Login](docs/Login.md)
 - [AIcrowdEvaluations::Object::Organisation](docs/Organisation.md)
 - [AIcrowdEvaluations::Object::OrganisationQuota](docs/OrganisationQuota.md)
 - [AIcrowdEvaluations::Object::SubmissionLogs](docs/SubmissionLogs.md)
 - [AIcrowdEvaluations::Object::SubmissionRetry](docs/SubmissionRetry.md)
 - [AIcrowdEvaluations::Object::SubmissionRetryInput](docs/SubmissionRetryInput.md)
 - [AIcrowdEvaluations::Object::Submissions](docs/Submissions.md)
 - [AIcrowdEvaluations::Object::User](docs/User.md)
 - [AIcrowdEvaluations::Object::UserQuota](docs/UserQuota.md)


# DOCUMENTATION FOR AUTHORIZATION

## api_key

- **Type**: API key
- **API key parameter name**: AUTHORIZATION
- **Location**: HTTP header

