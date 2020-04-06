/**
 * Evaluations API
 * API to create and evaluate custom challenges
 *
 * OpenAPI spec version: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator 2.4.13.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

/*
 * SubmissionFeedback.h
 *
 * 
 */

#ifndef COM_AICROWD_EVALUATIONS_MODELS_SubmissionFeedback_H_
#define COM_AICROWD_EVALUATIONS_MODELS_SubmissionFeedback_H_


#include "../ModelBase.h"

#include <cpprest/details/basic_types.h>

namespace com {
namespace aicrowd {
namespace evaluations {
namespace models {

/// <summary>
/// 
/// </summary>
class  SubmissionFeedback
    : public ModelBase
{
public:
    SubmissionFeedback();
    virtual ~SubmissionFeedback();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    void fromJson(web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    void fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// SubmissionFeedback members

    /// <summary>
    /// Status of the submission
    /// </summary>
    utility::string_t getStatus() const;
        void setStatus(utility::string_t value);
    /// <summary>
    /// S3 link of the outputs
    /// </summary>
    utility::string_t getOutputs() const;
        void setOutputs(utility::string_t value);
    /// <summary>
    /// Additional outputs
    /// </summary>
    double getScore() const;
        void setScore(double value);
    /// <summary>
    /// Output on stdout for run-evaluator.run-submitted-code step
    /// </summary>
    utility::string_t getLogs() const;
        void setLogs(utility::string_t value);

protected:
    utility::string_t m_Status;
        utility::string_t m_Outputs;
        double m_Score;
        utility::string_t m_Logs;
    };

}
}
}
}

#endif /* COM_AICROWD_EVALUATIONS_MODELS_SubmissionFeedback_H_ */
