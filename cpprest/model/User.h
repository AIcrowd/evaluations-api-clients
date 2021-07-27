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

/*
 * User.h
 *
 * 
 */

#ifndef COM_AICROWD_EVALUATIONS_MODELS_User_H_
#define COM_AICROWD_EVALUATIONS_MODELS_User_H_


#include "../ModelBase.h"

#include <cpprest/details/basic_types.h>

namespace com {
namespace aicrowd {
namespace evaluations {
namespace models {

/// <summary>
/// 
/// </summary>
class  User
    : public ModelBase
{
public:
    User();
    virtual ~User();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    void fromJson(web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    void fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// User members

    /// <summary>
    /// ID
    /// </summary>
    int32_t getId() const;
    bool idIsSet() const;
    void unsetId();
    void setId(int32_t value);
    /// <summary>
    /// Email
    /// </summary>
    utility::string_t getEmail() const;
        void setEmail(utility::string_t value);
    /// <summary>
    /// Admin Boolean
    /// </summary>
    bool isAdmin() const;
    bool adminIsSet() const;
    void unsetAdmin();
    void setAdmin(bool value);
    /// <summary>
    /// Creation Time
    /// </summary>
    utility::datetime getCreatedOn() const;
    bool createdOnIsSet() const;
    void unsetCreated_on();
    void setCreatedOn(utility::datetime value);
    /// <summary>
    /// Hashed Password
    /// </summary>
    utility::string_t getPasswordHash() const;
    bool passwordHashIsSet() const;
    void unsetPassword_hash();
    void setPasswordHash(utility::string_t value);
    /// <summary>
    /// Total assigned evaluation quota
    /// </summary>
    int32_t getTotalQuota() const;
    bool totalQuotaIsSet() const;
    void unsetTotal_quota();
    void setTotalQuota(int32_t value);
    /// <summary>
    /// Available evaluation quota
    /// </summary>
    int32_t getQuota() const;
    bool quotaIsSet() const;
    void unsetQuota();
    void setQuota(int32_t value);
    /// <summary>
    /// Organisation identifier
    /// </summary>
    int32_t getOrganisationId() const;
        void setOrganisationId(int32_t value);
    /// <summary>
    /// user password
    /// </summary>
    utility::string_t getPassword() const;
        void setPassword(utility::string_t value);

protected:
    int32_t m_Id;
    bool m_IdIsSet;
    utility::string_t m_Email;
        bool m_Admin;
    bool m_AdminIsSet;
    utility::datetime m_Created_on;
    bool m_Created_onIsSet;
    utility::string_t m_Password_hash;
    bool m_Password_hashIsSet;
    int32_t m_Total_quota;
    bool m_Total_quotaIsSet;
    int32_t m_Quota;
    bool m_QuotaIsSet;
    int32_t m_Organisation_id;
        utility::string_t m_Password;
    };

}
}
}
}

#endif /* COM_AICROWD_EVALUATIONS_MODELS_User_H_ */
