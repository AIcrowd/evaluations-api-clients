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
 * GenericFeedback
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaClientCodegen", date = "2020-02-13T14:50:26.367Z")
public class GenericFeedback {
  @SerializedName("status")
  private Boolean status = null;

  @SerializedName("meta")
  private Object meta = null;

  public GenericFeedback status(Boolean status) {
    this.status = status;
    return this;
  }

   /**
   * Status of the operation
   * @return status
  **/
  @ApiModelProperty(required = true, value = "Status of the operation")
  public Boolean isStatus() {
    return status;
  }

  public void setStatus(Boolean status) {
    this.status = status;
  }

  public GenericFeedback meta(Object meta) {
    this.meta = meta;
    return this;
  }

   /**
   * Additional metadata to add
   * @return meta
  **/
  @ApiModelProperty(value = "Additional metadata to add")
  public Object getMeta() {
    return meta;
  }

  public void setMeta(Object meta) {
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
    GenericFeedback genericFeedback = (GenericFeedback) o;
    return Objects.equals(this.status, genericFeedback.status) &&
        Objects.equals(this.meta, genericFeedback.meta);
  }

  @Override
  public int hashCode() {
    return Objects.hash(status, meta);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GenericFeedback {\n");
    
    sb.append("    status: ").append(toIndentedString(status)).append("\n");
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

