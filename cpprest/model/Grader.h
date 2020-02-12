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

/*
 * Grader.h
 *
 * 
 */

#ifndef IO_SWAGGER_CLIENT_MODEL_Grader_H_
#define IO_SWAGGER_CLIENT_MODEL_Grader_H_


#include "../ModelBase.h"

#include <cpprest/details/basic_types.h>
#include "Object.h"

namespace io {
namespace swagger {
namespace client {
namespace model {

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
    /// S3 link of the Dataset
    /// </summary>
    utility::string_t getDatasetUrl() const;
    bool datasetUrlIsSet() const;
    void unsetDataset_url();
    void setDatasetUrl(utility::string_t value);
    /// <summary>
    /// git/http
    /// </summary>
    utility::string_t getCodeAccessMode() const;
    bool codeAccessModeIsSet() const;
    void unsetCode_access_mode();
    void setCodeAccessMode(utility::string_t value);
    /// <summary>
    /// SSH private key if using git or HTTP Auth token if using HTTP to access the submission code
    /// </summary>
    utility::string_t getCodeAccessAuthKey() const;
    bool codeAccessAuthKeyIsSet() const;
    void unsetCode_access_auth_key();
    void setCodeAccessAuthKey(utility::string_t value);
    /// <summary>
    /// Cluster to run the grader on
    /// </summary>
    int32_t getClusterId() const;
    bool clusterIdIsSet() const;
    void unsetCluster_id();
    void setClusterId(int32_t value);
    /// <summary>
    /// Docker registry username
    /// </summary>
    utility::string_t getDockerUsername() const;
    bool dockerUsernameIsSet() const;
    void unsetDocker_username();
    void setDockerUsername(utility::string_t value);
    /// <summary>
    /// Docker registry password
    /// </summary>
    utility::string_t getDockerPassword() const;
    bool dockerPasswordIsSet() const;
    void unsetDocker_password();
    void setDockerPassword(utility::string_t value);
    /// <summary>
    /// Docker registry URL
    /// </summary>
    utility::string_t getDockerRegistry() const;
    bool dockerRegistryIsSet() const;
    void unsetDocker_registry();
    void setDockerRegistry(utility::string_t value);
    /// <summary>
    /// Argo workflow template spec
    /// </summary>
    std::shared_ptr<Object> getWorkflowSpec() const;
    bool workflowSpecIsSet() const;
    void unsetWorkflow_spec();
    void setWorkflowSpec(std::shared_ptr<Object> value);
    /// <summary>
    /// S3 link to the zip file containing the code that will be used for the evaluation
    /// </summary>
    utility::string_t getEvaluationCode() const;
    bool evaluationCodeIsSet() const;
    void unsetEvaluation_code();
    void setEvaluationCode(utility::string_t value);
    /// <summary>
    /// Size of the dataset partition to request. Please provide at least 2x of the size of the dataset.
    /// </summary>
    utility::string_t getStorageCapacity() const;
    bool storageCapacityIsSet() const;
    void unsetStorage_capacity();
    void setStorageCapacity(utility::string_t value);
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
    bool isStatus() const;
    bool statusIsSet() const;
    void unsetStatus();
    void setStatus(bool value);
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
    utility::string_t m_Dataset_url;
    bool m_Dataset_urlIsSet;
    utility::string_t m_Code_access_mode;
    bool m_Code_access_modeIsSet;
    utility::string_t m_Code_access_auth_key;
    bool m_Code_access_auth_keyIsSet;
    int32_t m_Cluster_id;
    bool m_Cluster_idIsSet;
    utility::string_t m_Docker_username;
    bool m_Docker_usernameIsSet;
    utility::string_t m_Docker_password;
    bool m_Docker_passwordIsSet;
    utility::string_t m_Docker_registry;
    bool m_Docker_registryIsSet;
    std::shared_ptr<Object> m_Workflow_spec;
    bool m_Workflow_specIsSet;
    utility::string_t m_Evaluation_code;
    bool m_Evaluation_codeIsSet;
    utility::string_t m_Storage_capacity;
    bool m_Storage_capacityIsSet;
    std::shared_ptr<Object> m_Meta;
    bool m_MetaIsSet;
    bool m_Status;
    bool m_StatusIsSet;
    int32_t m_User_id;
    bool m_User_idIsSet;
    int32_t m_Organisation_id;
    bool m_Organisation_idIsSet;
};

}
}
}
}

#endif /* IO_SWAGGER_CLIENT_MODEL_Grader_H_ */
