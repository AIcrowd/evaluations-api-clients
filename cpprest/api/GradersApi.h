/**
 * Evaluations API
 * API to create and evaluate custom challenges
 *
 * OpenAPI spec version: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator 2.4.12.
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
    /// Delete a grader
    /// </remarks>
    /// <param name="graderId"></param>
    pplx::task<void> deleteGraderDao(
        int32_t graderId
    );
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Get information of a grader
    /// </remarks>
    /// <param name="graderId"></param>
    /// <param name="xFields">An optional fields mask (optional)</param>
    pplx::task<std::shared_ptr<Grader>> getGraderDao(
        int32_t graderId,
        boost::optional<utility::string_t> xFields
    );
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Get all grader
    /// </remarks>
    /// <param name="xFields">An optional fields mask (optional)</param>
    pplx::task<std::vector<std::shared_ptr<Grader>>> getGraderListDao(
        boost::optional<utility::string_t> xFields
    );
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Create a new grader
    /// </remarks>
    /// <param name="payload"></param>
    /// <param name="xFields">An optional fields mask (optional)</param>
    pplx::task<std::shared_ptr<Grader>> postGraderListDao(
        std::shared_ptr<Grader> payload,
        boost::optional<utility::string_t> xFields
    );
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Update a grader
    /// </remarks>
    /// <param name="graderId"></param>
    /// <param name="payload"></param>
    /// <param name="xFields">An optional fields mask (optional)</param>
    pplx::task<std::shared_ptr<Grader>> putGraderDao(
        int32_t graderId,
        std::shared_ptr<Grader> payload,
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

