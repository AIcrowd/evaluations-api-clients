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
 * OrganisationsApi.h
 *
 * 
 */

#ifndef COM_AICROWD_EVALUATIONS_API_OrganisationsApi_H_
#define COM_AICROWD_EVALUATIONS_API_OrganisationsApi_H_


#include "../ApiClient.h"

#include "Organisation.h"
#include "OrganisationQuota.h"
#include <cpprest/details/basic_types.h>

#include <boost/optional.hpp>

namespace com {
namespace aicrowd {
namespace evaluations {
namespace api {

using namespace com::aicrowd::evaluations::models;

class  OrganisationsApi
{
public:
    OrganisationsApi( std::shared_ptr<ApiClient> apiClient );
    virtual ~OrganisationsApi();
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Create a new organisation
    /// </remarks>
    /// <param name="payload"></param>
    /// <param name="xFields">An optional fields mask (optional)</param>
    pplx::task<std::shared_ptr<Organisation>> createOrganisation(
        std::shared_ptr<Organisation> payload,
        boost::optional<utility::string_t> xFields
    );
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Delete an Organisation
    /// </remarks>
    /// <param name="organisationId"></param>
    pplx::task<void> deleteOrganisation(
        int32_t organisationId
    );
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Get details of an organisation
    /// </remarks>
    /// <param name="organisationId"></param>
    /// <param name="xFields">An optional fields mask (optional)</param>
    pplx::task<std::shared_ptr<Organisation>> getOrganisation(
        int32_t organisationId,
        boost::optional<utility::string_t> xFields
    );
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// List all organisations
    /// </remarks>
    /// <param name="xFields">An optional fields mask (optional)</param>
    pplx::task<std::vector<std::shared_ptr<Organisation>>> listOrganisations(
        boost::optional<utility::string_t> xFields
    );
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Update an Organisation
    /// </remarks>
    /// <param name="organisationId"></param>
    /// <param name="payload"></param>
    /// <param name="xFields">An optional fields mask (optional)</param>
    pplx::task<std::shared_ptr<Organisation>> updateOrganisation(
        int32_t organisationId,
        std::shared_ptr<Organisation> payload,
        boost::optional<utility::string_t> xFields
    );
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Add or subtract quota for an organisation
    /// </remarks>
    /// <param name="organisationId"></param>
    /// <param name="payload"></param>
    pplx::task<void> updateOrganisationQuota(
        int32_t organisationId,
        std::shared_ptr<OrganisationQuota> payload
    );

protected:
    std::shared_ptr<ApiClient> m_ApiClient;
};

}
}
}
}

#endif /* COM_AICROWD_EVALUATIONS_API_OrganisationsApi_H_ */

