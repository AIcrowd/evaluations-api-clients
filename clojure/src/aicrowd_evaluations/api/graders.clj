(ns aicrowd-evaluations.api.graders
  (:require [aicrowd-evaluations.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn archive-grader-with-http-info
  "
  Archive a grader"
  [grader-id ]
  (check-required-params grader-id)
  (call-api "/graders/{grader_id}/archive" :post
            {:path-params   {"grader_id" grader-id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    ["api_key"]}))

(defn archive-grader
  "
  Archive a grader"
  [grader-id ]
  (:data (archive-grader-with-http-info grader-id)))

(defn create-grader-with-http-info
  "
  Create a new grader"
  ([payload ] (create-grader-with-http-info payload nil))
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

(defn create-grader
  "
  Create a new grader"
  ([payload ] (create-grader payload nil))
  ([payload optional-params]
   (:data (create-grader-with-http-info payload optional-params))))

(defn delete-grader-with-http-info
  "
  Delete a grader by its ID"
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

(defn delete-grader
  "
  Delete a grader by its ID"
  [grader-id ]
  (:data (delete-grader-with-http-info grader-id)))

(defn download-grader-logs-with-http-info
  "
  Get the grader logs by submission ID"
  [grader-id ]
  (check-required-params grader-id)
  (call-api "/graders/{grader_id}/logs/download" :get
            {:path-params   {"grader_id" grader-id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    ["api_key"]}))

(defn download-grader-logs
  "
  Get the grader logs by submission ID"
  [grader-id ]
  (:data (download-grader-logs-with-http-info grader-id)))

(defn get-grader-with-http-info
  "
  Get details of a grader by its ID"
  ([grader-id ] (get-grader-with-http-info grader-id nil))
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

(defn get-grader
  "
  Get details of a grader by its ID"
  ([grader-id ] (get-grader grader-id nil))
  ([grader-id optional-params]
   (:data (get-grader-with-http-info grader-id optional-params))))

(defn get-grader-logs-with-http-info
  "
  Get grader logs from loki"
  ([grader-id ] (get-grader-logs-with-http-info grader-id nil))
  ([grader-id {:keys [step log-lines x-fields ]}]
   (check-required-params grader-id)
   (call-api "/graders/{grader_id}/logs" :get
             {:path-params   {"grader_id" grader-id }
              :header-params {"X-Fields" x-fields }
              :query-params  {"step" step "log_lines" log-lines }
              :form-params   {}
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    ["api_key"]})))

(defn get-grader-logs
  "
  Get grader logs from loki"
  ([grader-id ] (get-grader-logs grader-id nil))
  ([grader-id optional-params]
   (:data (get-grader-logs-with-http-info grader-id optional-params))))

(defn list-graders-with-http-info
  "
  List all graders available"
  ([] (list-graders-with-http-info nil))
  ([{:keys [per-page page meta name status user-id x-fields ]}]
   (call-api "/graders/" :get
             {:path-params   {}
              :header-params {"X-Fields" x-fields }
              :query-params  {"per_page" per-page "page" page "meta" meta "name" name "status" status "user_id" user-id }
              :form-params   {}
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    ["api_key"]})))

(defn list-graders
  "
  List all graders available"
  ([] (list-graders nil))
  ([optional-params]
   (:data (list-graders-with-http-info optional-params))))

(defn unarchive-grader-with-http-info
  "
  Unarchive a grader"
  [grader-id ]
  (check-required-params grader-id)
  (call-api "/graders/{grader_id}/unarchive" :post
            {:path-params   {"grader_id" grader-id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    ["api_key"]}))

(defn unarchive-grader
  "
  Unarchive a grader"
  [grader-id ]
  (:data (unarchive-grader-with-http-info grader-id)))

(defn update-grader-with-http-info
  "
  Update meta details of a grader by its ID. Warning: There is no data validation."
  ([grader-id payload ] (update-grader-with-http-info grader-id payload nil))
  ([grader-id payload {:keys [x-fields ]}]
   (check-required-params grader-id payload)
   (call-api "/graders/{grader_id}" :patch
             {:path-params   {"grader_id" grader-id }
              :header-params {"X-Fields" x-fields }
              :query-params  {}
              :form-params   {}
              :body-param    payload
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    ["api_key"]})))

(defn update-grader
  "
  Update meta details of a grader by its ID. Warning: There is no data validation."
  ([grader-id payload ] (update-grader grader-id payload nil))
  ([grader-id payload optional-params]
   (:data (update-grader-with-http-info grader-id payload optional-params))))

