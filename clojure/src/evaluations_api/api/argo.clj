(ns evaluations-api.api.argo
  (:require [evaluations-api.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn post-generic-feedback-contract-with-http-info
  "
  Update the status of an object"
  [model-name object-id payload ]
  (check-required-params model-name object-id payload)
  (call-api "/argo/{model_name}/{object_id}" :post
            {:path-params   {"model_name" model-name "object_id" object-id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    payload
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    ["api_key"]}))

(defn post-generic-feedback-contract
  "
  Update the status of an object"
  [model-name object-id payload ]
  (:data (post-generic-feedback-contract-with-http-info model-name object-id payload)))

(defn post-grader-feedback-dao-with-http-info
  "
  Update the grader details"
  [grader-id payload ]
  (check-required-params grader-id payload)
  (call-api "/argo/graders/{grader_id}" :post
            {:path-params   {"grader_id" grader-id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    payload
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    ["api_key"]}))

(defn post-grader-feedback-dao
  "
  Update the grader details"
  [grader-id payload ]
  (:data (post-grader-feedback-dao-with-http-info grader-id payload)))

(defn post-submission-feedback-dao-with-http-info
  "
  Update the submission details"
  [submission-id payload ]
  (check-required-params submission-id payload)
  (call-api "/argo/submissions/{submission_id}" :post
            {:path-params   {"submission_id" submission-id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    payload
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    ["api_key"]}))

(defn post-submission-feedback-dao
  "
  Update the submission details"
  [submission-id payload ]
  (:data (post-submission-feedback-dao-with-http-info submission-id payload)))

