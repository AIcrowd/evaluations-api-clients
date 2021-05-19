/*
 * AIcrowd Evaluations API
 * API to create and evaluate custom challenges on AIcrowd!
 *
 * OpenAPI spec version: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */


package com.aicrowd.evaluations.models;

import java.util.Objects;
import java.util.Arrays;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * SubmissionRetry
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaClientCodegen", date = "2021-05-19T22:53:00.630Z")
public class SubmissionRetry {
  @SerializedName("queued")
  private Object queued = null;

  @SerializedName("failed")
  private List<Integer> failed = null;

  public SubmissionRetry queued(Object queued) {
    this.queued = queued;
    return this;
  }

   /**
   * List of submission IDs queued for evaluation
   * @return queued
  **/
  @ApiModelProperty(value = "List of submission IDs queued for evaluation")
  public Object getQueued() {
    return queued;
  }

  public void setQueued(Object queued) {
    this.queued = queued;
  }

  public SubmissionRetry failed(List<Integer> failed) {
    this.failed = failed;
    return this;
  }

  public SubmissionRetry addFailedItem(Integer failedItem) {
    if (this.failed == null) {
      this.failed = new ArrayList<Integer>();
    }
    this.failed.add(failedItem);
    return this;
  }

   /**
   * List of submission IDs failed to get queued
   * @return failed
  **/
  @ApiModelProperty(value = "List of submission IDs failed to get queued")
  public List<Integer> getFailed() {
    return failed;
  }

  public void setFailed(List<Integer> failed) {
    this.failed = failed;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SubmissionRetry submissionRetry = (SubmissionRetry) o;
    return Objects.equals(this.queued, submissionRetry.queued) &&
        Objects.equals(this.failed, submissionRetry.failed);
  }

  @Override
  public int hashCode() {
    return Objects.hash(queued, failed);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SubmissionRetry {\n");
    
    sb.append("    queued: ").append(toIndentedString(queued)).append("\n");
    sb.append("    failed: ").append(toIndentedString(failed)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }

}

