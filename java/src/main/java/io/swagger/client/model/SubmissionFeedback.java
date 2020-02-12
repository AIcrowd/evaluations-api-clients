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
import java.math.BigDecimal;

/**
 * SubmissionFeedback
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaClientCodegen", date = "2020-02-12T18:56:24.855Z")
public class SubmissionFeedback {
  @SerializedName("status")
  private String status = null;

  @SerializedName("outputs")
  private String outputs = null;

  @SerializedName("score")
  private BigDecimal score = null;

  @SerializedName("logs")
  private String logs = null;

  public SubmissionFeedback status(String status) {
    this.status = status;
    return this;
  }

   /**
   * Status of the submission
   * @return status
  **/
  @ApiModelProperty(required = true, value = "Status of the submission")
  public String getStatus() {
    return status;
  }

  public void setStatus(String status) {
    this.status = status;
  }

  public SubmissionFeedback outputs(String outputs) {
    this.outputs = outputs;
    return this;
  }

   /**
   * S3 link of the outputs
   * @return outputs
  **/
  @ApiModelProperty(required = true, value = "S3 link of the outputs")
  public String getOutputs() {
    return outputs;
  }

  public void setOutputs(String outputs) {
    this.outputs = outputs;
  }

  public SubmissionFeedback score(BigDecimal score) {
    this.score = score;
    return this;
  }

   /**
   * Additional outputs
   * @return score
  **/
  @ApiModelProperty(required = true, value = "Additional outputs")
  public BigDecimal getScore() {
    return score;
  }

  public void setScore(BigDecimal score) {
    this.score = score;
  }

  public SubmissionFeedback logs(String logs) {
    this.logs = logs;
    return this;
  }

   /**
   * Output on stdout for run-evaluator.run-submitted-code step
   * @return logs
  **/
  @ApiModelProperty(required = true, value = "Output on stdout for run-evaluator.run-submitted-code step")
  public String getLogs() {
    return logs;
  }

  public void setLogs(String logs) {
    this.logs = logs;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SubmissionFeedback submissionFeedback = (SubmissionFeedback) o;
    return Objects.equals(this.status, submissionFeedback.status) &&
        Objects.equals(this.outputs, submissionFeedback.outputs) &&
        Objects.equals(this.score, submissionFeedback.score) &&
        Objects.equals(this.logs, submissionFeedback.logs);
  }

  @Override
  public int hashCode() {
    return Objects.hash(status, outputs, score, logs);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SubmissionFeedback {\n");
    
    sb.append("    status: ").append(toIndentedString(status)).append("\n");
    sb.append("    outputs: ").append(toIndentedString(outputs)).append("\n");
    sb.append("    score: ").append(toIndentedString(score)).append("\n");
    sb.append("    logs: ").append(toIndentedString(logs)).append("\n");
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

