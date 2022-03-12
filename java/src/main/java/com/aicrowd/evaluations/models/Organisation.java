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
 * Organisation
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaClientCodegen", date = "2022-03-12T21:34:17.426Z")
public class Organisation {
  @SerializedName("id")
  private Integer id = null;

  @SerializedName("name")
  private String name = null;

  @SerializedName("poc_email")
  private String pocEmail = null;

  @SerializedName("created_on")
  private OffsetDateTime createdOn = null;

  @SerializedName("total_quota")
  private Integer totalQuota = null;

  @SerializedName("quota")
  private Integer quota = null;

   /**
   * ID
   * @return id
  **/
  @ApiModelProperty(value = "ID")
  public Integer getId() {
    return id;
  }

  public Organisation name(String name) {
    this.name = name;
    return this;
  }

   /**
   * Organisation Name
   * @return name
  **/
  @ApiModelProperty(required = true, value = "Organisation Name")
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public Organisation pocEmail(String pocEmail) {
    this.pocEmail = pocEmail;
    return this;
  }

   /**
   * Point of contact email
   * @return pocEmail
  **/
  @ApiModelProperty(required = true, value = "Point of contact email")
  public String getPocEmail() {
    return pocEmail;
  }

  public void setPocEmail(String pocEmail) {
    this.pocEmail = pocEmail;
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


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Organisation organisation = (Organisation) o;
    return Objects.equals(this.id, organisation.id) &&
        Objects.equals(this.name, organisation.name) &&
        Objects.equals(this.pocEmail, organisation.pocEmail) &&
        Objects.equals(this.createdOn, organisation.createdOn) &&
        Objects.equals(this.totalQuota, organisation.totalQuota) &&
        Objects.equals(this.quota, organisation.quota);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, name, pocEmail, createdOn, totalQuota, quota);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Organisation {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    pocEmail: ").append(toIndentedString(pocEmail)).append("\n");
    sb.append("    createdOn: ").append(toIndentedString(createdOn)).append("\n");
    sb.append("    totalQuota: ").append(toIndentedString(totalQuota)).append("\n");
    sb.append("    quota: ").append(toIndentedString(quota)).append("\n");
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

