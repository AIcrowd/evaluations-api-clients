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
 * User
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaClientCodegen", date = "2020-04-01T20:00:11.416Z")
public class User {
  @SerializedName("id")
  private Integer id = null;

  @SerializedName("email")
  private String email = null;

  @SerializedName("admin")
  private Boolean admin = null;

  @SerializedName("created_on")
  private OffsetDateTime createdOn = null;

  @SerializedName("password_hash")
  private String passwordHash = null;

  @SerializedName("total_quota")
  private Integer totalQuota = null;

  @SerializedName("quota")
  private Integer quota = null;

  @SerializedName("organisation_id")
  private Integer organisationId = null;

  @SerializedName("password")
  private String password = null;

   /**
   * ID
   * @return id
  **/
  @ApiModelProperty(value = "ID")
  public Integer getId() {
    return id;
  }

  public User email(String email) {
    this.email = email;
    return this;
  }

   /**
   * Email
   * @return email
  **/
  @ApiModelProperty(required = true, value = "Email")
  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public User admin(Boolean admin) {
    this.admin = admin;
    return this;
  }

   /**
   * Admin Boolean
   * @return admin
  **/
  @ApiModelProperty(value = "Admin Boolean")
  public Boolean isAdmin() {
    return admin;
  }

  public void setAdmin(Boolean admin) {
    this.admin = admin;
  }

   /**
   * Creation Time
   * @return createdOn
  **/
  @ApiModelProperty(value = "Creation Time")
  public OffsetDateTime getCreatedOn() {
    return createdOn;
  }

   /**
   * Hashed Password
   * @return passwordHash
  **/
  @ApiModelProperty(value = "Hashed Password")
  public String getPasswordHash() {
    return passwordHash;
  }

   /**
   * Total assigned evaluation quota
   * @return totalQuota
  **/
  @ApiModelProperty(value = "Total assigned evaluation quota")
  public Integer getTotalQuota() {
    return totalQuota;
  }

   /**
   * Available evaluation quota
   * @return quota
  **/
  @ApiModelProperty(value = "Available evaluation quota")
  public Integer getQuota() {
    return quota;
  }

  public User organisationId(Integer organisationId) {
    this.organisationId = organisationId;
    return this;
  }

   /**
   * Organisation identifier
   * @return organisationId
  **/
  @ApiModelProperty(required = true, value = "Organisation identifier")
  public Integer getOrganisationId() {
    return organisationId;
  }

  public void setOrganisationId(Integer organisationId) {
    this.organisationId = organisationId;
  }

  public User password(String password) {
    this.password = password;
    return this;
  }

   /**
   * user password
   * @return password
  **/
  @ApiModelProperty(required = true, value = "user password")
  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    User user = (User) o;
    return Objects.equals(this.id, user.id) &&
        Objects.equals(this.email, user.email) &&
        Objects.equals(this.admin, user.admin) &&
        Objects.equals(this.createdOn, user.createdOn) &&
        Objects.equals(this.passwordHash, user.passwordHash) &&
        Objects.equals(this.totalQuota, user.totalQuota) &&
        Objects.equals(this.quota, user.quota) &&
        Objects.equals(this.organisationId, user.organisationId) &&
        Objects.equals(this.password, user.password);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, email, admin, createdOn, passwordHash, totalQuota, quota, organisationId, password);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class User {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    email: ").append(toIndentedString(email)).append("\n");
    sb.append("    admin: ").append(toIndentedString(admin)).append("\n");
    sb.append("    createdOn: ").append(toIndentedString(createdOn)).append("\n");
    sb.append("    passwordHash: ").append(toIndentedString(passwordHash)).append("\n");
    sb.append("    totalQuota: ").append(toIndentedString(totalQuota)).append("\n");
    sb.append("    quota: ").append(toIndentedString(quota)).append("\n");
    sb.append("    organisationId: ").append(toIndentedString(organisationId)).append("\n");
    sb.append("    password: ").append(toIndentedString(password)).append("\n");
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

