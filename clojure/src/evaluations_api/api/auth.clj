(ns evaluations-api.api.auth
  (:require [evaluations-api.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn logout-a-user-with-http-info
  ""
  ([] (logout-a-user-with-http-info nil))
  ([{:keys [x-fields ]}]
   (call-api "/auth/logout" :post
             {:path-params   {}
              :header-params {"X-Fields" x-fields }
              :query-params  {}
              :form-params   {}
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    ["api_key"]})))

(defn logout-a-user
  ""
  ([] (logout-a-user nil))
  ([optional-params]
   (:data (logout-a-user-with-http-info optional-params))))

(defn user-login-with-http-info
  ""
  ([payload ] (user-login-with-http-info payload nil))
  ([payload {:keys [x-fields ]}]
   (check-required-params payload)
   (call-api "/auth/login" :post
             {:path-params   {}
              :header-params {"X-Fields" x-fields }
              :query-params  {}
              :form-params   {}
              :body-param    payload
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn user-login
  ""
  ([payload ] (user-login payload nil))
  ([payload optional-params]
   (:data (user-login-with-http-info payload optional-params))))

