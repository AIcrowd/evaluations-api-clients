(ns aicrowd-evaluations.api.graders
  (:require [aicrowd-evaluations.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn delete-grader-dao-with-http-info
  "
  Delete a grader"
  [grader-id ]
  (check-required-params grader-id)
  (call-api "/graders/{grader_id}" :delete
            {:path-params   {"grader_id" grader-id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    ["api_key"]}))

(defn delete-grader-dao
  "
  Delete a grader"
  [grader-id ]
  (:data (delete-grader-dao-with-http-info grader-id)))

(defn get-grader-dao-with-http-info
  "
  Get information of a grader"
  ([grader-id ] (get-grader-dao-with-http-info grader-id nil))
  ([grader-id {:keys [x-fields ]}]
   (check-required-params grader-id)
   (call-api "/graders/{grader_id}" :get
             {:path-params   {"grader_id" grader-id }
              :header-params {"X-Fields" x-fields }
              :query-params  {}
              :form-params   {}
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    ["api_key"]})))

(defn get-grader-dao
  "
  Get information of a grader"
  ([grader-id ] (get-grader-dao grader-id nil))
  ([grader-id optional-params]
   (:data (get-grader-dao-with-http-info grader-id optional-params))))

(defn get-grader-list-dao-with-http-info
  "
  Get all grader"
  ([] (get-grader-list-dao-with-http-info nil))
  ([{:keys [x-fields ]}]
   (call-api "/graders/" :get
             {:path-params   {}
              :header-params {"X-Fields" x-fields }
              :query-params  {}
              :form-params   {}
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    ["api_key"]})))

(defn get-grader-list-dao
  "
  Get all grader"
  ([] (get-grader-list-dao nil))
  ([optional-params]
   (:data (get-grader-list-dao-with-http-info optional-params))))

(defn post-grader-list-dao-with-http-info
  "
  Create a new grader"
  ([payload ] (post-grader-list-dao-with-http-info payload nil))
  ([payload {:keys [x-fields ]}]
   (check-required-params payload)
   (call-api "/graders/" :post
             {:path-params   {}
              :header-params {"X-Fields" x-fields }
              :query-params  {}
              :form-params   {}
              :body-param    payload
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    ["api_key"]})))

(defn post-grader-list-dao
  "
  Create a new grader"
  ([payload ] (post-grader-list-dao payload nil))
  ([payload optional-params]
   (:data (post-grader-list-dao-with-http-info payload optional-params))))

(defn put-grader-dao-with-http-info
  "
  Update a grader"
  ([grader-id payload ] (put-grader-dao-with-http-info grader-id payload nil))
  ([grader-id payload {:keys [x-fields ]}]
   (check-required-params grader-id payload)
   (call-api "/graders/{grader_id}" :put
             {:path-params   {"grader_id" grader-id }
              :header-params {"X-Fields" x-fields }
              :query-params  {}
              :form-params   {}
              :body-param    payload
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    ["api_key"]})))

(defn put-grader-dao
  "
  Update a grader"
  ([grader-id payload ] (put-grader-dao grader-id payload nil))
  ([grader-id payload optional-params]
   (:data (put-grader-dao-with-http-info grader-id payload optional-params))))

