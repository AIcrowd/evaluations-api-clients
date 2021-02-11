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
 * UserQuota.h
 *
 * 
 */

#ifndef COM_AICROWD_EVALUATIONS_MODELS_UserQuota_H_
#define COM_AICROWD_EVALUATIONS_MODELS_UserQuota_H_


#include "../ModelBase.h"


namespace com {
namespace aicrowd {
namespace evaluations {
namespace models {

/// <summary>
/// 
/// </summary>
class  UserQuota
    : public ModelBase
{
public:
    UserQuota();
    virtual ~UserQuota();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    void fromJson(web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    void fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// UserQuota members

    /// <summary>
    /// Quota to be added or reduced
    /// </summary>
    int32_t getQuota() const;
        void setQuota(int32_t value);

protected:
    int32_t m_Quota;
    };

}
}
}
}

#endif /* COM_AICROWD_EVALUATIONS_MODELS_UserQuota_H_ */
