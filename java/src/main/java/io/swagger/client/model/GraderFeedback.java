/*
 * Evaluations API
 * API to create and evaluate custom challenges
 *
 * OpenAPI spec version: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */


package io.swagger.client.model;

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

/**
 * GraderFeedback
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaClientCodegen", date = "2020-02-14T17:38:40.636Z")
public class GraderFeedback {
  @SerializedName("status")
  private Boolean status = null;

  @SerializedName("workflow_spec")
  private String workflowSpec = null;

  public GraderFeedback status(Boolean status) {
    this.status = status;
    return this;
  }

   /**
   * Status of the grader
   * @return status
  **/
  @ApiModelProperty(required = true, value = "Status of the grader")
  public Boolean isStatus() {
    return status;
  }

  public void setStatus(Boolean status) {
    this.status = status;
  }

  public GraderFeedback workflowSpec(String workflowSpec) {
    this.workflowSpec = workflowSpec;
    return this;
  }

   /**
   * Serialized YAML workflow spec
   * @return workflowSpec
  **/
  @ApiModelProperty(required = true, value = "Serialized YAML workflow spec")
  public String getWorkflowSpec() {
    return workflowSpec;
  }

  public void setWorkflowSpec(String workflowSpec) {
    this.workflowSpec = workflowSpec;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GraderFeedback graderFeedback = (GraderFeedback) o;
    return Objects.equals(this.status, graderFeedback.status) &&
        Objects.equals(this.workflowSpec, graderFeedback.workflowSpec);
  }

  @Override
  public int hashCode() {
    return Objects.hash(status, workflowSpec);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GraderFeedback {\n");
    
    sb.append("    status: ").append(toIndentedString(status)).append("\n");
    sb.append("    workflowSpec: ").append(toIndentedString(workflowSpec)).append("\n");
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

