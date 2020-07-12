package com.aicrowd.evaluations.models;

import groovy.transform.Canonical
import com.aicrowd.evaluations.models.ArrayList;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.List;
@Canonical
class SubmissionRetryInput {

  /* List of submission IDs to retry */
  List<Integer> submissions = new ArrayList<Integer>()
  

}

