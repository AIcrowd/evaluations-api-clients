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

/*
 * SubmissionRetryInput.h
 *
 * 
 */

#ifndef COM_AICROWD_EVALUATIONS_MODELS_SubmissionRetryInput_H_
#define COM_AICROWD_EVALUATIONS_MODELS_SubmissionRetryInput_H_


#include "../ModelBase.h"

#include <vector>

namespace com {
namespace aicrowd {
namespace evaluations {
namespace models {

/// <summary>
/// 
/// </summary>
class  SubmissionRetryInput
    : public ModelBase
{
public:
    SubmissionRetryInput();
    virtual ~SubmissionRetryInput();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    void fromJson(web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    void fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// SubmissionRetryInput members

    /// <summary>
    /// List of submission IDs to retry
    /// </summary>
    std::vector<int32_t>& getSubmissions();
    bool submissionsIsSet() const;
    void unsetSubmissions();
    void setSubmissions(std::vector<int32_t> value);

protected:
    std::vector<int32_t> m_Submissions;
    bool m_SubmissionsIsSet;
};

}
}
}
}

#endif /* COM_AICROWD_EVALUATIONS_MODELS_SubmissionRetryInput_H_ */
