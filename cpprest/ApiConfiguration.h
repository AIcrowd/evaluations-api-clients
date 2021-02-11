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
 * ApiConfiguration.h
 *
 * This class represents a single item of a multipart-formdata request.
 */

#ifndef COM_AICROWD_EVALUATIONS_API_ApiConfiguration_H_
#define COM_AICROWD_EVALUATIONS_API_ApiConfiguration_H_



#include <map>

#include <cpprest/details/basic_types.h>
#include <cpprest/http_client.h>
namespace com {
namespace aicrowd {
namespace evaluations {
namespace api {

class  ApiConfiguration
{
public:
    ApiConfiguration();
    virtual ~ApiConfiguration();

    web::http::client::http_client_config& getHttpConfig();
    void setHttpConfig( web::http::client::http_client_config& value );

    utility::string_t getBaseUrl() const;
    void setBaseUrl( const utility::string_t value );

    utility::string_t getUserAgent() const;
    void setUserAgent( const utility::string_t value );

    std::map<utility::string_t, utility::string_t>& getDefaultHeaders();

    utility::string_t getApiKey( const utility::string_t& prefix) const;
    void setApiKey( const utility::string_t& prefix, const utility::string_t& apiKey );

protected:
    utility::string_t m_BaseUrl;
    std::map<utility::string_t, utility::string_t> m_DefaultHeaders;
    std::map<utility::string_t, utility::string_t> m_ApiKeys;
    web::http::client::http_client_config m_HttpConfig;
    utility::string_t m_UserAgent;
};

}
}
}
}
#endif /* COM_AICROWD_EVALUATIONS_API_ApiConfiguration_H_ */
