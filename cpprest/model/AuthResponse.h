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
 * AuthResponse.h
 *
 * 
 */

#ifndef COM_AICROWD_EVALUATIONS_MODELS_AuthResponse_H_
#define COM_AICROWD_EVALUATIONS_MODELS_AuthResponse_H_


#include "../ModelBase.h"

#include <cpprest/details/basic_types.h>

namespace com {
namespace aicrowd {
namespace evaluations {
namespace models {

/// <summary>
/// 
/// </summary>
class  AuthResponse
    : public ModelBase
{
public:
    AuthResponse();
    virtual ~AuthResponse();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    void fromJson(web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    void fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// AuthResponse members

    /// <summary>
    /// API Authorization token that should be used in the headers
    /// </summary>
    utility::string_t getAuthorization() const;
    bool authorizationIsSet() const;
    void unsetAuthorization();
    void setAuthorization(utility::string_t value);

protected:
    utility::string_t m_Authorization;
    bool m_AuthorizationIsSet;
};

}
}
}
}

#endif /* COM_AICROWD_EVALUATIONS_MODELS_AuthResponse_H_ */
