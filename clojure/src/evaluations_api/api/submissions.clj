(ns evaluations-api.api.submissions
  (:require [evaluations-api.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn delete-submission-dao-with-http-info
  "
  Stop evaluation of a submission"
  [submission-id ]
  (check-required-params submission-id)
  (call-api "/submissions/{submission_id}" :delete
            {:path-params   {"submission_id" submission-id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    ["api_key"]}))

(defn delete-submission-dao
  "
  Stop evaluation of a submission"
  [submission-id ]
  (:data (delete-submission-dao-with-http-info submission-id)))

(defn get-submission-dao-with-http-info
  "
  Get details of a submission"
  ([submission-id ] (get-submission-dao-with-http-info submission-id nil))
  ([submission-id {:keys [x-fields ]}]
   (check-required-params submission-id)
   (call-api "/submissions/{submission_id}" :get
             {:path-params   {"submission_id" submission-id }
              :header-params {"X-Fields" x-fields }
              :query-params  {}
              :form-params   {}
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    ["api_key"]})))

(defn get-submission-dao
  "
  Get details of a submission"
  ([submission-id ] (get-submission-dao submission-id nil))
  ([submission-id optional-params]
   (:data (get-submission-dao-with-http-info submission-id optional-params))))

(defn get-submission-list-dao-with-http-info
  "
  Get all submissions"
  ([] (get-submission-list-dao-with-http-info nil))
  ([{:keys [x-fields ]}]
   (call-api "/submissions/" :get
             {:path-params   {}
              :header-params {"X-Fields" x-fields }
              :query-params  {}
              :form-params   {}
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    ["api_key"]})))

(defn get-submission-list-dao
  "
  Get all submissions"
  ([] (get-submission-list-dao nil))
  ([optional-params]
   (:data (get-submission-list-dao-with-http-info optional-params))))

(defn post-submission-list-dao-with-http-info
  "
  Make a new submission"
  ([payload ] (post-submission-list-dao-with-http-info payload nil))
  ([payload {:keys [x-fields ]}]
   (check-required-params payload)
   (call-api "/submissions/" :post
             {:path-params   {}
              :header-params {"X-Fields" x-fields }
              :query-params  {}
              :form-params   {}
              :body-param    payload
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    ["api_key"]})))

(defn post-submission-list-dao
  "
  Make a new submission"
  ([payload ] (post-submission-list-dao payload nil))
  ([payload optional-params]
   (:data (post-submission-list-dao-with-http-info payload optional-params))))

