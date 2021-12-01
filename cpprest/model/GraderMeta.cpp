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



#include "GraderMeta.h"

namespace com {
namespace aicrowd {
namespace evaluations {
namespace models {

GraderMeta::GraderMeta()
{
    m_DatasetIsSet = false;
    m_NotificationsIsSet = false;
    m_Name = utility::conversions::to_string_t("");
    m_NameIsSet = false;
    m_Description = utility::conversions::to_string_t("");
    m_DescriptionIsSet = false;
    m_Cluster_id = 0;
    m_Cluster_idIsSet = false;
    m_Meta = utility::conversions::to_string_t("");
    m_MetaIsSet = false;
}

GraderMeta::~GraderMeta()
{
}

void GraderMeta::validate()
{
    // TODO: implement validation
}

web::json::value GraderMeta::toJson() const
{
    web::json::value val = web::json::value::object();

    if(m_DatasetIsSet)
    {
        val[utility::conversions::to_string_t("dataset")] = ModelBase::toJson(m_Dataset);
    }
    if(m_NotificationsIsSet)
    {
        val[utility::conversions::to_string_t("notifications")] = ModelBase::toJson(m_Notifications);
    }
    if(m_NameIsSet)
    {
        val[utility::conversions::to_string_t("name")] = ModelBase::toJson(m_Name);
    }
    if(m_DescriptionIsSet)
    {
        val[utility::conversions::to_string_t("description")] = ModelBase::toJson(m_Description);
    }
    if(m_Cluster_idIsSet)
    {
        val[utility::conversions::to_string_t("cluster_id")] = ModelBase::toJson(m_Cluster_id);
    }
    if(m_MetaIsSet)
    {
        val[utility::conversions::to_string_t("meta")] = ModelBase::toJson(m_Meta);
    }

    return val;
}

void GraderMeta::fromJson(web::json::value& val)
{
    if(val.has_field(utility::conversions::to_string_t("dataset")))
    {
        web::json::value& fieldValue = val[utility::conversions::to_string_t("dataset")];
        if(!fieldValue.is_null())
        {
            std::shared_ptr<Object> newItem(nullptr);
            newItem->fromJson(fieldValue);
            setDataset( newItem );
        }
    }
    if(val.has_field(utility::conversions::to_string_t("notifications")))
    {
        web::json::value& fieldValue = val[utility::conversions::to_string_t("notifications")];
        if(!fieldValue.is_null())
        {
            std::shared_ptr<Object> newItem(nullptr);
            newItem->fromJson(fieldValue);
            setNotifications( newItem );
        }
    }
    if(val.has_field(utility::conversions::to_string_t("name")))
    {
        web::json::value& fieldValue = val[utility::conversions::to_string_t("name")];
        if(!fieldValue.is_null())
        {
            setName(ModelBase::stringFromJson(fieldValue));
        }
    }
    if(val.has_field(utility::conversions::to_string_t("description")))
    {
        web::json::value& fieldValue = val[utility::conversions::to_string_t("description")];
        if(!fieldValue.is_null())
        {
            setDescription(ModelBase::stringFromJson(fieldValue));
        }
    }
    if(val.has_field(utility::conversions::to_string_t("cluster_id")))
    {
        web::json::value& fieldValue = val[utility::conversions::to_string_t("cluster_id")];
        if(!fieldValue.is_null())
        {
            setClusterId(ModelBase::int32_tFromJson(fieldValue));
        }
    }
    if(val.has_field(utility::conversions::to_string_t("meta")))
    {
        web::json::value& fieldValue = val[utility::conversions::to_string_t("meta")];
        if(!fieldValue.is_null())
        {
            setMeta(ModelBase::stringFromJson(fieldValue));
        }
    }
}

void GraderMeta::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    if(m_DatasetIsSet)
    {
        if (m_Dataset.get())
        {
            m_Dataset->toMultipart(multipart, utility::conversions::to_string_t("dataset."));
        }
        
    }
    if(m_NotificationsIsSet)
    {
        if (m_Notifications.get())
        {
            m_Notifications->toMultipart(multipart, utility::conversions::to_string_t("notifications."));
        }
        
    }
    if(m_NameIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("name"), m_Name));
        
    }
    if(m_DescriptionIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("description"), m_Description));
        
    }
    if(m_Cluster_idIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("cluster_id"), m_Cluster_id));
    }
    if(m_MetaIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("meta"), m_Meta));
        
    }
}

