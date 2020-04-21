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
 * JsonBody.h
 *
 * This is a JSON http body which can be submitted via http
 */

#ifndef COM_AICROWD_EVALUATIONS_MODELS_JsonBody_H_
#define COM_AICROWD_EVALUATIONS_MODELS_JsonBody_H_


#include "IHttpBody.h"

#include <cpprest/json.h>

namespace com {
namespace aicrowd {
namespace evaluations {
namespace models {

class  JsonBody
    : public IHttpBody
{
public:
    JsonBody( const web::json::value& value );
    virtual ~JsonBody();

    void writeTo( std::ostream& target ) override;

protected:
    web::json::value m_Json;
};

}
}
}
}

#endif /* COM_AICROWD_EVALUATIONS_MODELS_JsonBody_H_ */
