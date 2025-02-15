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



#include "SubmissionLogs.h"

namespace com {
namespace aicrowd {
namespace evaluations {
namespace models {

SubmissionLogs::SubmissionLogs()
{
    m_Status = utility::conversions::to_string_t("");
    m_StatusIsSet = false;
    m_DataIsSet = false;
}

SubmissionLogs::~SubmissionLogs()
{
}

void SubmissionLogs::validate()
{
    // TODO: implement validation
}

web::json::value SubmissionLogs::toJson() const
{
    web::json::value val = web::json::value::object();

    if(m_StatusIsSet)
    {
        val[utility::conversions::to_string_t("status")] = ModelBase::toJson(m_Status);
    }
    if(m_DataIsSet)
    {
        val[utility::conversions::to_string_t("data")] = ModelBase::toJson(m_Data);
    }

    return val;
}

void SubmissionLogs::fromJson(web::json::value& val)
{
    if(val.has_field(utility::conversions::to_string_t("status")))
    {
        web::json::value& fieldValue = val[utility::conversions::to_string_t("status")];
        if(!fieldValue.is_null())
        {
            setStatus(ModelBase::stringFromJson(fieldValue));
        }
    }
    if(val.has_field(utility::conversions::to_string_t("data")))
    {
        web::json::value& fieldValue = val[utility::conversions::to_string_t("data")];
        if(!fieldValue.is_null())
        {
            std::shared_ptr<Object> newItem(nullptr);
            newItem->fromJson(fieldValue);
            setData( newItem );
        }
    }
}

void SubmissionLogs::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    if(m_StatusIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("status"), m_Status));
        
    }
    if(m_DataIsSet)
    {
        if (m_Data.get())
        {
            m_Data->toMultipart(multipart, utility::conversions::to_string_t("data."));
        }
        
    }
}

void SubmissionLogs::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    if(multipart->hasContent(utility::conversions::to_string_t("status")))
    {
        setStatus(ModelBase::stringFromHttpContent(multipart->getContent(utility::conversions::to_string_t("status"))));
    }
    if(multipart->hasContent(utility::conversions::to_string_t("data")))
    {
        if(multipart->hasContent(utility::conversions::to_string_t("data")))
        {
            std::shared_ptr<Object> newItem(nullptr);
            newItem->fromMultiPart(multipart, utility::conversions::to_string_t("data."));
            setData( newItem );
        }
    }
}

utility::string_t SubmissionLogs::getStatus() const
{
    return m_Status;
}


void SubmissionLogs::setStatus(utility::string_t value)
{
    m_Status = value;
    m_StatusIsSet = true;
}
bool SubmissionLogs::statusIsSet() const
{
    return m_StatusIsSet;
}

void SubmissionLogs::unsetStatus()
{
    m_StatusIsSet = false;
}

std::shared_ptr<Object> SubmissionLogs::getData() const
{
    return m_Data;
}


void SubmissionLogs::setData(std::shared_ptr<Object> value)
{
    m_Data = value;
    m_DataIsSet = true;
}
bool SubmissionLogs::dataIsSet() const
{
    return m_DataIsSet;
}

void SubmissionLogs::unsetData()
{
    m_DataIsSet = false;
}

}
}
}
}

