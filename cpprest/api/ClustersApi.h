/**
 * AIcrowd Evaluations API
 * API to create and evaluate custom challenges on AIcrowd!
 *
 * OpenAPI spec version: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator 2.4.26.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

/*
 * ClustersApi.h
 *
 * 
 */

#ifndef COM_AICROWD_EVALUATIONS_API_ClustersApi_H_
#define COM_AICROWD_EVALUATIONS_API_ClustersApi_H_


#include "../ApiClient.h"

#include "Cluster.h"
#include <cpprest/details/basic_types.h>

#include <boost/optional.hpp>

namespace com {
namespace aicrowd {
namespace evaluations {
namespace api {

using namespace com::aicrowd::evaluations::models;

class  ClustersApi
{
public:
    ClustersApi( std::shared_ptr<ApiClient> apiClient );
    virtual ~ClustersApi();
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Add a new cluster to AIcrowd and install necessary dependencies
    /// </remarks>
    /// <param name="payload"></param>
    /// <param name="xFields">An optional fields mask (optional)</param>
    pplx::task<std::shared_ptr<Cluster>> createCluster(
        std::shared_ptr<Cluster> payload,
        boost::optional<utility::string_t> xFields
    );
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Delete a cluster by its ID
    /// </remarks>
    /// <param name="clusterId"></param>
    pplx::task<void> deleteCluster(
        int32_t clusterId
    );
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Get details of a cluster by its ID
    /// </remarks>
    /// <param name="clusterId"></param>
    /// <param name="xFields">An optional fields mask (optional)</param>
    pplx::task<std::shared_ptr<Cluster>> getCluster(
        int32_t clusterId,
        boost::optional<utility::string_t> xFields
    );
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// List all clusters available
    /// </remarks>
    /// <param name="xFields">An optional fields mask (optional)</param>
    pplx::task<std::vector<std::shared_ptr<Cluster>>> listClusters(
        boost::optional<utility::string_t> xFields
    );

protected:
    std::shared_ptr<ApiClient> m_ApiClient;
};

}
}
}
}

#endif /* COM_AICROWD_EVALUATIONS_API_ClustersApi_H_ */

