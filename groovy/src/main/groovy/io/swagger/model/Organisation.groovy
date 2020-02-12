package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.Date;
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

