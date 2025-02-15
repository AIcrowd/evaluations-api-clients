/**
 * AIcrowd Evaluations API
 * API to create and evaluate custom challenges on AIcrowd!
 *
 * OpenAPI spec version: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator 2.4.27.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */



#include "SubmissionRetry.h"

namespace com {
namespace aicrowd {
namespace evaluations {
namespace models {

SubmissionRetry::SubmissionRetry()
{
    m_QueuedIsSet = false;
    m_FailedIsSet = false;
}

SubmissionRetry::~SubmissionRetry()
{
}

void SubmissionRetry::validate()
{
    // TODO: implement validation
}

web::json::value SubmissionRetry::toJson() const
{
    web::json::value val = web::json::value::object();

    if(m_QueuedIsSet)
    {
        val[utility::conversions::to_string_t("queued")] = ModelBase::toJson(m_Queued);
    }
    {
        std::vector<web::json::value> jsonArray;
        for( auto& item : m_Failed )
        {
            jsonArray.push_back(ModelBase::toJson(item));
        }
        if(jsonArray.size() > 0)
        {
            val[utility::conversions::to_string_t("failed")] = web::json::value::array(jsonArray);
        }
    }

    return val;
}

void SubmissionRetry::fromJson(web::json::value& val)
{
    if(val.has_field(utility::conversions::to_string_t("queued")))
    {
        web::json::value& fieldValue = val[utility::conversions::to_string_t("queued")];
        if(!fieldValue.is_null())
        {
            std::shared_ptr<Object> newItem(nullptr);
            newItem->fromJson(fieldValue);
            setQueued( newItem );
        }
    }
    {
        m_Failed.clear();
        std::vector<web::json::value> jsonArray;
        if(val.has_field(utility::conversions::to_string_t("failed")))
        {
        for( auto& item : val[utility::conversions::to_string_t("failed")].as_array() )
        {
            m_Failed.push_back(ModelBase::int32_tFromJson(item));
        }
        }
    }
}

void SubmissionRetry::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    if(m_QueuedIsSet)
    {
        if (m_Queued.get())
        {
            m_Queued->toMultipart(multipart, utility::conversions::to_string_t("queued."));
        }
        
    }
    {
        std::vector<web::json::value> jsonArray;
        for( auto& item : m_Failed )
        {
            jsonArray.push_back(ModelBase::toJson(item));
        }
        
        if(jsonArray.size() > 0)
        {
            multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("failed"), web::json::value::array(jsonArray), utility::conversions::to_string_t("application/json")));
        }
    }
}

void SubmissionRetry::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    if(multipart->hasContent(utility::conversions::to_string_t("queued")))
    {
        if(multipart->hasContent(utility::conversions::to_string_t("queued")))
        {
            std::shared_ptr<Object> newItem(nullptr);
            newItem->fromMultiPart(multipart, utility::conversions::to_string_t("queued."));
            setQueued( newItem );
        }
    }
    {
        m_Failed.clear();
        if(multipart->hasContent(utility::conversions::to_string_t("failed")))
        {

        web::json::value jsonArray = web::json::value::parse(ModelBase::stringFromHttpContent(multipart->getContent(utility::conversions::to_string_t("failed"))));
        for( auto& item : jsonArray.as_array() )
        {
            m_Failed.push_back(ModelBase::int32_tFromJson(item));
        }
        }
    }
}

std::shared_ptr<Object> SubmissionRetry::getQueued() const
{
    return m_Queued;
}


void SubmissionRetry::setQueued(std::shared_ptr<Object> value)
{
    m_Queued = value;
    m_QueuedIsSet = true;
}
bool SubmissionRetry::queuedIsSet() const
{
    return m_QueuedIsSet;
}

void SubmissionRetry::unsetQueued()
{
    m_QueuedIsSet = false;
}

std::vector<int32_t>& SubmissionRetry::getFailed()
{
    return m_Failed;
}

void SubmissionRetry::setFailed(std::vector<int32_t> value)
{
    m_Failed = value;
    m_FailedIsSet = true;
}
bool SubmissionRetry::failedIsSet() const
{
    return m_FailedIsSet;
}

void SubmissionRetry::unsetFailed()
{
    m_FailedIsSet = false;
}

}
}
}
}

