(ns aicrowd-evaluations.api.users
  (:require [aicrowd-evaluations.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn create-user-with-http-info
  "
  Create a new user"
  ([payload ] (create-user-with-http-info payload nil))
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

(defn create-user
  "
  Create a new user"
  ([payload ] (create-user payload nil))
  ([payload optional-params]
   (:data (create-user-with-http-info payload optional-params))))

(defn delete-user-with-http-info
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

(defn delete-user
  "
  Delete a user"
  [user-id ]
  (:data (delete-user-with-http-info user-id)))

(defn get-user-with-http-info
  "
  Get information of a user"
  ([user-id ] (get-user-with-http-info user-id nil))
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

(defn get-user
  "
  Get information of a user"
  ([user-id ] (get-user user-id nil))
  ([user-id optional-params]
   (:data (get-user-with-http-info user-id optional-params))))

(defn list-users-with-http-info
  "
  Get all user"
  ([] (list-users-with-http-info nil))
  ([{:keys [x-fields ]}]
   (call-api "/users/" :get
             {:path-params   {}
              :header-params {"X-Fields" x-fields }
              :query-params  {}
              :form-params   {}
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    ["api_key"]})))

(defn list-users
  "
  Get all user"
  ([] (list-users nil))
  ([optional-params]
   (:data (list-users-with-http-info optional-params))))

(defn update-user-with-http-info
  "
  Update a user"
  ([user-id payload ] (update-user-with-http-info user-id payload nil))
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

(defn update-user
  "
  Update a user"
  ([user-id payload ] (update-user user-id payload nil))
  ([user-id payload optional-params]
   (:data (update-user-with-http-info user-id payload optional-params))))

(defn update-user-quota-with-http-info
  "
  Add or subtract quota for a user"
  [user-id payload ]
  (check-required-params user-id payload)
  (call-api "/users/{user_id}/addquota" :put
            {:path-params   {"user_id" user-id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    payload
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    ["api_key"]}))

(defn update-user-quota
  "
  Add or subtract quota for a user"
  [user-id payload ]
  (:data (update-user-quota-with-http-info user-id payload)))

