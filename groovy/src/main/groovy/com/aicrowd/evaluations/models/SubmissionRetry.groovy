package com.aicrowd.evaluations.models;

import groovy.transform.Canonical
import com.aicrowd.evaluations.models.ArrayList;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.List;
@Canonical
class SubmissionRetry {

  /* List of submission IDs queued for evaluation */
  Object queued = null

  /* List of submission IDs failed to get queued */
  List<Integer> failed = new ArrayList<Integer>()
  

}

