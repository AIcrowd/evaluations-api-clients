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
 * SubmissionRetryInput
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaClientCodegen", date = "2022-01-07T17:32:28.792Z")
public class SubmissionRetryInput {
  @SerializedName("submissions")
  private List<Integer> submissions = null;

  public SubmissionRetryInput submissions(List<Integer> submissions) {
    this.submissions = submissions;
    return this;
  }

  public SubmissionRetryInput addSubmissionsItem(Integer submissionsItem) {
    if (this.submissions == null) {
      this.submissions = new ArrayList<Integer>();
    }
    this.submissions.add(submissionsItem);
    return this;
  }

   /**
   * List of submission IDs to retry
   * @return submissions
  **/
  @ApiModelProperty(value = "List of submission IDs to retry")
  public List<Integer> getSubmissions() {
    return submissions;
  }

  public void setSubmissions(List<Integer> submissions) {
    this.submissions = submissions;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SubmissionRetryInput submissionRetryInput = (SubmissionRetryInput) o;
    return Objects.equals(this.submissions, submissionRetryInput.submissions);
  }

  @Override
  public int hashCode() {
    return Objects.hash(submissions);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SubmissionRetryInput {\n");
    
    sb.append("    submissions: ").append(toIndentedString(submissions)).append("\n");
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

