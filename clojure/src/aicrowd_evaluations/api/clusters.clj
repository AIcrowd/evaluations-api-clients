(ns aicrowd-evaluations.api.clusters
  (:require [aicrowd-evaluations.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn delete-cluster-dao-with-http-info
  "
  Delete a cluster"
  [cluster-id ]
  (check-required-params cluster-id)
  (call-api "/clusters/{cluster_id}" :delete
            {:path-params   {"cluster_id" cluster-id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    ["api_key"]}))

(defn delete-cluster-dao
  "
  Delete a cluster"
  [cluster-id ]
  (:data (delete-cluster-dao-with-http-info cluster-id)))

(defn get-cluster-dao-with-http-info
  "
  Get information of a cluster"
  ([cluster-id ] (get-cluster-dao-with-http-info cluster-id nil))
  ([cluster-id {:keys [x-fields ]}]
   (check-required-params cluster-id)
   (call-api "/clusters/{cluster_id}" :get
             {:path-params   {"cluster_id" cluster-id }
              :header-params {"X-Fields" x-fields }
              :query-params  {}
              :form-params   {}
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    ["api_key"]})))

(defn get-cluster-dao
  "
  Get information of a cluster"
  ([cluster-id ] (get-cluster-dao cluster-id nil))
  ([cluster-id optional-params]
   (:data (get-cluster-dao-with-http-info cluster-id optional-params))))

(defn get-cluster-list-dao-with-http-info
  "
  Get all clusters"
  ([] (get-cluster-list-dao-with-http-info nil))
  ([{:keys [x-fields ]}]
   (call-api "/clusters/" :get
             {:path-params   {}
              :header-params {"X-Fields" x-fields }
              :query-params  {}
              :form-params   {}
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    ["api_key"]})))

(defn get-cluster-list-dao
  "
  Get all clusters"
  ([] (get-cluster-list-dao nil))
  ([optional-params]
   (:data (get-cluster-list-dao-with-http-info optional-params))))

(defn post-cluster-list-dao-with-http-info
  "
  Add a new cluster"
  ([payload ] (post-cluster-list-dao-with-http-info payload nil))
  ([payload {:keys [x-fields ]}]
   (check-required-params payload)
   (call-api "/clusters/" :post
             {:path-params   {}
              :header-params {"X-Fields" x-fields }
              :query-params  {}
              :form-params   {}
              :body-param    payload
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    ["api_key"]})))

(defn post-cluster-list-dao
  "
  Add a new cluster"
  ([payload ] (post-cluster-list-dao payload nil))
  ([payload optional-params]
   (:data (post-cluster-list-dao-with-http-info payload optional-params))))

