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
 * Grader
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaClientCodegen", date = "2020-04-06T14:32:31.128Z")
public class Grader {
  @SerializedName("id")
  private Integer id = null;

  @SerializedName("created")
  private OffsetDateTime created = null;

  @SerializedName("updated")
  private OffsetDateTime updated = null;

  @SerializedName("dataset_url")
  private String datasetUrl = null;

  @SerializedName("cluster_id")
  private Integer clusterId = null;

  @SerializedName("workflow_spec")
  private Object workflowSpec = null;

  @SerializedName("evaluator_repo")
  private String evaluatorRepo = null;

  @SerializedName("evaluator_repo_tag")
  private String evaluatorRepoTag = null;

  @SerializedName("storage_capacity")
  private String storageCapacity = null;

  @SerializedName("logs")
  private Object logs = null;

  @SerializedName("meta")
  private Object meta = null;

  @SerializedName("status")
  private String status = null;

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

  public Grader datasetUrl(String datasetUrl) {
    this.datasetUrl = datasetUrl;
    return this;
  }

   /**
   * S3 link of the Dataset
   * @return datasetUrl
  **/
  @ApiModelProperty(value = "S3 link of the Dataset")
  public String getDatasetUrl() {
    return datasetUrl;
  }

  public void setDatasetUrl(String datasetUrl) {
    this.datasetUrl = datasetUrl;
  }

  public Grader clusterId(Integer clusterId) {
    this.clusterId = clusterId;
    return this;
  }

   /**
   * Cluster to run the grader on
   * @return clusterId
  **/
  @ApiModelProperty(value = "Cluster to run the grader on")
  public Integer getClusterId() {
    return clusterId;
  }

  public void setClusterId(Integer clusterId) {
    this.clusterId = clusterId;
  }

   /**
   * Argo workflow template spec
   * @return workflowSpec
  **/
  @ApiModelProperty(value = "Argo workflow template spec")
  public Object getWorkflowSpec() {
    return workflowSpec;
  }

  public Grader evaluatorRepo(String evaluatorRepo) {
    this.evaluatorRepo = evaluatorRepo;
    return this;
  }

   /**
   * Git URL of the repository containing the code that will be used for the evaluation
   * @return evaluatorRepo
  **/
  @ApiModelProperty(required = true, value = "Git URL of the repository containing the code that will be used for the evaluation")
  public String getEvaluatorRepo() {
    return evaluatorRepo;
  }

  public void setEvaluatorRepo(String evaluatorRepo) {
    this.evaluatorRepo = evaluatorRepo;
  }

  public Grader evaluatorRepoTag(String evaluatorRepoTag) {
    this.evaluatorRepoTag = evaluatorRepoTag;
    return this;
  }

   /**
   * Git branch/tag that should be used with the evaluator repository.
   * @return evaluatorRepoTag
  **/
  @ApiModelProperty(value = "Git branch/tag that should be used with the evaluator repository.")
  public String getEvaluatorRepoTag() {
    return evaluatorRepoTag;
  }

  public void setEvaluatorRepoTag(String evaluatorRepoTag) {
    this.evaluatorRepoTag = evaluatorRepoTag;
  }

  public Grader storageCapacity(String storageCapacity) {
    this.storageCapacity = storageCapacity;
    return this;
  }

   /**
   * Size of the dataset partition to request. Please provide at least 2x of the size of the dataset.
   * @return storageCapacity
  **/
  @ApiModelProperty(value = "Size of the dataset partition to request. Please provide at least 2x of the size of the dataset.")
  public String getStorageCapacity() {
    return storageCapacity;
  }

  public void setStorageCapacity(String storageCapacity) {
    this.storageCapacity = storageCapacity;
  }

   /**
   * Logs from argo workflow
   * @return logs
  **/
  @ApiModelProperty(value = "Logs from argo workflow")
  public Object getLogs() {
    return logs;
  }

   /**
   * Additional meta data of the grader
   * @return meta
  **/
  @ApiModelProperty(value = "Additional meta data of the grader")
  public Object getMeta() {
    return meta;
  }

   /**
   * Status of the grader - True if it ready, False otherwise
   * @return status
  **/
  @ApiModelProperty(value = "Status of the grader - True if it ready, False otherwise")
  public String getStatus() {
    return status;
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
    Grader grader = (Grader) o;
    return Objects.equals(this.id, grader.id) &&
        Objects.equals(this.created, grader.created) &&
        Objects.equals(this.updated, grader.updated) &&
        Objects.equals(this.datasetUrl, grader.datasetUrl) &&
        Objects.equals(this.clusterId, grader.clusterId) &&
        Objects.equals(this.workflowSpec, grader.workflowSpec) &&
        Objects.equals(this.evaluatorRepo, grader.evaluatorRepo) &&
        Objects.equals(this.evaluatorRepoTag, grader.evaluatorRepoTag) &&
        Objects.equals(this.storageCapacity, grader.storageCapacity) &&
        Objects.equals(this.logs, grader.logs) &&
        Objects.equals(this.meta, grader.meta) &&
        Objects.equals(this.status, grader.status) &&
        Objects.equals(this.userId, grader.userId) &&
        Objects.equals(this.organisationId, grader.organisationId);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, created, updated, datasetUrl, clusterId, workflowSpec, evaluatorRepo, evaluatorRepoTag, storageCapacity, logs, meta, status, userId, organisationId);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Grader {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    created: ").append(toIndentedString(created)).append("\n");
    sb.append("    updated: ").append(toIndentedString(updated)).append("\n");
    sb.append("    datasetUrl: ").append(toIndentedString(datasetUrl)).append("\n");
    sb.append("    clusterId: ").append(toIndentedString(clusterId)).append("\n");
    sb.append("    workflowSpec: ").append(toIndentedString(workflowSpec)).append("\n");
    sb.append("    evaluatorRepo: ").append(toIndentedString(evaluatorRepo)).append("\n");
    sb.append("    evaluatorRepoTag: ").append(toIndentedString(evaluatorRepoTag)).append("\n");
    sb.append("    storageCapacity: ").append(toIndentedString(storageCapacity)).append("\n");
    sb.append("    logs: ").append(toIndentedString(logs)).append("\n");
    sb.append("    meta: ").append(toIndentedString(meta)).append("\n");
    sb.append("    status: ").append(toIndentedString(status)).append("\n");
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

