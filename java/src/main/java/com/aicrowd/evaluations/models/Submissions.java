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
import org.threeten.bp.OffsetDateTime;

/**
 * Submissions
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaClientCodegen", date = "2020-03-31T16:44:10.372Z")
public class Submissions {
  @SerializedName("id")
  private Integer id = null;

  @SerializedName("created")
  private OffsetDateTime created = null;

  @SerializedName("updated")
  private OffsetDateTime updated = null;

  @SerializedName("participant_id")
  private Integer participantId = null;

  @SerializedName("round_id")
  private Integer roundId = null;

  @SerializedName("grader_id")
  private Integer graderId = null;

  @SerializedName("submission_data")
  private Object submissionData = null;

  @SerializedName("status")
  private String status = null;

  @SerializedName("output")
  private String output = null;

  @SerializedName("additional_outputs")
  private Object additionalOutputs = null;

  @SerializedName("logs")
  private Object logs = null;

  @SerializedName("started")
  private OffsetDateTime started = null;

  @SerializedName("ended")
  private OffsetDateTime ended = null;

  @SerializedName("meta")
  private Object meta = null;

  @SerializedName("user_id")
  private Integer userId = null;

  @SerializedName("organisation_id")
  private Integer organisationId = null;

   /**
   * ID
   * @return id
  **/
  @ApiModelProperty(value = "ID")
  public Integer getId() {
    return id;
  }

   /**
   * Creation time
   * @return created
  **/
  @ApiModelProperty(value = "Creation time")
  public OffsetDateTime getCreated() {
    return created;
  }

   /**
   * Last updation time
   * @return updated
  **/
  @ApiModelProperty(value = "Last updation time")
  public OffsetDateTime getUpdated() {
    return updated;
  }

  public Submissions participantId(Integer participantId) {
    this.participantId = participantId;
    return this;
  }

   /**
   * Participant identifier
   * @return participantId
  **/
  @ApiModelProperty(value = "Participant identifier")
  public Integer getParticipantId() {
    return participantId;
  }

  public void setParticipantId(Integer participantId) {
    this.participantId = participantId;
  }

  public Submissions roundId(Integer roundId) {
    this.roundId = roundId;
    return this;
  }

   /**
   * Round identifier
   * @return roundId
  **/
  @ApiModelProperty(value = "Round identifier")
  public Integer getRoundId() {
    return roundId;
  }

  public void setRoundId(Integer roundId) {
    this.roundId = roundId;
  }

  public Submissions graderId(Integer graderId) {
    this.graderId = graderId;
    return this;
  }

   /**
   * Grader identifier
   * @return graderId
  **/
  @ApiModelProperty(required = true, value = "Grader identifier")
  public Integer getGraderId() {
    return graderId;
  }

  public void setGraderId(Integer graderId) {
    this.graderId = graderId;
  }

  public Submissions submissionData(Object submissionData) {
    this.submissionData = submissionData;
    return this;
  }

   /**
   * URL to the submission code
   * @return submissionData
  **/
  @ApiModelProperty(value = "URL to the submission code")
  public Object getSubmissionData() {
    return submissionData;
  }

  public void setSubmissionData(Object submissionData) {
    this.submissionData = submissionData;
  }

   /**
   * Current status of the submission
   * @return status
  **/
  @ApiModelProperty(value = "Current status of the submission")
  public String getStatus() {
    return status;
  }

   /**
   * S3 link of the output (available after the evaluation)
   * @return output
  **/
  @ApiModelProperty(value = "S3 link of the output (available after the evaluation)")
  public String getOutput() {
    return output;
  }

   /**
   * Array of any additional outputs
   * @return additionalOutputs
  **/
  @ApiModelProperty(value = "Array of any additional outputs")
  public Object getAdditionalOutputs() {
    return additionalOutputs;
  }

   /**
   * S3 link of the STDOUT of the evaluation
   * @return logs
  **/
  @ApiModelProperty(value = "S3 link of the STDOUT of the evaluation")
  public Object getLogs() {
    return logs;
  }

   /**
   * Evaluation start time
   * @return started
  **/
  @ApiModelProperty(value = "Evaluation start time")
  public OffsetDateTime getStarted() {
    return started;
  }

   /**
   * Evaluation end time
   * @return ended
  **/
  @ApiModelProperty(value = "Evaluation end time")
  public OffsetDateTime getEnded() {
    return ended;
  }

   /**
   * Additional meta-data
   * @return meta
  **/
  @ApiModelProperty(value = "Additional meta-data")
  public Object getMeta() {
    return meta;
  }

   /**
   * User ID
   * @return userId
  **/
  @ApiModelProperty(value = "User ID")
  public Integer getUserId() {
    return userId;
  }

   /**
   * Organisation ID
   * @return organisationId
  **/
  @ApiModelProperty(value = "Organisation ID")
  public Integer getOrganisationId() {
    return organisationId;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Submissions submissions = (Submissions) o;
    return Objects.equals(this.id, submissions.id) &&
        Objects.equals(this.created, submissions.created) &&
        Objects.equals(this.updated, submissions.updated) &&
        Objects.equals(this.participantId, submissions.participantId) &&
        Objects.equals(this.roundId, submissions.roundId) &&
        Objects.equals(this.graderId, submissions.graderId) &&
        Objects.equals(this.submissionData, submissions.submissionData) &&
        Objects.equals(this.status, submissions.status) &&
        Objects.equals(this.output, submissions.output) &&
        Objects.equals(this.additionalOutputs, submissions.additionalOutputs) &&
        Objects.equals(this.logs, submissions.logs) &&
        Objects.equals(this.started, submissions.started) &&
        Objects.equals(this.ended, submissions.ended) &&
        Objects.equals(this.meta, submissions.meta) &&
        Objects.equals(this.userId, submissions.userId) &&
        Objects.equals(this.organisationId, submissions.organisationId);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, created, updated, participantId, roundId, graderId, submissionData, status, output, additionalOutputs, logs, started, ended, meta, userId, organisationId);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Submissions {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    created: ").append(toIndentedString(created)).append("\n");
    sb.append("    updated: ").append(toIndentedString(updated)).append("\n");
    sb.append("    participantId: ").append(toIndentedString(participantId)).append("\n");
    sb.append("    roundId: ").append(toIndentedString(roundId)).append("\n");
    sb.append("    graderId: ").append(toIndentedString(graderId)).append("\n");
    sb.append("    submissionData: ").append(toIndentedString(submissionData)).append("\n");
    sb.append("    status: ").append(toIndentedString(status)).append("\n");
    sb.append("    output: ").append(toIndentedString(output)).append("\n");
    sb.append("    additionalOutputs: ").append(toIndentedString(additionalOutputs)).append("\n");
    sb.append("    logs: ").append(toIndentedString(logs)).append("\n");
    sb.append("    started: ").append(toIndentedString(started)).append("\n");
    sb.append("    ended: ").append(toIndentedString(ended)).append("\n");
    sb.append("    meta: ").append(toIndentedString(meta)).append("\n");
    sb.append("    userId: ").append(toIndentedString(userId)).append("\n");
    sb.append("    organisationId: ").append(toIndentedString(organisationId)).append("\n");
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

