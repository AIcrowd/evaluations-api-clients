/**
 * AIcrowd Evaluations API
 * API to create and evaluate custom challenges on AIcrowd!
 *
 * OpenAPI spec version: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator 2.4.21.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */



#include "AuthResponse.h"

namespace com {
namespace aicrowd {
namespace evaluations {
namespace models {

AuthResponse::AuthResponse()
{
    m_Authorization = utility::conversions::to_string_t("");
    m_AuthorizationIsSet = false;
}

AuthResponse::~AuthResponse()
{
}

void AuthResponse::validate()
{
    // TODO: implement validation
}

web::json::value AuthResponse::toJson() const
{
    web::json::value val = web::json::value::object();

    if(m_AuthorizationIsSet)
    {
        val[utility::conversions::to_string_t("Authorization")] = ModelBase::toJson(m_Authorization);
    }

    return val;
}

void AuthResponse::fromJson(web::json::value& val)
{
    if(val.has_field(utility::conversions::to_string_t("Authorization")))
    {
        web::json::value& fieldValue = val[utility::conversions::to_string_t("Authorization")];
        if(!fieldValue.is_null())
        {
            setAuthorization(ModelBase::stringFromJson(fieldValue));
        }
    }
}

void AuthResponse::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    if(m_AuthorizationIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("Authorization"), m_Authorization));
        
    }
}

void AuthResponse::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    if(multipart->hasContent(utility::conversions::to_string_t("Authorization")))
    {
        setAuthorization(ModelBase::stringFromHttpContent(multipart->getContent(utility::conversions::to_string_t("Authorization"))));
    }
}

utility::string_t AuthResponse::getAuthorization() const
{
    return m_Authorization;
}


void AuthResponse::setAuthorization(utility::string_t value)
{
    m_Authorization = value;
    m_AuthorizationIsSet = true;
}
bool AuthResponse::authorizationIsSet() const
{
    return m_AuthorizationIsSet;
}

void AuthResponse::unsetAuthorization()
{
    m_AuthorizationIsSet = false;
}

}
}
}
}

