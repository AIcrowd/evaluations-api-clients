(ns aicrowd-evaluations.api.auth
  (:require [aicrowd-evaluations.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn login-with-http-info
  "
  Log in a user with email and password."
  ([payload ] (login-with-http-info payload nil))
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

(defn login
  "
  Log in a user with email and password."
  ([payload ] (login payload nil))
  ([payload optional-params]
   (:data (login-with-http-info payload optional-params))))

(defn logout-with-http-info
  "
  Invalidate the current authorization token."
  ([] (logout-with-http-info nil))
  ([{:keys [x-fields ]}]
   (call-api "/auth/logout" :post
             {:path-params   {}
              :header-params {"X-Fields" x-fields }
              :query-params  {}
              :form-params   {}
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    ["api_key"]})))

(defn logout
  "
  Invalidate the current authorization token."
  ([] (logout nil))
  ([optional-params]
   (:data (logout-with-http-info optional-params))))

