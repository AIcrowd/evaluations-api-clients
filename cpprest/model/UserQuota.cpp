/**
 * AIcrowd Evaluations API
 * API to create and evaluate custom challenges on AIcrowd!
 *
 * OpenAPI spec version: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator 2.4.24.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */



#include "UserQuota.h"

namespace com {
namespace aicrowd {
namespace evaluations {
namespace models {

UserQuota::UserQuota()
{
    m_Quota = 0;
}

UserQuota::~UserQuota()
{
}

void UserQuota::validate()
{
    // TODO: implement validation
}

web::json::value UserQuota::toJson() const
{
    web::json::value val = web::json::value::object();

    val[utility::conversions::to_string_t("quota")] = ModelBase::toJson(m_Quota);

    return val;
}

void UserQuota::fromJson(web::json::value& val)
{
    setQuota(ModelBase::int32_tFromJson(val[utility::conversions::to_string_t("quota")]));
}

void UserQuota::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("quota"), m_Quota));
}

void UserQuota::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    setQuota(ModelBase::int32_tFromHttpContent(multipart->getContent(utility::conversions::to_string_t("quota"))));
}

int32_t UserQuota::getQuota() const
{
    return m_Quota;
}


void UserQuota::setQuota(int32_t value)
{
    m_Quota = value;
    
}
}
}
}
}

