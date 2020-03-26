(ns aicrowd-evaluations.api.auth
  (:require [aicrowd-evaluations.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn post-logout-api-with-http-info
  "
  Logout a user"
  ([] (post-logout-api-with-http-info nil))
  ([{:keys [x-fields ]}]
   (call-api "/auth/logout" :post
             {:path-params   {}
              :header-params {"X-Fields" x-fields }
              :query-params  {}
              :form-params   {}
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    ["api_key"]})))

(defn post-logout-api
  "
  Logout a user"
  ([] (post-logout-api nil))
  ([optional-params]
   (:data (post-logout-api-with-http-info optional-params))))

(defn post-user-login-with-http-info
  "
  User login"
  ([payload ] (post-user-login-with-http-info payload nil))
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

(defn post-user-login
  "
  User login"
  ([payload ] (post-user-login payload nil))
  ([payload optional-params]
   (:data (post-user-login-with-http-info payload optional-params))))

