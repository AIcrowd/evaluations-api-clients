mod auth_logout;
pub use self::auth_logout::AuthLogout;
mod auth_response;
pub use self::auth_response::AuthResponse;
mod cluster;
pub use self::cluster::Cluster;
mod grader;
pub use self::grader::Grader;
mod login;
pub use self::login::Login;
mod organisation;
pub use self::organisation::Organisation;
mod organisation_quota;
pub use self::organisation_quota::OrganisationQuota;
mod submissions;
pub use self::submissions::Submissions;
mod user;
pub use self::user::User;
mod user_quota;
pub use self::user_quota::UserQuota;

// TODO(farcaller): sort out files
pub struct File;
