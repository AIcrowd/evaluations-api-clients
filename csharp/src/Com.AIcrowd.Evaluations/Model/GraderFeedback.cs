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
using SwaggerDateConverter = Com.AIcrowd.Evaluations.Client.SwaggerDateConverter;

namespace Com.AIcrowd.Evaluations.Model
{
    /// <summary>
    /// GraderFeedback
    /// </summary>
    [DataContract]
    public partial class GraderFeedback :  IEquatable<GraderFeedback>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="GraderFeedback" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected GraderFeedback() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="GraderFeedback" /> class.
        /// </summary>
        /// <param name="dataset">Serialized JSON for dataset metadata (required).</param>
        /// <param name="status">Status of the grader (required).</param>
        /// <param name="workflowSpec">Serialized YAML workflow spec (required).</param>
        /// <param name="submissionTypes">Serialized JSON of submissions accepted by the grader (required).</param>
        public GraderFeedback(string dataset = default(string), bool? status = default(bool?), string workflowSpec = default(string), string submissionTypes = default(string))
        {
            // to ensure "dataset" is required (not null)
            if (dataset == null)
            {
                throw new InvalidDataException("dataset is a required property for GraderFeedback and cannot be null");
            }
            else
            {
                this.Dataset = dataset;
            }
            // to ensure "status" is required (not null)
            if (status == null)
            {
                throw new InvalidDataException("status is a required property for GraderFeedback and cannot be null");
            }
            else
            {
                this.Status = status;
            }
            // to ensure "workflowSpec" is required (not null)
            if (workflowSpec == null)
            {
                throw new InvalidDataException("workflowSpec is a required property for GraderFeedback and cannot be null");
            }
            else
            {
                this.WorkflowSpec = workflowSpec;
            }
            // to ensure "submissionTypes" is required (not null)
            if (submissionTypes == null)
            {
                throw new InvalidDataException("submissionTypes is a required property for GraderFeedback and cannot be null");
            }
            else
            {
                this.SubmissionTypes = submissionTypes;
            }
        }
        
        /// <summary>
        /// Serialized JSON for dataset metadata
        /// </summary>
        /// <value>Serialized JSON for dataset metadata</value>
        [DataMember(Name="dataset", EmitDefaultValue=false)]
        public string Dataset { get; set; }

        /// <summary>
        /// Status of the grader
        /// </summary>
        /// <value>Status of the grader</value>
        [DataMember(Name="status", EmitDefaultValue=false)]
        public bool? Status { get; set; }

        /// <summary>
        /// Serialized YAML workflow spec
        /// </summary>
        /// <value>Serialized YAML workflow spec</value>
        [DataMember(Name="workflow_spec", EmitDefaultValue=false)]
        public string WorkflowSpec { get; set; }

        /// <summary>
        /// Serialized JSON of submissions accepted by the grader
        /// </summary>
        /// <value>Serialized JSON of submissions accepted by the grader</value>
        [DataMember(Name="submission_types", EmitDefaultValue=false)]
        public string SubmissionTypes { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class GraderFeedback {\n");
            sb.Append("  Dataset: ").Append(Dataset).Append("\n");
            sb.Append("  Status: ").Append(Status).Append("\n");
            sb.Append("  WorkflowSpec: ").Append(WorkflowSpec).Append("\n");
            sb.Append("  SubmissionTypes: ").Append(SubmissionTypes).Append("\n");
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
            return this.Equals(input as GraderFeedback);
        }

        /// <summary>
        /// Returns true if GraderFeedback instances are equal
        /// </summary>
        /// <param name="input">Instance of GraderFeedback to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(GraderFeedback input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.Dataset == input.Dataset ||
                    (this.Dataset != null &&
                    this.Dataset.Equals(input.Dataset))
                ) && 
                (
                    this.Status == input.Status ||
                    (this.Status != null &&
                    this.Status.Equals(input.Status))
                ) && 
                (
                    this.WorkflowSpec == input.WorkflowSpec ||
                    (this.WorkflowSpec != null &&
                    this.WorkflowSpec.Equals(input.WorkflowSpec))
                ) && 
                (
                    this.SubmissionTypes == input.SubmissionTypes ||
                    (this.SubmissionTypes != null &&
                    this.SubmissionTypes.Equals(input.SubmissionTypes))
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
                if (this.Dataset != null)
                    hashCode = hashCode * 59 + this.Dataset.GetHashCode();
                if (this.Status != null)
                    hashCode = hashCode * 59 + this.Status.GetHashCode();
                if (this.WorkflowSpec != null)
                    hashCode = hashCode * 59 + this.WorkflowSpec.GetHashCode();
                if (this.SubmissionTypes != null)
                    hashCode = hashCode * 59 + this.SubmissionTypes.GetHashCode();
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
