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
import org.threeten.bp.OffsetDateTime;

/**
 * Cluster
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaClientCodegen", date = "2020-02-13T14:25:26.826Z")
public class Cluster {
  @SerializedName("id")
  private Integer id = null;

  @SerializedName("created")
  private OffsetDateTime created = null;

  @SerializedName("updated")
  private OffsetDateTime updated = null;

  @SerializedName("remote_address")
  private String remoteAddress = null;

  @SerializedName("auth_token")
  private String authToken = null;

  @SerializedName("storage_class")
  private String storageClass = null;

  @SerializedName("status")
  private Boolean status = null;

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

  public Cluster remoteAddress(String remoteAddress) {
    this.remoteAddress = remoteAddress;
    return this;
  }

   /**
   * Remote address used to connect to the cluster
   * @return remoteAddress
  **/
  @ApiModelProperty(required = true, value = "Remote address used to connect to the cluster")
  public String getRemoteAddress() {
    return remoteAddress;
  }

  public void setRemoteAddress(String remoteAddress) {
    this.remoteAddress = remoteAddress;
  }

  public Cluster authToken(String authToken) {
    this.authToken = authToken;
    return this;
  }

   /**
   * Authentication needed for the cluster
   * @return authToken
  **/
  @ApiModelProperty(required = true, value = "Authentication needed for the cluster")
  public String getAuthToken() {
    return authToken;
  }

  public void setAuthToken(String authToken) {
    this.authToken = authToken;
  }

  public Cluster storageClass(String storageClass) {
    this.storageClass = storageClass;
    return this;
  }

   /**
   * Storage class to use for datasets
   * @return storageClass
  **/
  @ApiModelProperty(value = "Storage class to use for datasets")
  public String getStorageClass() {
    return storageClass;
  }

  public void setStorageClass(String storageClass) {
    this.storageClass = storageClass;
  }

   /**
   * Readiness of the cluster
   * @return status
  **/
  @ApiModelProperty(value = "Readiness of the cluster")
  public Boolean isStatus() {
    return status;
  }

   /**
   * Additional metadata
   * @return meta
  **/
  @ApiModelProperty(value = "Additional metadata")
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
    Cluster cluster = (Cluster) o;
    return Objects.equals(this.id, cluster.id) &&
        Objects.equals(this.created, cluster.created) &&
        Objects.equals(this.updated, cluster.updated) &&
        Objects.equals(this.remoteAddress, cluster.remoteAddress) &&
        Objects.equals(this.authToken, cluster.authToken) &&
        Objects.equals(this.storageClass, cluster.storageClass) &&
        Objects.equals(this.status, cluster.status) &&
        Objects.equals(this.meta, cluster.meta) &&
        Objects.equals(this.userId, cluster.userId) &&
        Objects.equals(this.organisationId, cluster.organisationId);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, created, updated, remoteAddress, authToken, storageClass, status, meta, userId, organisationId);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Cluster {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    created: ").append(toIndentedString(created)).append("\n");
    sb.append("    updated: ").append(toIndentedString(updated)).append("\n");
    sb.append("    remoteAddress: ").append(toIndentedString(remoteAddress)).append("\n");
    sb.append("    authToken: ").append(toIndentedString(authToken)).append("\n");
    sb.append("    storageClass: ").append(toIndentedString(storageClass)).append("\n");
    sb.append("    status: ").append(toIndentedString(status)).append("\n");
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

