package com.aicrowd.evaluations.models;

import groovy.transform.Canonical
import com.aicrowd.evaluations.models.Date;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
@Canonical
class User {

  /* ID */
  Integer id = null

  /* Email */
  String email = null

  /* Admin Boolean */
  Boolean admin = null

  /* Creation Time */
  Date createdOn = null

  /* Hashed Password */
  String passwordHash = null

  /* Total assigned evaluation quota */
  Integer totalQuota = null

  /* Available evaluation quota */
  Integer quota = null

  /* Organisation identifier */
  Integer organisationId = null

  /* user password */
  String password = null
  

}

