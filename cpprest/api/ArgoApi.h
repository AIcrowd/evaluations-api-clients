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
 * ArgoApi.h
 *
 * 
 */

#ifndef COM_AICROWD_EVALUATIONS_API_ArgoApi_H_
#define COM_AICROWD_EVALUATIONS_API_ArgoApi_H_


#include "../ApiClient.h"

#include "GenericFeedback.h"
#include "GraderFeedback.h"
#include "SubmissionFeedback.h"
#include <cpprest/details/basic_types.h>

#include <boost/optional.hpp>

namespace com {
namespace aicrowd {
namespace evaluations {
namespace api {

using namespace com::aicrowd::evaluations::models;

class  ArgoApi
{
public:
    ArgoApi( std::shared_ptr<ApiClient> apiClient );
    virtual ~ArgoApi();
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Update the status of an object
    /// </remarks>
    /// <param name="modelName"></param>
    /// <param name="objectId"></param>
    /// <param name="payload"></param>
    pplx::task<void> postGenericFeedbackContract(
        utility::string_t modelName,
        int32_t objectId,
        std::shared_ptr<GenericFeedback> payload
    );
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Update the grader details
    /// </remarks>
    /// <param name="graderId"></param>
    /// <param name="payload"></param>
    pplx::task<void> postGraderFeedbackDao(
        int32_t graderId,
        std::shared_ptr<GraderFeedback> payload
    );
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Update the submission details
    /// </remarks>
    /// <param name="submissionId"></param>
    /// <param name="payload"></param>
    pplx::task<void> postSubmissionFeedbackDao(
        int32_t submissionId,
        std::shared_ptr<SubmissionFeedback> payload
    );

protected:
    std::shared_ptr<ApiClient> m_ApiClient;
};

}
}
}
}

#endif /* COM_AICROWD_EVALUATIONS_API_ArgoApi_H_ */

