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
 * AuthLogout.h
 *
 * 
 */

#ifndef COM_AICROWD_EVALUATIONS_MODELS_AuthLogout_H_
#define COM_AICROWD_EVALUATIONS_MODELS_AuthLogout_H_


#include "../ModelBase.h"

#include <cpprest/details/basic_types.h>

namespace com {
namespace aicrowd {
namespace evaluations {
namespace models {

/// <summary>
/// 
/// </summary>
class  AuthLogout
    : public ModelBase
{
public:
    AuthLogout();
    virtual ~AuthLogout();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    void fromJson(web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    void fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// AuthLogout members

    /// <summary>
    /// Logout message
    /// </summary>
    utility::string_t getMessage() const;
    bool messageIsSet() const;
    void unsetMessage();
    void setMessage(utility::string_t value);

protected:
    utility::string_t m_Message;
    bool m_MessageIsSet;
};

}
}
}
}

#endif /* COM_AICROWD_EVALUATIONS_MODELS_AuthLogout_H_ */
