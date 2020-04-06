package com.aicrowd.evaluations.models;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
@Canonical
class Login {

  /* Email address of the user */
  String email = null

  /* Password corresponding to the Email address */
  String password = null
  

}

