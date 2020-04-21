(ns aicrowd-evaluations.api.clusters
  (:require [aicrowd-evaluations.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn create-cluster-with-http-info
  "
  Add a new cluster to AIcrowd and install necessary dependencies"
  ([payload ] (create-cluster-with-http-info payload nil))
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

(defn create-cluster
  "
  Add a new cluster to AIcrowd and install necessary dependencies"
  ([payload ] (create-cluster payload nil))
  ([payload optional-params]
   (:data (create-cluster-with-http-info payload optional-params))))

(defn delete-cluster-with-http-info
  "
  Delete a cluster by its ID"
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

(defn delete-cluster
  "
  Delete a cluster by its ID"
  [cluster-id ]
  (:data (delete-cluster-with-http-info cluster-id)))

(defn get-cluster-with-http-info
  "
  Get details of a cluster by its ID"
  ([cluster-id ] (get-cluster-with-http-info cluster-id nil))
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

(defn get-cluster
  "
  Get details of a cluster by its ID"
  ([cluster-id ] (get-cluster cluster-id nil))
  ([cluster-id optional-params]
   (:data (get-cluster-with-http-info cluster-id optional-params))))

(defn list-clusters-with-http-info
  "
  List all clusters available"
  ([] (list-clusters-with-http-info nil))
  ([{:keys [x-fields ]}]
   (call-api "/clusters/" :get
             {:path-params   {}
              :header-params {"X-Fields" x-fields }
              :query-params  {}
              :form-params   {}
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    ["api_key"]})))

(defn list-clusters
  "
  List all clusters available"
  ([] (list-clusters nil))
  ([optional-params]
   (:data (list-clusters-with-http-info optional-params))))

