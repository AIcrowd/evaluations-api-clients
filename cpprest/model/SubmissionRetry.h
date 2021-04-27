/**
 * AIcrowd Evaluations API
 * API to create and evaluate custom challenges on AIcrowd!
 *
 * OpenAPI spec version: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator 2.4.19.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

/*
 * SubmissionRetry.h
 *
 * 
 */

#ifndef COM_AICROWD_EVALUATIONS_MODELS_SubmissionRetry_H_
#define COM_AICROWD_EVALUATIONS_MODELS_SubmissionRetry_H_


#include "../ModelBase.h"

#include "Object.h"
#include <vector>

namespace com {
namespace aicrowd {
namespace evaluations {
namespace models {

/// <summary>
/// 
/// </summary>
class  SubmissionRetry
    : public ModelBase
{
public:
    SubmissionRetry();
    virtual ~SubmissionRetry();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    void fromJson(web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    void fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// SubmissionRetry members

    /// <summary>
    /// List of submission IDs queued for evaluation
    /// </summary>
    std::shared_ptr<Object> getQueued() const;
    bool queuedIsSet() const;
    void unsetQueued();
    void setQueued(std::shared_ptr<Object> value);
    /// <summary>
    /// List of submission IDs failed to get queued
    /// </summary>
    std::vector<int32_t>& getFailed();
    bool failedIsSet() const;
    void unsetFailed();
    void setFailed(std::vector<int32_t> value);

protected:
    std::shared_ptr<Object> m_Queued;
    bool m_QueuedIsSet;
    std::vector<int32_t> m_Failed;
    bool m_FailedIsSet;
};

}
}
}
}

#endif /* COM_AICROWD_EVALUATIONS_MODELS_SubmissionRetry_H_ */
