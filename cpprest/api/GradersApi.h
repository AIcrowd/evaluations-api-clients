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
 * GradersApi.h
 *
 * 
 */

#ifndef COM_AICROWD_EVALUATIONS_API_GradersApi_H_
#define COM_AICROWD_EVALUATIONS_API_GradersApi_H_


#include "../ApiClient.h"

#include "Grader.h"
#include "GraderLogs.h"
#include "GraderMeta.h"
#include <cpprest/details/basic_types.h>

#include <boost/optional.hpp>

namespace com {
namespace aicrowd {
namespace evaluations {
namespace api {

using namespace com::aicrowd::evaluations::models;

class  GradersApi
{
public:
    GradersApi( std::shared_ptr<ApiClient> apiClient );
    virtual ~GradersApi();
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Archive a grader
    /// </remarks>
    /// <param name="graderId"></param>
    pplx::task<void> archiveGrader(
        int32_t graderId
    );
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Create a new grader
    /// </remarks>
    /// <param name="payload"></param>
    /// <param name="xFields">An optional fields mask (optional)</param>
    pplx::task<std::shared_ptr<Grader>> createGrader(
        std::shared_ptr<Grader> payload,
        boost::optional<utility::string_t> xFields
    );
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Delete a grader by its ID
    /// </remarks>
    /// <param name="graderId"></param>
    pplx::task<void> deleteGrader(
        int32_t graderId
    );
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Get the grader logs by submission ID
    /// </remarks>
    /// <param name="graderId"></param>
    pplx::task<void> downloadGraderLogs(
        int32_t graderId
    );
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Get details of a grader by its ID
    /// </remarks>
    /// <param name="graderId"></param>
    /// <param name="xFields">An optional fields mask (optional)</param>
    pplx::task<std::shared_ptr<Grader>> getGrader(
        int32_t graderId,
        boost::optional<utility::string_t> xFields
    );
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Get grader logs from loki
    /// </remarks>
    /// <param name="graderId"></param>
    /// <param name="step">Granularity of logs (optional)</param>
    /// <param name="logLines">Number of lines to fetch (optional)</param>
    /// <param name="xFields">An optional fields mask (optional)</param>
    pplx::task<std::shared_ptr<GraderLogs>> getGraderLogs(
        int32_t graderId,
        boost::optional<int32_t> step,
        boost::optional<int32_t> logLines,
        boost::optional<utility::string_t> xFields
    );
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// List all graders available
    /// </remarks>
    /// <param name="perPage">Results to display per page (optional)</param>
    /// <param name="page">Page number (optional)</param>
    /// <param name="meta">Fetch graders containing this meta value (optional)</param>
    /// <param name="name">Fetch grader containing name (optional)</param>
    /// <param name="status">Fetch graders with this status (optional)</param>
    /// <param name="userId">Fetch graders created by the user (optional)</param>
    /// <param name="xFields">An optional fields mask (optional)</param>
    pplx::task<std::vector<std::shared_ptr<Grader>>> listGraders(
        boost::optional<utility::string_t> perPage,
        boost::optional<utility::string_t> page,
        boost::optional<utility::string_t> meta,
        boost::optional<utility::string_t> name,
        boost::optional<utility::string_t> status,
        boost::optional<int32_t> userId,
        boost::optional<utility::string_t> xFields
    );
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Unarchive a grader
    /// </remarks>
    /// <param name="graderId"></param>
    pplx::task<void> unarchiveGrader(
        int32_t graderId
    );
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Update meta details of a grader by its ID. Warning: There is no data validation.
    /// </remarks>
    /// <param name="graderId"></param>
    /// <param name="payload"></param>
    /// <param name="xFields">An optional fields mask (optional)</param>
    pplx::task<std::shared_ptr<Grader>> updateGrader(
        int32_t graderId,
        std::shared_ptr<GraderMeta> payload,
        boost::optional<utility::string_t> xFields
    );

protected:
    std::shared_ptr<ApiClient> m_ApiClient;
};

}
}
}
}

#endif /* COM_AICROWD_EVALUATIONS_API_GradersApi_H_ */