void GraderMeta::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    if(multipart->hasContent(utility::conversions::to_string_t("dataset")))
    {
        if(multipart->hasContent(utility::conversions::to_string_t("dataset")))
        {
            std::shared_ptr<Object> newItem(nullptr);
            newItem->fromMultiPart(multipart, utility::conversions::to_string_t("dataset."));
            setDataset( newItem );
        }
    }
    if(multipart->hasContent(utility::conversions::to_string_t("notifications")))
    {
        if(multipart->hasContent(utility::conversions::to_string_t("notifications")))
        {
            std::shared_ptr<Object> newItem(nullptr);
            newItem->fromMultiPart(multipart, utility::conversions::to_string_t("notifications."));
            setNotifications( newItem );
        }
    }
    if(multipart->hasContent(utility::conversions::to_string_t("name")))
    {
        setName(ModelBase::stringFromHttpContent(multipart->getContent(utility::conversions::to_string_t("name"))));
    }
    if(multipart->hasContent(utility::conversions::to_string_t("description")))
    {
        setDescription(ModelBase::stringFromHttpContent(multipart->getContent(utility::conversions::to_string_t("description"))));
    }
    if(multipart->hasContent(utility::conversions::to_string_t("cluster_id")))
    {
        setClusterId(ModelBase::int32_tFromHttpContent(multipart->getContent(utility::conversions::to_string_t("cluster_id"))));
    }
    if(multipart->hasContent(utility::conversions::to_string_t("meta")))
    {
        setMeta(ModelBase::stringFromHttpContent(multipart->getContent(utility::conversions::to_string_t("meta"))));
    }
}

std::shared_ptr<Object> GraderMeta::getDataset() const
{
    return m_Dataset;
}


void GraderMeta::setDataset(std::shared_ptr<Object> value)
{
    m_Dataset = value;
    m_DatasetIsSet = true;
}
bool GraderMeta::datasetIsSet() const
{
    return m_DatasetIsSet;
}

void GraderMeta::unsetDataset()
{
    m_DatasetIsSet = false;
}

std::shared_ptr<Object> GraderMeta::getNotifications() const
{
    return m_Notifications;
}


void GraderMeta::setNotifications(std::shared_ptr<Object> value)
{
    m_Notifications = value;
    m_NotificationsIsSet = true;
}
bool GraderMeta::notificationsIsSet() const
{
    return m_NotificationsIsSet;
}

void GraderMeta::unsetNotifications()
{
    m_NotificationsIsSet = false;
}

utility::string_t GraderMeta::getName() const
{
    return m_Name;
}


void GraderMeta::setName(utility::string_t value)
{
    m_Name = value;
    m_NameIsSet = true;
}
bool GraderMeta::nameIsSet() const
{
    return m_NameIsSet;
}

void GraderMeta::unsetName()
{
    m_NameIsSet = false;
}

utility::string_t GraderMeta::getDescription() const
{
    return m_Description;
}


void GraderMeta::setDescription(utility::string_t value)
{
    m_Description = value;
    m_DescriptionIsSet = true;
}
bool GraderMeta::descriptionIsSet() const
{
    return m_DescriptionIsSet;
}

void GraderMeta::unsetDescription()
{
    m_DescriptionIsSet = false;
}

int32_t GraderMeta::getClusterId() const
{
    return m_Cluster_id;
}


void GraderMeta::setClusterId(int32_t value)
{
    m_Cluster_id = value;
    m_Cluster_idIsSet = true;
}
bool GraderMeta::clusterIdIsSet() const
{
    return m_Cluster_idIsSet;
}

void GraderMeta::unsetCluster_id()
{
    m_Cluster_idIsSet = false;
}

utility::string_t GraderMeta::getMeta() const
{
    return m_Meta;
}


void GraderMeta::setMeta(utility::string_t value)
{
    m_Meta = value;
    m_MetaIsSet = true;
}
bool GraderMeta::metaIsSet() const
{
    return m_MetaIsSet;
}

void GraderMeta::unsetMeta()
{
    m_MetaIsSet = false;
}

}
}
}
}

