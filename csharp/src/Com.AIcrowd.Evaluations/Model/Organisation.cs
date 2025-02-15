/* 
 * AIcrowd Evaluations API
 *
 * API to create and evaluate custom challenges on AIcrowd!
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
using SwaggerDateConverter = Com.AIcrowd.Evaluations.Client.SwaggerDateConverter;

namespace Com.AIcrowd.Evaluations.Model
{
    /// <summary>
    /// Organisation
    /// </summary>
    [DataContract]
    public partial class Organisation :  IEquatable<Organisation>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="Organisation" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected Organisation() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="Organisation" /> class.
        /// </summary>
        /// <param name="name">Organisation Name (required).</param>
        /// <param name="pocEmail">Point of contact email (required).</param>
        public Organisation(string name = default(string), string pocEmail = default(string))
        {
            // to ensure "name" is required (not null)
            if (name == null)
            {
                throw new InvalidDataException("name is a required property for Organisation and cannot be null");
            }
            else
            {
                this.Name = name;
            }
            // to ensure "pocEmail" is required (not null)
            if (pocEmail == null)
            {
                throw new InvalidDataException("pocEmail is a required property for Organisation and cannot be null");
            }
            else
            {
                this.PocEmail = pocEmail;
            }
        }
        
        /// <summary>
        /// ID
        /// </summary>
        /// <value>ID</value>
        [DataMember(Name="id", EmitDefaultValue=false)]
        public int? Id { get; private set; }

        /// <summary>
        /// Organisation Name
        /// </summary>
        /// <value>Organisation Name</value>
        [DataMember(Name="name", EmitDefaultValue=false)]
        public string Name { get; set; }

        /// <summary>
        /// Point of contact email
        /// </summary>
        /// <value>Point of contact email</value>
        [DataMember(Name="poc_email", EmitDefaultValue=false)]
        public string PocEmail { get; set; }

        /// <summary>
        /// Creation Time
        /// </summary>
        /// <value>Creation Time</value>
        [DataMember(Name="created_on", EmitDefaultValue=false)]
        public DateTime? CreatedOn { get; private set; }

        /// <summary>
        /// Total assigned evaluation quota
        /// </summary>
        /// <value>Total assigned evaluation quota</value>
        [DataMember(Name="total_quota", EmitDefaultValue=false)]
        public int? TotalQuota { get; private set; }

        /// <summary>
        /// Available evaluation quota
        /// </summary>
        /// <value>Available evaluation quota</value>
        [DataMember(Name="quota", EmitDefaultValue=false)]
        public int? Quota { get; private set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class Organisation {\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Name: ").Append(Name).Append("\n");
            sb.Append("  PocEmail: ").Append(PocEmail).Append("\n");
            sb.Append("  CreatedOn: ").Append(CreatedOn).Append("\n");
            sb.Append("  TotalQuota: ").Append(TotalQuota).Append("\n");
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
            return this.Equals(input as Organisation);
        }

        /// <summary>
        /// Returns true if Organisation instances are equal
        /// </summary>
        /// <param name="input">Instance of Organisation to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(Organisation input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.Id == input.Id ||
                    (this.Id != null &&
                    this.Id.Equals(input.Id))
                ) && 
                (
                    this.Name == input.Name ||
                    (this.Name != null &&
                    this.Name.Equals(input.Name))
                ) && 
                (
                    this.PocEmail == input.PocEmail ||
                    (this.PocEmail != null &&
                    this.PocEmail.Equals(input.PocEmail))
                ) && 
                (
                    this.CreatedOn == input.CreatedOn ||
                    (this.CreatedOn != null &&
                    this.CreatedOn.Equals(input.CreatedOn))
                ) && 
                (
                    this.TotalQuota == input.TotalQuota ||
                    (this.TotalQuota != null &&
                    this.TotalQuota.Equals(input.TotalQuota))
                ) && 
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
                if (this.Id != null)
                    hashCode = hashCode * 59 + this.Id.GetHashCode();
                if (this.Name != null)
                    hashCode = hashCode * 59 + this.Name.GetHashCode();
                if (this.PocEmail != null)
                    hashCode = hashCode * 59 + this.PocEmail.GetHashCode();
                if (this.CreatedOn != null)
                    hashCode = hashCode * 59 + this.CreatedOn.GetHashCode();
                if (this.TotalQuota != null)
                    hashCode = hashCode * 59 + this.TotalQuota.GetHashCode();
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
