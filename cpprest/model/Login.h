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
 * Login.h
 *
 * 
 */

#ifndef COM_AICROWD_EVALUATIONS_MODELS_Login_H_
#define COM_AICROWD_EVALUATIONS_MODELS_Login_H_


#include "../ModelBase.h"

#include <cpprest/details/basic_types.h>

namespace com {
namespace aicrowd {
namespace evaluations {
namespace models {

/// <summary>
/// 
/// </summary>
class  Login
    : public ModelBase
{
public:
    Login();
    virtual ~Login();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    void fromJson(web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    void fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// Login members

    /// <summary>
    /// The email address
    /// </summary>
    utility::string_t getEmail() const;
        void setEmail(utility::string_t value);
    /// <summary>
    /// The user password 
    /// </summary>
    utility::string_t getPassword() const;
        void setPassword(utility::string_t value);

protected:
    utility::string_t m_Email;
        utility::string_t m_Password;
    };

}
}
}
}

#endif /* COM_AICROWD_EVALUATIONS_MODELS_Login_H_ */
