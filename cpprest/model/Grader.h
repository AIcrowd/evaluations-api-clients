/**
 * AIcrowd Evaluations API
 * API to create and evaluate custom challenges on AIcrowd!
 *
 * OpenAPI spec version: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator 2.4.13.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

/*
 * Grader.h
 *
 * 
 */

#ifndef COM_AICROWD_EVALUATIONS_MODELS_Grader_H_
#define COM_AICROWD_EVALUATIONS_MODELS_Grader_H_


#include "../ModelBase.h"

#include <cpprest/details/basic_types.h>
#include "Object.h"

namespace com {
namespace aicrowd {
namespace evaluations {
namespace models {

/// <summary>
/// 
/// </summary>
class  Grader
    : public ModelBase
{
public:
    Grader();
    virtual ~Grader();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    void fromJson(web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    void fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// Grader members

    /// <summary>
    /// ID
    /// </summary>
    int32_t getId() const;
    bool idIsSet() const;
    void unsetId();
    void setId(int32_t value);
    /// <summary>
    /// Creation time
    /// </summary>
    utility::datetime getCreated() const;
    bool createdIsSet() const;
    void unsetCreated();
    void setCreated(utility::datetime value);
    /// <summary>
    /// Last updation time
    /// </summary>
    utility::datetime getUpdated() const;
    bool updatedIsSet() const;
    void unsetUpdated();
    void setUpdated(utility::datetime value);
    /// <summary>
    /// Dataset metadata
    /// </summary>
    std::shared_ptr<Object> getDataset() const;
    bool datasetIsSet() const;
    void unsetDataset();
    void setDataset(std::shared_ptr<Object> value);
    /// <summary>
    /// Cluster to run the grader on
    /// </summary>
    int32_t getClusterId() const;
    bool clusterIdIsSet() const;
    void unsetCluster_id();
    void setClusterId(int32_t value);
    /// <summary>
    /// Description of the grader
    /// </summary>
    utility::string_t getDescription() const;
    bool descriptionIsSet() const;
    void unsetDescription();
    void setDescription(utility::string_t value);
    /// <summary>
    /// Argo workflow template spec
    /// </summary>
    std::shared_ptr<Object> getWorkflowSpec() const;
    bool workflowSpecIsSet() const;
    void unsetWorkflow_spec();
    void setWorkflowSpec(std::shared_ptr<Object> value);
    /// <summary>
    /// Git URL of the repository containing the code that will be used for the evaluation
    /// </summary>
    utility::string_t getEvaluatorRepo() const;
        void setEvaluatorRepo(utility::string_t value);
    /// <summary>
    /// Git branch/tag that should be used with the evaluator repository.
    /// </summary>
    utility::string_t getEvaluatorRepoTag() const;
    bool evaluatorRepoTagIsSet() const;
    void unsetEvaluator_repo_tag();
    void setEvaluatorRepoTag(utility::string_t value);
    /// <summary>
    /// Name of the grader
    /// </summary>
    utility::string_t getName() const;
    bool nameIsSet() const;
    void unsetName();
    void setName(utility::string_t value);
    /// <summary>
    /// Notifications available for the grader.
    /// </summary>
    utility::string_t getNotifications() const;
    bool notificationsIsSet() const;
    void unsetNotifications();
    void setNotifications(utility::string_t value);
    /// <summary>
    /// Logs from argo workflow
    /// </summary>
    std::shared_ptr<Object> getLogs() const;
    bool logsIsSet() const;
    void unsetLogs();
    void setLogs(std::shared_ptr<Object> value);
    /// <summary>
    /// Additional meta data of the grader
    /// </summary>
    std::shared_ptr<Object> getMeta() const;
    bool metaIsSet() const;
    void unsetMeta();
    void setMeta(std::shared_ptr<Object> value);
    /// <summary>
    /// Status of the grader - True if it ready, False otherwise
    /// </summary>
    utility::string_t getStatus() const;
    bool statusIsSet() const;
    void unsetStatus();
    void setStatus(utility::string_t value);
    /// <summary>
    /// List of key:value pair of secrets that will be replace &#x60;{key}&#x60; in aicrowd.yaml
    /// </summary>
    std::shared_ptr<Object> getSecrets() const;
    bool secretsIsSet() const;
    void unsetSecrets();
    void setSecrets(std::shared_ptr<Object> value);
    /// <summary>
    /// Type of submissions allowed on the grader
    /// </summary>
    std::shared_ptr<Object> getSubmissionTypes() const;
    bool submissionTypesIsSet() const;
    void unsetSubmission_types();
    void setSubmissionTypes(std::shared_ptr<Object> value);
    /// <summary>
    /// User ID
    /// </summary>
    int32_t getUserId() const;
    bool userIdIsSet() const;
    void unsetUser_id();
    void setUserId(int32_t value);
    /// <summary>
    /// Organisation ID
    /// </summary>
    int32_t getOrganisationId() const;
    bool organisationIdIsSet() const;
    void unsetOrganisation_id();
    void setOrganisationId(int32_t value);

protected:
    int32_t m_Id;
    bool m_IdIsSet;
    utility::datetime m_Created;
    bool m_CreatedIsSet;
    utility::datetime m_Updated;
    bool m_UpdatedIsSet;
    std::shared_ptr<Object> m_Dataset;
    bool m_DatasetIsSet;
    int32_t m_Cluster_id;
    bool m_Cluster_idIsSet;
    utility::string_t m_Description;
    bool m_DescriptionIsSet;
    std::shared_ptr<Object> m_Workflow_spec;
    bool m_Workflow_specIsSet;
    utility::string_t m_Evaluator_repo;
        utility::string_t m_Evaluator_repo_tag;
    bool m_Evaluator_repo_tagIsSet;
    utility::string_t m_Name;
    bool m_NameIsSet;
    utility::string_t m_Notifications;
    bool m_NotificationsIsSet;
    std::shared_ptr<Object> m_Logs;
    bool m_LogsIsSet;
    std::shared_ptr<Object> m_Meta;
    bool m_MetaIsSet;
    utility::string_t m_Status;
    bool m_StatusIsSet;
    std::shared_ptr<Object> m_Secrets;
    bool m_SecretsIsSet;
    std::shared_ptr<Object> m_Submission_types;
    bool m_Submission_typesIsSet;
    int32_t m_User_id;
    bool m_User_idIsSet;
    int32_t m_Organisation_id;
    bool m_Organisation_idIsSet;
};

}
}
}
}

#endif /* COM_AICROWD_EVALUATIONS_MODELS_Grader_H_ */
