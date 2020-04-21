use std::rc::Rc;

use hyper;
use super::configuration::Configuration;

pub struct APIClient<C: hyper::client::Connect> {
  configuration: Rc<Configuration<C>>,
  auth_api: Box<::apis::AuthApi>,
  clusters_api: Box<::apis::ClustersApi>,
  graders_api: Box<::apis::GradersApi>,
  organisations_api: Box<::apis::OrganisationsApi>,
  submissions_api: Box<::apis::SubmissionsApi>,
  users_api: Box<::apis::UsersApi>,
}

impl<C: hyper::client::Connect> APIClient<C> {
  pub fn new(configuration: Configuration<C>) -> APIClient<C> {
    let rc = Rc::new(configuration);

    APIClient {
      configuration: rc.clone(),
      auth_api: Box::new(::apis::AuthApiClient::new(rc.clone())),
      clusters_api: Box::new(::apis::ClustersApiClient::new(rc.clone())),
      graders_api: Box::new(::apis::GradersApiClient::new(rc.clone())),
      organisations_api: Box::new(::apis::OrganisationsApiClient::new(rc.clone())),
      submissions_api: Box::new(::apis::SubmissionsApiClient::new(rc.clone())),
      users_api: Box::new(::apis::UsersApiClient::new(rc.clone())),
    }
  }

  pub fn auth_api(&self) -> &::apis::AuthApi{
    self.auth_api.as_ref()
  }

  pub fn clusters_api(&self) -> &::apis::ClustersApi{
    self.clusters_api.as_ref()
  }

  pub fn graders_api(&self) -> &::apis::GradersApi{
    self.graders_api.as_ref()
  }

  pub fn organisations_api(&self) -> &::apis::OrganisationsApi{
    self.organisations_api.as_ref()
  }

  pub fn submissions_api(&self) -> &::apis::SubmissionsApi{
    self.submissions_api.as_ref()
  }

  pub fn users_api(&self) -> &::apis::UsersApi{
    self.users_api.as_ref()
  }


}
