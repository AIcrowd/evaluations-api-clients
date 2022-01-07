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

/**
 * GraderMeta
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaClientCodegen", date = "2022-01-07T16:45:15.708Z")
public class GraderMeta {
  @SerializedName("dataset")
  private Object dataset = null;

  @SerializedName("notifications")
  private Object notifications = null;

  @SerializedName("name")
  private String name = null;

  @SerializedName("description")
  private String description = null;

  @SerializedName("cluster_id")
  private Integer clusterId = null;

  @SerializedName("meta")
  private String meta = null;

  public GraderMeta dataset(Object dataset) {
    this.dataset = dataset;
    return this;
  }

   /**
   * Dataset metadata
   * @return dataset
  **/
  @ApiModelProperty(value = "Dataset metadata")
  public Object getDataset() {
    return dataset;
  }

  public void setDataset(Object dataset) {
    this.dataset = dataset;
  }

  public GraderMeta notifications(Object notifications) {
    this.notifications = notifications;
    return this;
  }

   /**
   * Notifications available for the grader
   * @return notifications
  **/
  @ApiModelProperty(value = "Notifications available for the grader")
  public Object getNotifications() {
    return notifications;
  }

  public void setNotifications(Object notifications) {
    this.notifications = notifications;
  }

  public GraderMeta name(String name) {
    this.name = name;
    return this;
  }

   /**
   * Name of the grader
   * @return name
  **/
  @ApiModelProperty(value = "Name of the grader")
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public GraderMeta description(String description) {
    this.description = description;
    return this;
  }

   /**
   * Description of the grader
   * @return description
  **/
  @ApiModelProperty(value = "Description of the grader")
  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public GraderMeta clusterId(Integer clusterId) {
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

  public GraderMeta meta(String meta) {
    this.meta = meta;
    return this;
  }

   /**
   * Additional meta data of the grader
   * @return meta
  **/
  @ApiModelProperty(value = "Additional meta data of the grader")
  public String getMeta() {
    return meta;
  }

  public void setMeta(String meta) {
    this.meta = meta;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GraderMeta graderMeta = (GraderMeta) o;
    return Objects.equals(this.dataset, graderMeta.dataset) &&
        Objects.equals(this.notifications, graderMeta.notifications) &&
        Objects.equals(this.name, graderMeta.name) &&
        Objects.equals(this.description, graderMeta.description) &&
        Objects.equals(this.clusterId, graderMeta.clusterId) &&
        Objects.equals(this.meta, graderMeta.meta);
  }

  @Override
  public int hashCode() {
    return Objects.hash(dataset, notifications, name, description, clusterId, meta);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GraderMeta {\n");
    
    sb.append("    dataset: ").append(toIndentedString(dataset)).append("\n");
    sb.append("    notifications: ").append(toIndentedString(notifications)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    clusterId: ").append(toIndentedString(clusterId)).append("\n");
    sb.append("    meta: ").append(toIndentedString(meta)).append("\n");
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

