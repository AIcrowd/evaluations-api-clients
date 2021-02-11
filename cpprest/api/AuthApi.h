/**
 * AIcrowd Evaluations API
 * API to create and evaluate custom challenges on AIcrowd!
 *
 * OpenAPI spec version: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator 2.4.18.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

/*
 * AuthApi.h
 *
 * 
 */

#ifndef COM_AICROWD_EVALUATIONS_API_AuthApi_H_
#define COM_AICROWD_EVALUATIONS_API_AuthApi_H_


#include "../ApiClient.h"

#include "AuthLogout.h"
#include "AuthResponse.h"
#include "Login.h"
#include <cpprest/details/basic_types.h>

#include <boost/optional.hpp>

namespace com {
namespace aicrowd {
namespace evaluations {
namespace api {

using namespace com::aicrowd::evaluations::models;

class  AuthApi
{
public:
    AuthApi( std::shared_ptr<ApiClient> apiClient );
    virtual ~AuthApi();
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Log in a user with email and password.
    /// </remarks>
    /// <param name="payload"></param>
    /// <param name="xFields">An optional fields mask (optional)</param>
    pplx::task<std::shared_ptr<AuthResponse>> login(
        std::shared_ptr<Login> payload,
        boost::optional<utility::string_t> xFields
    );
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// Invalidate the current authorization token.
    /// </remarks>
    /// <param name="xFields">An optional fields mask (optional)</param>
    pplx::task<std::shared_ptr<AuthLogout>> logout(
        boost::optional<utility::string_t> xFields
    );

protected:
    std::shared_ptr<ApiClient> m_ApiClient;
};

}
}
}
}

#endif /* COM_AICROWD_EVALUATIONS_API_AuthApi_H_ */

