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
import org.threeten.bp.OffsetDateTime;

/**
 * Cluster
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaClientCodegen", date = "2020-09-12T18:16:10.196Z")



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

  @SerializedName("docker_username")
  private String dockerUsername = null;

  @SerializedName("docker_registry")
  private String dockerRegistry = null;

  @SerializedName("namespace")
  private String namespace = null;

  @SerializedName("storage_class")
  private String storageClass = null;

  @SerializedName("status")
  private Boolean status = null;

  @SerializedName("wf_name")
  private String wfName = null;

  @SerializedName("argo_host")
  private String argoHost = null;

  @SerializedName("argo_token")
  private String argoToken = null;

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

  public Cluster dockerUsername(String dockerUsername) {
    this.dockerUsername = dockerUsername;
    return this;
  }

   /**
   * Docker registry username
   * @return dockerUsername
  **/
  @ApiModelProperty(required = true, value = "Docker registry username")
  public String getDockerUsername() {
    return dockerUsername;
  }

  public void setDockerUsername(String dockerUsername) {
    this.dockerUsername = dockerUsername;
  }

  public Cluster dockerRegistry(String dockerRegistry) {
    this.dockerRegistry = dockerRegistry;
    return this;
  }

   /**
   * Docker registry URL. Dockerhub is used by default.
   * @return dockerRegistry
  **/
  @ApiModelProperty(value = "Docker registry URL. Dockerhub is used by default.")
  public String getDockerRegistry() {
    return dockerRegistry;
  }

  public void setDockerRegistry(String dockerRegistry) {
    this.dockerRegistry = dockerRegistry;
  }

  public Cluster namespace(String namespace) {
    this.namespace = namespace;
    return this;
  }

   /**
   * Kubernetes namespace to run the workflows in
   * @return namespace
  **/
  @ApiModelProperty(value = "Kubernetes namespace to run the workflows in")
  public String getNamespace() {
    return namespace;
  }

  public void setNamespace(String namespace) {
    this.namespace = namespace;
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
   * Name of the workflow used to setup grader
   * @return wfName
  **/
  @ApiModelProperty(value = "Name of the workflow used to setup grader")
  public String getWfName() {
    return wfName;
  }

   /**
   * External IP exposed by LoadBalancer Service of argo-server deployment
   * @return argoHost
  **/
  @ApiModelProperty(value = "External IP exposed by LoadBalancer Service of argo-server deployment")
  public String getArgoHost() {
    return argoHost;
  }

  public Cluster argoToken(String argoToken) {
    this.argoToken = argoToken;
    return this;
  }

   /**
   * Argo server token required for authentication
   * @return argoToken
  **/
  @ApiModelProperty(value = "Argo server token required for authentication")
  public String getArgoToken() {
    return argoToken;
  }

  public void setArgoToken(String argoToken) {
    this.argoToken = argoToken;
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
        Objects.equals(this.dockerUsername, cluster.dockerUsername) &&
        Objects.equals(this.dockerRegistry, cluster.dockerRegistry) &&
        Objects.equals(this.namespace, cluster.namespace) &&
        Objects.equals(this.storageClass, cluster.storageClass) &&
        Objects.equals(this.status, cluster.status) &&
        Objects.equals(this.wfName, cluster.wfName) &&
        Objects.equals(this.argoHost, cluster.argoHost) &&
        Objects.equals(this.argoToken, cluster.argoToken) &&
        Objects.equals(this.userId, cluster.userId) &&
        Objects.equals(this.organisationId, cluster.organisationId);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, created, updated, remoteAddress, authToken, dockerUsername, dockerRegistry, namespace, storageClass, status, wfName, argoHost, argoToken, userId, organisationId);
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
    sb.append("    dockerUsername: ").append(toIndentedString(dockerUsername)).append("\n");
    sb.append("    dockerRegistry: ").append(toIndentedString(dockerRegistry)).append("\n");
    sb.append("    namespace: ").append(toIndentedString(namespace)).append("\n");
    sb.append("    storageClass: ").append(toIndentedString(storageClass)).append("\n");
    sb.append("    status: ").append(toIndentedString(status)).append("\n");
    sb.append("    wfName: ").append(toIndentedString(wfName)).append("\n");
    sb.append("    argoHost: ").append(toIndentedString(argoHost)).append("\n");
    sb.append("    argoToken: ").append(toIndentedString(argoToken)).append("\n");
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

