/**
 * AIcrowd Evaluations API
 * API to create and evaluate custom challenges on AIcrowd!
 *
 * OpenAPI spec version: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator 2.4.18.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

/*
 * Organisation.h
 *
 * 
 */

#ifndef COM_AICROWD_EVALUATIONS_MODELS_Organisation_H_
#define COM_AICROWD_EVALUATIONS_MODELS_Organisation_H_


#include "../ModelBase.h"

#include <cpprest/details/basic_types.h>

namespace com {
namespace aicrowd {
namespace evaluations {
namespace models {

/// <summary>
/// 
/// </summary>
class  Organisation
    : public ModelBase
{
public:
    Organisation();
    virtual ~Organisation();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    void fromJson(web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    void fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// Organisation members

    /// <summary>
    /// ID
    /// </summary>
    int32_t getId() const;
    bool idIsSet() const;
    void unsetId();
    void setId(int32_t value);
    /// <summary>
    /// Organisation Name
    /// </summary>
    utility::string_t getName() const;
        void setName(utility::string_t value);
    /// <summary>
    /// Point of contact email
    /// </summary>
    utility::string_t getPocEmail() const;
        void setPocEmail(utility::string_t value);
    /// <summary>
    /// Creation Time
    /// </summary>
    utility::datetime getCreatedOn() const;
    bool createdOnIsSet() const;
    void unsetCreated_on();
    void setCreatedOn(utility::datetime value);
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

protected:
    int32_t m_Id;
    bool m_IdIsSet;
    utility::string_t m_Name;
        utility::string_t m_Poc_email;
        utility::datetime m_Created_on;
    bool m_Created_onIsSet;
    int32_t m_Total_quota;
    bool m_Total_quotaIsSet;
    int32_t m_Quota;
    bool m_QuotaIsSet;
};

}
}
}
}

#endif /* COM_AICROWD_EVALUATIONS_MODELS_Organisation_H_ */
