/**
 * AIcrowd Evaluations API
 * API to create and evaluate custom challenges on AIcrowd!
 *
 * OpenAPI spec version: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator 2.4.14.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

/*
 * Object.h
 *
 * This is the implementation of a JSON object.
 */

#ifndef COM_AICROWD_EVALUATIONS_MODELS_Object_H_
#define COM_AICROWD_EVALUATIONS_MODELS_Object_H_


#include "ModelBase.h"

#include <cpprest/details/basic_types.h>
#include <cpprest/json.h>

namespace com {
namespace aicrowd {
namespace evaluations {
namespace models {

class  Object : public ModelBase
{
public:
    Object();
    virtual ~Object();

    /////////////////////////////////////////////
    /// ModelBase overrides
    void validate() override;

    web::json::value toJson() const override;
    void fromJson(web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    void fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// Object manipulation
    web::json::value getValue(const utility::string_t& key) const;
    void setValue(const utility::string_t& key, const web::json::value& value);

private:
    web::json::value m_object;
};

}
}
}
}

#endif /* COM_AICROWD_EVALUATIONS_MODELS_Object_H_ */
