/**
 * AIcrowd Evaluations API
 * API to create and evaluate custom challenges on AIcrowd!
 *
 * OpenAPI spec version: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator 2.4.14.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

/*
 * Cluster.h
 *
 * 
 */

#ifndef COM_AICROWD_EVALUATIONS_MODELS_Cluster_H_
#define COM_AICROWD_EVALUATIONS_MODELS_Cluster_H_


#include "../ModelBase.h"

#include <cpprest/details/basic_types.h>

namespace com {
namespace aicrowd {
namespace evaluations {
namespace models {

/// <summary>
/// 
/// </summary>
class  Cluster
    : public ModelBase
{
public:
    Cluster();
    virtual ~Cluster();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    void fromJson(web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    void fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// Cluster members

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
    /// Remote address used to connect to the cluster
    /// </summary>
    utility::string_t getRemoteAddress() const;
        void setRemoteAddress(utility::string_t value);
    /// <summary>
    /// Authentication needed for the cluster
    /// </summary>
    utility::string_t getAuthToken() const;
        void setAuthToken(utility::string_t value);
    /// <summary>
    /// Docker registry username
    /// </summary>
    utility::string_t getDockerUsername() const;
        void setDockerUsername(utility::string_t value);
    /// <summary>
    /// Docker registry URL. Dockerhub is used by default.
    /// </summary>
    utility::string_t getDockerRegistry() const;
    bool dockerRegistryIsSet() const;
    void unsetDocker_registry();
    void setDockerRegistry(utility::string_t value);
    /// <summary>
    /// Kubernetes namespace to run the workflows in
    /// </summary>
    utility::string_t getNamespace() const;
    bool namespaceIsSet() const;
    void unset_namespace();
    void setNamespace(utility::string_t value);
    /// <summary>
    /// Storage class to use for datasets
    /// </summary>
    utility::string_t getStorageClass() const;
    bool storageClassIsSet() const;
    void unsetStorage_class();
    void setStorageClass(utility::string_t value);
    /// <summary>
    /// Readiness of the cluster
    /// </summary>
    bool isStatus() const;
    bool statusIsSet() const;
    void unsetStatus();
    void setStatus(bool value);
    /// <summary>
    /// Name of the workflow used to setup grader
    /// </summary>
    utility::string_t getWfName() const;
    bool wfNameIsSet() const;
    void unsetWf_name();
    void setWfName(utility::string_t value);
    /// <summary>
    /// External IP exposed by LoadBalancer Service of argo-server deployment
    /// </summary>
    utility::string_t getArgoHost() const;
    bool argoHostIsSet() const;
    void unsetArgo_host();
    void setArgoHost(utility::string_t value);
    /// <summary>
    /// Argo server token required for authentication
    /// </summary>
    utility::string_t getArgoToken() const;
    bool argoTokenIsSet() const;
    void unsetArgo_token();
    void setArgoToken(utility::string_t value);
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
    utility::string_t m_Remote_address;
        utility::string_t m_Auth_token;
        utility::string_t m_Docker_username;
        utility::string_t m_Docker_registry;
    bool m_Docker_registryIsSet;
    utility::string_t m__namespace;
    bool m__namespaceIsSet;
    utility::string_t m_Storage_class;
    bool m_Storage_classIsSet;
    bool m_Status;
    bool m_StatusIsSet;
    utility::string_t m_Wf_name;
    bool m_Wf_nameIsSet;
    utility::string_t m_Argo_host;
    bool m_Argo_hostIsSet;
    utility::string_t m_Argo_token;
    bool m_Argo_tokenIsSet;
    int32_t m_User_id;
    bool m_User_idIsSet;
    int32_t m_Organisation_id;
    bool m_Organisation_idIsSet;
};

}
}
}
}

#endif /* COM_AICROWD_EVALUATIONS_MODELS_Cluster_H_ */
