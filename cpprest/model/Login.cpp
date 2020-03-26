/**
 * Evaluations API
 * API to create and evaluate custom challenges
 *
 * OpenAPI spec version: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator 2.4.12.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */



#include "Login.h"

namespace com {
namespace aicrowd {
namespace evaluations {
namespace models {

Login::Login()
{
    m_Email = utility::conversions::to_string_t("");
    m_Password = utility::conversions::to_string_t("");
}

Login::~Login()
{
}

void Login::validate()
{
    // TODO: implement validation
}

web::json::value Login::toJson() const
{
    web::json::value val = web::json::value::object();

    val[utility::conversions::to_string_t("email")] = ModelBase::toJson(m_Email);
    val[utility::conversions::to_string_t("password")] = ModelBase::toJson(m_Password);

    return val;
}

void Login::fromJson(web::json::value& val)
{
    setEmail(ModelBase::stringFromJson(val[utility::conversions::to_string_t("email")]));
    setPassword(ModelBase::stringFromJson(val[utility::conversions::to_string_t("password")]));
}

void Login::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("email"), m_Email));
    multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("password"), m_Password));
}

void Login::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    setEmail(ModelBase::stringFromHttpContent(multipart->getContent(utility::conversions::to_string_t("email"))));
    setPassword(ModelBase::stringFromHttpContent(multipart->getContent(utility::conversions::to_string_t("password"))));
}

utility::string_t Login::getEmail() const
{
    return m_Email;
}


void Login::setEmail(utility::string_t value)
{
    m_Email = value;
    
}
utility::string_t Login::getPassword() const
{
    return m_Password;
}


void Login::setPassword(utility::string_t value)
{
    m_Password = value;
    
}
}
}
}
}

