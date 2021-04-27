/**
 * AIcrowd Evaluations API
 * API to create and evaluate custom challenges on AIcrowd!
 *
 * OpenAPI spec version: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator 2.4.19.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */



#include "User.h"

namespace com {
namespace aicrowd {
namespace evaluations {
namespace models {

User::User()
{
    m_Id = 0;
    m_IdIsSet = false;
    m_Email = utility::conversions::to_string_t("");
    m_Admin = false;
    m_AdminIsSet = false;
    m_Created_on = utility::datetime();
    m_Created_onIsSet = false;
    m_Password_hash = utility::conversions::to_string_t("");
    m_Password_hashIsSet = false;
    m_Total_quota = 0;
    m_Total_quotaIsSet = false;
    m_Quota = 0;
    m_QuotaIsSet = false;
    m_Organisation_id = 0;
    m_Password = utility::conversions::to_string_t("");
}

User::~User()
{
}

void User::validate()
{
    // TODO: implement validation
}

web::json::value User::toJson() const
{
    web::json::value val = web::json::value::object();

    if(m_IdIsSet)
    {
        val[utility::conversions::to_string_t("id")] = ModelBase::toJson(m_Id);
    }
    val[utility::conversions::to_string_t("email")] = ModelBase::toJson(m_Email);
    if(m_AdminIsSet)
    {
        val[utility::conversions::to_string_t("admin")] = ModelBase::toJson(m_Admin);
    }
    if(m_Created_onIsSet)
    {
        val[utility::conversions::to_string_t("created_on")] = ModelBase::toJson(m_Created_on);
    }
    if(m_Password_hashIsSet)
    {
        val[utility::conversions::to_string_t("password_hash")] = ModelBase::toJson(m_Password_hash);
    }
    if(m_Total_quotaIsSet)
    {
        val[utility::conversions::to_string_t("total_quota")] = ModelBase::toJson(m_Total_quota);
    }
    if(m_QuotaIsSet)
    {
        val[utility::conversions::to_string_t("quota")] = ModelBase::toJson(m_Quota);
    }
    val[utility::conversions::to_string_t("organisation_id")] = ModelBase::toJson(m_Organisation_id);
    val[utility::conversions::to_string_t("password")] = ModelBase::toJson(m_Password);

    return val;
}

void User::fromJson(web::json::value& val)
{
    if(val.has_field(utility::conversions::to_string_t("id")))
    {
        web::json::value& fieldValue = val[utility::conversions::to_string_t("id")];
        if(!fieldValue.is_null())
        {
            setId(ModelBase::int32_tFromJson(fieldValue));
        }
    }
    setEmail(ModelBase::stringFromJson(val[utility::conversions::to_string_t("email")]));
    if(val.has_field(utility::conversions::to_string_t("admin")))
    {
        web::json::value& fieldValue = val[utility::conversions::to_string_t("admin")];
        if(!fieldValue.is_null())
        {
            setAdmin(ModelBase::boolFromJson(fieldValue));
        }
    }
    if(val.has_field(utility::conversions::to_string_t("created_on")))
    {
        web::json::value& fieldValue = val[utility::conversions::to_string_t("created_on")];
        if(!fieldValue.is_null())
        {
            setCreatedOn(ModelBase::dateFromJson(fieldValue));
        }
    }
    if(val.has_field(utility::conversions::to_string_t("password_hash")))
    {
        web::json::value& fieldValue = val[utility::conversions::to_string_t("password_hash")];
        if(!fieldValue.is_null())
        {
            setPasswordHash(ModelBase::stringFromJson(fieldValue));
        }
    }
    if(val.has_field(utility::conversions::to_string_t("total_quota")))
    {
        web::json::value& fieldValue = val[utility::conversions::to_string_t("total_quota")];
        if(!fieldValue.is_null())
        {
            setTotalQuota(ModelBase::int32_tFromJson(fieldValue));
        }
    }
    if(val.has_field(utility::conversions::to_string_t("quota")))
    {
        web::json::value& fieldValue = val[utility::conversions::to_string_t("quota")];
        if(!fieldValue.is_null())
        {
            setQuota(ModelBase::int32_tFromJson(fieldValue));
        }
    }
    setOrganisationId(ModelBase::int32_tFromJson(val[utility::conversions::to_string_t("organisation_id")]));
    setPassword(ModelBase::stringFromJson(val[utility::conversions::to_string_t("password")]));
}

void User::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    if(m_IdIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("id"), m_Id));
    }
    multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("email"), m_Email));
    if(m_AdminIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("admin"), m_Admin));
    }
    if(m_Created_onIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("created_on"), m_Created_on));
        
    }
    if(m_Password_hashIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("password_hash"), m_Password_hash));
        
    }
    if(m_Total_quotaIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("total_quota"), m_Total_quota));
    }
    if(m_QuotaIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("quota"), m_Quota));
    }
    multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("organisation_id"), m_Organisation_id));
    multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("password"), m_Password));
}

