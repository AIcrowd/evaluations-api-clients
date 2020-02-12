(ns evaluations-api.api.users
  (:require [evaluations-api.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn delete-user-dao-with-http-info
  "
  Delete a user"
  [user-id ]
  (check-required-params user-id)
  (call-api "/users/{user_id}" :delete
            {:path-params   {"user_id" user-id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    ["api_key"]}))

(defn delete-user-dao
  "
  Delete a user"
  [user-id ]
  (:data (delete-user-dao-with-http-info user-id)))

(defn get-user-dao-with-http-info
  "
  Get information of a user"
  ([user-id ] (get-user-dao-with-http-info user-id nil))
  ([user-id {:keys [x-fields ]}]
   (check-required-params user-id)
   (call-api "/users/{user_id}" :get
             {:path-params   {"user_id" user-id }
              :header-params {"X-Fields" x-fields }
              :query-params  {}
              :form-params   {}
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    ["api_key"]})))

(defn get-user-dao
  "
  Get information of a user"
  ([user-id ] (get-user-dao user-id nil))
  ([user-id optional-params]
   (:data (get-user-dao-with-http-info user-id optional-params))))

(defn get-user-list-dao-with-http-info
  "
  Get all user"
  ([] (get-user-list-dao-with-http-info nil))
  ([{:keys [x-fields ]}]
   (call-api "/users/" :get
             {:path-params   {}
              :header-params {"X-Fields" x-fields }
              :query-params  {}
              :form-params   {}
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    ["api_key"]})))

(defn get-user-list-dao
  "
  Get all user"
  ([] (get-user-list-dao nil))
  ([optional-params]
   (:data (get-user-list-dao-with-http-info optional-params))))

(defn post-user-list-dao-with-http-info
  "
  Create a new user"
  ([payload ] (post-user-list-dao-with-http-info payload nil))
  ([payload {:keys [x-fields ]}]
   (check-required-params payload)
   (call-api "/users/" :post
             {:path-params   {}
              :header-params {"X-Fields" x-fields }
              :query-params  {}
              :form-params   {}
              :body-param    payload
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    ["api_key"]})))

(defn post-user-list-dao
  "
  Create a new user"
  ([payload ] (post-user-list-dao payload nil))
  ([payload optional-params]
   (:data (post-user-list-dao-with-http-info payload optional-params))))

(defn put-quota-dao-with-http-info
  "
  Add or subtract quota for a user"
  [user-id payload ]
  (check-required-params user-id payload)
  (call-api "/users/addquota/{user_id}" :put
            {:path-params   {"user_id" user-id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    payload
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    ["api_key"]}))

(defn put-quota-dao
  "
  Add or subtract quota for a user"
  [user-id payload ]
  (:data (put-quota-dao-with-http-info user-id payload)))

(defn put-user-dao-with-http-info
  "
  Update a user"
  ([user-id payload ] (put-user-dao-with-http-info user-id payload nil))
  ([user-id payload {:keys [x-fields ]}]
   (check-required-params user-id payload)
   (call-api "/users/{user_id}" :put
             {:path-params   {"user_id" user-id }
              :header-params {"X-Fields" x-fields }
              :query-params  {}
              :form-params   {}
              :body-param    payload
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    ["api_key"]})))

(defn put-user-dao
  "
  Update a user"
  ([user-id payload ] (put-user-dao user-id payload nil))
  ([user-id payload optional-params]
   (:data (put-user-dao-with-http-info user-id payload optional-params))))

