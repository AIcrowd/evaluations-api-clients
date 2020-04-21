package com.aicrowd.evaluations.models;

import groovy.transform.Canonical
import com.aicrowd.evaluations.models.Date;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
@Canonical
class Organisation {

  /* ID */
  Integer id = null

  /* Organisation Name */
  String name = null

  /* Point of contact email */
  String pocEmail = null

  /* Creation Time */
  Date createdOn = null

  /* Total assigned evaluation quota */
  Integer totalQuota = null

  /* Available evaluation quota */
  Integer quota = null
  

}