void User::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    if(multipart->hasContent(utility::conversions::to_string_t("id")))
    {
        setId(ModelBase::int32_tFromHttpContent(multipart->getContent(utility::conversions::to_string_t("id"))));
    }
    setEmail(ModelBase::stringFromHttpContent(multipart->getContent(utility::conversions::to_string_t("email"))));
    if(multipart->hasContent(utility::conversions::to_string_t("admin")))
    {
        setAdmin(ModelBase::boolFromHttpContent(multipart->getContent(utility::conversions::to_string_t("admin"))));
    }
    if(multipart->hasContent(utility::conversions::to_string_t("created_on")))
    {
        setCreatedOn(ModelBase::dateFromHttpContent(multipart->getContent(utility::conversions::to_string_t("created_on"))));
    }
    if(multipart->hasContent(utility::conversions::to_string_t("password_hash")))
    {
        setPasswordHash(ModelBase::stringFromHttpContent(multipart->getContent(utility::conversions::to_string_t("password_hash"))));
    }
    if(multipart->hasContent(utility::conversions::to_string_t("total_quota")))
    {
        setTotalQuota(ModelBase::int32_tFromHttpContent(multipart->getContent(utility::conversions::to_string_t("total_quota"))));
    }
    if(multipart->hasContent(utility::conversions::to_string_t("quota")))
    {
        setQuota(ModelBase::int32_tFromHttpContent(multipart->getContent(utility::conversions::to_string_t("quota"))));
    }
    setOrganisationId(ModelBase::int32_tFromHttpContent(multipart->getContent(utility::conversions::to_string_t("organisation_id"))));
    setPassword(ModelBase::stringFromHttpContent(multipart->getContent(utility::conversions::to_string_t("password"))));
}

int32_t User::getId() const
{
    return m_Id;
}


void User::setId(int32_t value)
{
    m_Id = value;
    m_IdIsSet = true;
}
bool User::idIsSet() const
{
    return m_IdIsSet;
}

void User::unsetId()
{
    m_IdIsSet = false;
}

utility::string_t User::getEmail() const
{
    return m_Email;
}


void User::setEmail(utility::string_t value)
{
    m_Email = value;
    
}
bool User::isAdmin() const
{
    return m_Admin;
}


void User::setAdmin(bool value)
{
    m_Admin = value;
    m_AdminIsSet = true;
}
bool User::adminIsSet() const
{
    return m_AdminIsSet;
}

void User::unsetAdmin()
{
    m_AdminIsSet = false;
}

utility::datetime User::getCreatedOn() const
{
    return m_Created_on;
}


void User::setCreatedOn(utility::datetime value)
{
    m_Created_on = value;
    m_Created_onIsSet = true;
}
bool User::createdOnIsSet() const
{
    return m_Created_onIsSet;
}

void User::unsetCreated_on()
{
    m_Created_onIsSet = false;
}

utility::string_t User::getPasswordHash() const
{
    return m_Password_hash;
}


void User::setPasswordHash(utility::string_t value)
{
    m_Password_hash = value;
    m_Password_hashIsSet = true;
}
bool User::passwordHashIsSet() const
{
    return m_Password_hashIsSet;
}

void User::unsetPassword_hash()
{
    m_Password_hashIsSet = false;
}

int32_t User::getTotalQuota() const
{
    return m_Total_quota;
}


void User::setTotalQuota(int32_t value)
{
    m_Total_quota = value;
    m_Total_quotaIsSet = true;
}
bool User::totalQuotaIsSet() const
{
    return m_Total_quotaIsSet;
}

void User::unsetTotal_quota()
{
    m_Total_quotaIsSet = false;
}

int32_t User::getQuota() const
{
    return m_Quota;
}


void User::setQuota(int32_t value)
{
    m_Quota = value;
    m_QuotaIsSet = true;
}
bool User::quotaIsSet() const
{
    return m_QuotaIsSet;
}

void User::unsetQuota()
{
    m_QuotaIsSet = false;
}

int32_t User::getOrganisationId() const
{
    return m_Organisation_id;
}


void User::setOrganisationId(int32_t value)
{
    m_Organisation_id = value;
    
}
utility::string_t User::getPassword() const
{
    return m_Password;
}


void User::setPassword(utility::string_t value)
{
    m_Password = value;
    
}
}
}
}
}

