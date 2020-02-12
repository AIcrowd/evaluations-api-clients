(ns evaluations-api.api.organisations
  (:require [evaluations-api.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn delete-organisation-dao-with-http-info
  "
  Delete an Organisation"
  [organisation-id ]
  (check-required-params organisation-id)
  (call-api "/organisations/{organisation_id}" :delete
            {:path-params   {"organisation_id" organisation-id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    ["api_key"]}))

(defn delete-organisation-dao
  "
  Delete an Organisation"
  [organisation-id ]
  (:data (delete-organisation-dao-with-http-info organisation-id)))

(defn get-organisation-dao-with-http-info
  "
  Get information of an organisation"
  ([organisation-id ] (get-organisation-dao-with-http-info organisation-id nil))
  ([organisation-id {:keys [x-fields ]}]
   (check-required-params organisation-id)
   (call-api "/organisations/{organisation_id}" :get
             {:path-params   {"organisation_id" organisation-id }
              :header-params {"X-Fields" x-fields }
              :query-params  {}
              :form-params   {}
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    ["api_key"]})))

(defn get-organisation-dao
  "
  Get information of an organisation"
  ([organisation-id ] (get-organisation-dao organisation-id nil))
  ([organisation-id optional-params]
   (:data (get-organisation-dao-with-http-info organisation-id optional-params))))

(defn get-organisation-list-dao-with-http-info
  "
  Get all organisations"
  ([] (get-organisation-list-dao-with-http-info nil))
  ([{:keys [x-fields ]}]
   (call-api "/organisations/" :get
             {:path-params   {}
              :header-params {"X-Fields" x-fields }
              :query-params  {}
              :form-params   {}
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    ["api_key"]})))

(defn get-organisation-list-dao
  "
  Get all organisations"
  ([] (get-organisation-list-dao nil))
  ([optional-params]
   (:data (get-organisation-list-dao-with-http-info optional-params))))

(defn post-organisation-list-dao-with-http-info
  "
  Create a new organisation"
  ([payload ] (post-organisation-list-dao-with-http-info payload nil))
  ([payload {:keys [x-fields ]}]
   (check-required-params payload)
   (call-api "/organisations/" :post
             {:path-params   {}
              :header-params {"X-Fields" x-fields }
              :query-params  {}
              :form-params   {}
              :body-param    payload
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    ["api_key"]})))

(defn post-organisation-list-dao
  "
  Create a new organisation"
  ([payload ] (post-organisation-list-dao payload nil))
  ([payload optional-params]
   (:data (post-organisation-list-dao-with-http-info payload optional-params))))

(defn put-organisation-dao-with-http-info
  "
  Update an Organisation"
  ([organisation-id payload ] (put-organisation-dao-with-http-info organisation-id payload nil))
  ([organisation-id payload {:keys [x-fields ]}]
   (check-required-params organisation-id payload)
   (call-api "/organisations/{organisation_id}" :put
             {:path-params   {"organisation_id" organisation-id }
              :header-params {"X-Fields" x-fields }
              :query-params  {}
              :form-params   {}
              :body-param    payload
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    ["api_key"]})))

(defn put-organisation-dao
  "
  Update an Organisation"
  ([organisation-id payload ] (put-organisation-dao organisation-id payload nil))
  ([organisation-id payload optional-params]
   (:data (put-organisation-dao-with-http-info organisation-id payload optional-params))))

(defn put-quota-dao-with-http-info
  "
  Add or subtract quota for an organisation"
  [organisation-id payload ]
  (check-required-params organisation-id payload)
  (call-api "/organisations/addquota/{organisation_id}" :put
            {:path-params   {"organisation_id" organisation-id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    payload
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    ["api_key"]}))

(defn put-quota-dao
  "
  Add or subtract quota for an organisation"
  [organisation-id payload ]
  (:data (put-quota-dao-with-http-info organisation-id payload)))

