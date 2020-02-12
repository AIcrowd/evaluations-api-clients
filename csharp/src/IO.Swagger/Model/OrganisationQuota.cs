/* 
 * Evaluations API
 *
 * API to create and evaluate custom challenges
 *
 * OpenAPI spec version: 1.0.0
 * 
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 */

using System;
using System.Linq;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Runtime.Serialization;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using System.ComponentModel.DataAnnotations;
using SwaggerDateConverter = IO.Swagger.Client.SwaggerDateConverter;

namespace IO.Swagger.Model
{
    /// <summary>
    /// OrganisationQuota
    /// </summary>
    [DataContract]
    public partial class OrganisationQuota :  IEquatable<OrganisationQuota>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="OrganisationQuota" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected OrganisationQuota() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="OrganisationQuota" /> class.
        /// </summary>
        /// <param name="quota">Quota to be added or reduced (required).</param>
        public OrganisationQuota(int? quota = default(int?))
        {
            // to ensure "quota" is required (not null)
            if (quota == null)
            {
                throw new InvalidDataException("quota is a required property for OrganisationQuota and cannot be null");
            }
            else
            {
                this.Quota = quota;
            }
        }
        
        /// <summary>
        /// Quota to be added or reduced
        /// </summary>
        /// <value>Quota to be added or reduced</value>
        [DataMember(Name="quota", EmitDefaultValue=false)]
        public int? Quota { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class OrganisationQuota {\n");
            sb.Append("  Quota: ").Append(Quota).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }
  
        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public virtual string ToJson()
        {
            return JsonConvert.SerializeObject(this, Formatting.Indented);
        }

        /// <summary>
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="input">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object input)
        {
            return this.Equals(input as OrganisationQuota);
        }

        /// <summary>
        /// Returns true if OrganisationQuota instances are equal
        /// </summary>
        /// <param name="input">Instance of OrganisationQuota to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(OrganisationQuota input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.Quota == input.Quota ||
                    (this.Quota != null &&
                    this.Quota.Equals(input.Quota))
                );
        }

        /// <summary>
        /// Gets the hash code
        /// </summary>
        /// <returns>Hash code</returns>
        public override int GetHashCode()
        {
            unchecked // Overflow is fine, just wrap
            {
                int hashCode = 41;
                if (this.Quota != null)
                    hashCode = hashCode * 59 + this.Quota.GetHashCode();
                return hashCode;
            }
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}
