(ns evaluations-api.api.auth
  (:require [evaluations-api.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn logout-a-user-with-http-info
  ""
  []
  (call-api "/auth/logout" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    ["api_key"]}))

(defn logout-a-user
  ""
  []
  (:data (logout-a-user-with-http-info)))

(defn user-login-with-http-info
  ""
  [payload ]
  (check-required-params payload)
  (call-api "/auth/login" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    payload
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    []}))

(defn user-login
  ""
  [payload ]
  (:data (user-login-with-http-info payload)))

