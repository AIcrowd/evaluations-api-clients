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
 * SubmissionsApi.h
 *
 * 
 */

#ifndef COM_AICROWD_EVALUATIONS_API_SubmissionsApi_H_
#define COM_AICROWD_EVALUATIONS_API_SubmissionsApi_H_


#include "../ApiClient.h"

#include "Submissions.h"
#include <cpprest/details/basic_types.h>

#include <boost/optional.hpp>

namespace com {
namespace aicrowd {
namespace evaluations {
namespace api {

using namespace com::aicrowd::evaluations::models;

class  SubmissionsApi
{
public:
    SubmissionsApi( std::shared_ptr<ApiClient> apiClient );
    virtual ~SubmissionsApi();
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Make a new submission
    /// </remarks>
    /// <param name="payload"></param>
    /// <param name="xFields">An optional fields mask (optional)</param>
    pplx::task<std::shared_ptr<Submissions>> createSubmission(
        std::shared_ptr<Submissions> payload,
        boost::optional<utility::string_t> xFields
    );
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Stop evaluation of a submission and delete it
    /// </remarks>
    /// <param name="submissionId"></param>
    pplx::task<void> deleteSubmission(
        int32_t submissionId
    );
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Get details of a submission by its ID
    /// </remarks>
    /// <param name="submissionId"></param>
    /// <param name="xFields">An optional fields mask (optional)</param>
    pplx::task<std::shared_ptr<Submissions>> getSubmission(
        int32_t submissionId,
        boost::optional<utility::string_t> xFields
    );
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Get the submission data by submission ID
    /// </remarks>
    /// <param name="submissionId"></param>
    pplx::task<void> getSubmissionData(
        int32_t submissionId
    );
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// List all submissions available
    /// </remarks>
    /// <param name="xFields">An optional fields mask (optional)</param>
    pplx::task<std::vector<std::shared_ptr<Submissions>>> listSubmissions(
        boost::optional<utility::string_t> xFields
    );

protected:
    std::shared_ptr<ApiClient> m_ApiClient;
};

}
}
}
}

#endif /* COM_AICROWD_EVALUATIONS_API_SubmissionsApi_H_ */

