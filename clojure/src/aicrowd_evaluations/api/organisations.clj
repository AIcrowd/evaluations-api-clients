(ns aicrowd-evaluations.api.organisations
  (:require [aicrowd-evaluations.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn create-organisation-with-http-info
  "
  Create a new organisation"
  ([payload ] (create-organisation-with-http-info payload nil))
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

(defn create-organisation
  "
  Create a new organisation"
  ([payload ] (create-organisation payload nil))
  ([payload optional-params]
   (:data (create-organisation-with-http-info payload optional-params))))

(defn delete-organisation-with-http-info
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

(defn delete-organisation
  "
  Delete an Organisation"
  [organisation-id ]
  (:data (delete-organisation-with-http-info organisation-id)))

(defn get-organisation-with-http-info
  "
  Get details of an organisation"
  ([organisation-id ] (get-organisation-with-http-info organisation-id nil))
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

(defn get-organisation
  "
  Get details of an organisation"
  ([organisation-id ] (get-organisation organisation-id nil))
  ([organisation-id optional-params]
   (:data (get-organisation-with-http-info organisation-id optional-params))))

(defn list-organisations-with-http-info
  "
  List all organisations"
  ([] (list-organisations-with-http-info nil))
  ([{:keys [x-fields ]}]
   (call-api "/organisations/" :get
             {:path-params   {}
              :header-params {"X-Fields" x-fields }
              :query-params  {}
              :form-params   {}
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    ["api_key"]})))

(defn list-organisations
  "
  List all organisations"
  ([] (list-organisations nil))
  ([optional-params]
   (:data (list-organisations-with-http-info optional-params))))

(defn update-organisation-with-http-info
  "
  Update an Organisation"
  ([organisation-id payload ] (update-organisation-with-http-info organisation-id payload nil))
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

(defn update-organisation
  "
  Update an Organisation"
  ([organisation-id payload ] (update-organisation organisation-id payload nil))
  ([organisation-id payload optional-params]
   (:data (update-organisation-with-http-info organisation-id payload optional-params))))

(defn update-organisation-quota-with-http-info
  "
  Add or subtract quota for an organisation"
  [organisation-id payload ]
  (check-required-params organisation-id payload)
  (call-api "/organisations/{organisation_id}/addquota" :put
            {:path-params   {"organisation_id" organisation-id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    payload
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    ["api_key"]}))

(defn update-organisation-quota
  "
  Add or subtract quota for an organisation"
  [organisation-id payload ]
  (:data (update-organisation-quota-with-http-info organisation-id payload)))

