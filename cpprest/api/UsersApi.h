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
 * UsersApi.h
 *
 * 
 */

#ifndef COM_AICROWD_EVALUATIONS_API_UsersApi_H_
#define COM_AICROWD_EVALUATIONS_API_UsersApi_H_


#include "../ApiClient.h"

#include "User.h"
#include "UserQuota.h"
#include <cpprest/details/basic_types.h>

#include <boost/optional.hpp>

namespace com {
namespace aicrowd {
namespace evaluations {
namespace api {

using namespace com::aicrowd::evaluations::models;

class  UsersApi
{
public:
    UsersApi( std::shared_ptr<ApiClient> apiClient );
    virtual ~UsersApi();
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Create a new user
    /// </remarks>
    /// <param name="payload"></param>
    /// <param name="xFields">An optional fields mask (optional)</param>
    pplx::task<std::shared_ptr<User>> createUser(
        std::shared_ptr<User> payload,
        boost::optional<utility::string_t> xFields
    );
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Delete a user
    /// </remarks>
    /// <param name="userId"></param>
    pplx::task<void> deleteUser(
        int32_t userId
    );
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Get information of a user
    /// </remarks>
    /// <param name="userId"></param>
    /// <param name="xFields">An optional fields mask (optional)</param>
    pplx::task<std::shared_ptr<User>> getUser(
        int32_t userId,
        boost::optional<utility::string_t> xFields
    );
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Get all user
    /// </remarks>
    /// <param name="xFields">An optional fields mask (optional)</param>
    pplx::task<std::vector<std::shared_ptr<User>>> listUsers(
        boost::optional<utility::string_t> xFields
    );
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Update a user
    /// </remarks>
    /// <param name="userId"></param>
    /// <param name="payload"></param>
    /// <param name="xFields">An optional fields mask (optional)</param>
    pplx::task<std::shared_ptr<User>> updateUser(
        int32_t userId,
        std::shared_ptr<User> payload,
        boost::optional<utility::string_t> xFields
    );
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Add or subtract quota for a user
    /// </remarks>
    /// <param name="userId"></param>
    /// <param name="payload"></param>
    pplx::task<void> updateUserQuota(
        int32_t userId,
        std::shared_ptr<UserQuota> payload
    );

protected:
    std::shared_ptr<ApiClient> m_ApiClient;
};

}
}
}
}

#endif /* COM_AICROWD_EVALUATIONS_API_UsersApi_H_ */

