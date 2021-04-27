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



#include "AuthLogout.h"

namespace com {
namespace aicrowd {
namespace evaluations {
namespace models {

AuthLogout::AuthLogout()
{
    m_Message = utility::conversions::to_string_t("");
    m_MessageIsSet = false;
}

AuthLogout::~AuthLogout()
{
}

void AuthLogout::validate()
{
    // TODO: implement validation
}

web::json::value AuthLogout::toJson() const
{
    web::json::value val = web::json::value::object();

    if(m_MessageIsSet)
    {
        val[utility::conversions::to_string_t("message")] = ModelBase::toJson(m_Message);
    }

    return val;
}

void AuthLogout::fromJson(web::json::value& val)
{
    if(val.has_field(utility::conversions::to_string_t("message")))
    {
        web::json::value& fieldValue = val[utility::conversions::to_string_t("message")];
        if(!fieldValue.is_null())
        {
            setMessage(ModelBase::stringFromJson(fieldValue));
        }
    }
}

void AuthLogout::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    if(m_MessageIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("message"), m_Message));
        
    }
}

void AuthLogout::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    if(multipart->hasContent(utility::conversions::to_string_t("message")))
    {
        setMessage(ModelBase::stringFromHttpContent(multipart->getContent(utility::conversions::to_string_t("message"))));
    }
}

utility::string_t AuthLogout::getMessage() const
{
    return m_Message;
}


void AuthLogout::setMessage(utility::string_t value)
{
    m_Message = value;
    m_MessageIsSet = true;
}
bool AuthLogout::messageIsSet() const
{
    return m_MessageIsSet;
}

void AuthLogout::unsetMessage()
{
    m_MessageIsSet = false;
}

}
}
}
}

