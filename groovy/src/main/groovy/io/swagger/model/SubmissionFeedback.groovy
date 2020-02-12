package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.BigDecimal;
@Canonical
class SubmissionFeedback {

  /* Status of the submission */
  String status = null

  /* S3 link of the outputs */
  String outputs = null

  /* Additional outputs */
  BigDecimal score = null

  /* Output on stdout for run-evaluator.run-submitted-code step */
  String logs = null
  

}

