/**
 * AIcrowd Evaluations API
 * API to create and evaluate custom challenges on AIcrowd!
 *
 * OpenAPI spec version: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator 2.4.25.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

/*
 * Submissions.h
 *
 * 
 */

#ifndef COM_AICROWD_EVALUATIONS_MODELS_Submissions_H_
#define COM_AICROWD_EVALUATIONS_MODELS_Submissions_H_


#include "../ModelBase.h"

#include <cpprest/details/basic_types.h>
#include "Object.h"

namespace com {
namespace aicrowd {
namespace evaluations {
namespace models {

/// <summary>
/// 
/// </summary>
class  Submissions
    : public ModelBase
{
public:
    Submissions();
    virtual ~Submissions();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    void fromJson(web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    void fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// Submissions members

    /// <summary>
    /// ID
    /// </summary>
    int32_t getId() const;
    bool idIsSet() const;
    void unsetId();
    void setId(int32_t value);
    /// <summary>
    /// Creation time
    /// </summary>
    utility::datetime getCreated() const;
    bool createdIsSet() const;
    void unsetCreated();
    void setCreated(utility::datetime value);
    /// <summary>
    /// Last updation time
    /// </summary>
    utility::datetime getUpdated() const;
    bool updatedIsSet() const;
    void unsetUpdated();
    void setUpdated(utility::datetime value);
    /// <summary>
    /// Grader identifier
    /// </summary>
    int32_t getGraderId() const;
        void setGraderId(int32_t value);
    /// <summary>
    /// URL to the submission code
    /// </summary>
    std::shared_ptr<Object> getSubmissionData() const;
    bool submissionDataIsSet() const;
    void unsetSubmission_data();
    void setSubmissionData(std::shared_ptr<Object> value);
    /// <summary>
    /// Current status of the submission
    /// </summary>
    utility::string_t getStatus() const;
    bool statusIsSet() const;
    void unsetStatus();
    void setStatus(utility::string_t value);
    /// <summary>
    /// S3 link of the output (available after the evaluation)
    /// </summary>
    utility::string_t getOutput() const;
    bool outputIsSet() const;
    void unsetOutput();
    void setOutput(utility::string_t value);
    /// <summary>
    /// Array of any additional outputs
    /// </summary>
    std::shared_ptr<Object> getAdditionalOutputs() const;
    bool additionalOutputsIsSet() const;
    void unsetAdditional_outputs();
    void setAdditionalOutputs(std::shared_ptr<Object> value);
    /// <summary>
    /// S3 link of the STDOUT of the evaluation
    /// </summary>
    utility::string_t getLogs() const;
    bool logsIsSet() const;
    void unsetLogs();
    void setLogs(utility::string_t value);
    /// <summary>
    /// Evaluation start time
    /// </summary>
    utility::datetime getStarted() const;
    bool startedIsSet() const;
    void unsetStarted();
    void setStarted(utility::datetime value);
    /// <summary>
    /// Evaluation end time
    /// </summary>
    utility::datetime getEnded() const;
    bool endedIsSet() const;
    void unsetEnded();
    void setEnded(utility::datetime value);
    /// <summary>
    /// Additional meta data of the grader
    /// </summary>
    utility::string_t getMeta() const;
    bool metaIsSet() const;
    void unsetMeta();
    void setMeta(utility::string_t value);
    /// <summary>
    /// Name of the workflow used to evaluate submission
    /// </summary>
    utility::string_t getWfName() const;
    bool wfNameIsSet() const;
    void unsetWf_name();
    void setWfName(utility::string_t value);
    /// <summary>
    /// Workflow priority to assign
    /// </summary>
    int32_t getWorkflowPriority() const;
    bool workflowPriorityIsSet() const;
    void unsetWorkflow_priority();
    void setWorkflowPriority(int32_t value);
    /// <summary>
    /// User ID
    /// </summary>
    int32_t getUserId() const;
    bool userIdIsSet() const;
    void unsetUser_id();
    void setUserId(int32_t value);
    /// <summary>
    /// Organisation ID
    /// </summary>
    int32_t getOrganisationId() const;
    bool organisationIdIsSet() const;
    void unsetOrganisation_id();
    void setOrganisationId(int32_t value);

protected:
    int32_t m_Id;
    bool m_IdIsSet;
    utility::datetime m_Created;
    bool m_CreatedIsSet;
    utility::datetime m_Updated;
    bool m_UpdatedIsSet;
    int32_t m_Grader_id;
        std::shared_ptr<Object> m_Submission_data;
    bool m_Submission_dataIsSet;
    utility::string_t m_Status;
    bool m_StatusIsSet;
    utility::string_t m_Output;
    bool m_OutputIsSet;
    std::shared_ptr<Object> m_Additional_outputs;
    bool m_Additional_outputsIsSet;
    utility::string_t m_Logs;
    bool m_LogsIsSet;
    utility::datetime m_Started;
    bool m_StartedIsSet;
    utility::datetime m_Ended;
    bool m_EndedIsSet;
    utility::string_t m_Meta;
    bool m_MetaIsSet;
    utility::string_t m_Wf_name;
    bool m_Wf_nameIsSet;
    int32_t m_Workflow_priority;
    bool m_Workflow_priorityIsSet;
    int32_t m_User_id;
    bool m_User_idIsSet;
    int32_t m_Organisation_id;
    bool m_Organisation_idIsSet;
};

}
}
}
}

#endif /* COM_AICROWD_EVALUATIONS_MODELS_Submissions_H_ */
