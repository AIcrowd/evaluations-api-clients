(ns aicrowd-evaluations.api.submissions
  (:require [aicrowd-evaluations.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn create-submission-with-http-info
  "
  Make a new submission"
  ([payload ] (create-submission-with-http-info payload nil))
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

(defn create-submission
  "
  Make a new submission"
  ([payload ] (create-submission payload nil))
  ([payload optional-params]
   (:data (create-submission-with-http-info payload optional-params))))

(defn delete-submission-with-http-info
  "
  Stop evaluation of a submission and delete it"
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

(defn delete-submission
  "
  Stop evaluation of a submission and delete it"
  [submission-id ]
  (:data (delete-submission-with-http-info submission-id)))

(defn get-submission-with-http-info
  "
  Get details of a submission by its ID"
  ([submission-id ] (get-submission-with-http-info submission-id nil))
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

(defn get-submission
  "
  Get details of a submission by its ID"
  ([submission-id ] (get-submission submission-id nil))
  ([submission-id optional-params]
   (:data (get-submission-with-http-info submission-id optional-params))))

(defn get-submission-data-with-http-info
  "
  Get the submission data by submission ID"
  [submission-id ]
  (check-required-params submission-id)
  (call-api "/submissions/{submission_id}/data" :get
            {:path-params   {"submission_id" submission-id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    ["api_key"]}))

(defn get-submission-data
  "
  Get the submission data by submission ID"
  [submission-id ]
  (:data (get-submission-data-with-http-info submission-id)))

(defn list-submissions-with-http-info
  "
  List all submissions available"
  ([] (list-submissions-with-http-info nil))
  ([{:keys [x-fields ]}]
   (call-api "/submissions/" :get
             {:path-params   {}
              :header-params {"X-Fields" x-fields }
              :query-params  {}
              :form-params   {}
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    ["api_key"]})))

(defn list-submissions
  "
  List all submissions available"
  ([] (list-submissions nil))
  ([optional-params]
   (:data (list-submissions-with-http-info optional-params))))

