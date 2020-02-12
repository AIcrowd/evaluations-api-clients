/**
 * Evaluations API
 * API to create and evaluate custom challenges
 *
 * OpenAPI spec version: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator 2.4.12.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */



#include "Submissions.h"

namespace io {
namespace swagger {
namespace client {
namespace model {

Submissions::Submissions()
{
    m_Id = 0;
    m_IdIsSet = false;
    m_Created = utility::datetime();
    m_CreatedIsSet = false;
    m_Updated = utility::datetime();
    m_UpdatedIsSet = false;
    m_Participant_id = 0;
    m_Participant_idIsSet = false;
    m_Round_id = 0;
    m_Round_idIsSet = false;
    m_Grader_id = 0;
    m_Grader_idIsSet = false;
    m_Submission_code = utility::conversions::to_string_t("");
    m_Submission_codeIsSet = false;
    m_Status = utility::conversions::to_string_t("");
    m_StatusIsSet = false;
    m_Output = utility::conversions::to_string_t("");
    m_OutputIsSet = false;
    m_Additional_outputs = utility::conversions::to_string_t("");
    m_Additional_outputsIsSet = false;
    m_Logs = utility::conversions::to_string_t("");
    m_LogsIsSet = false;
    m_Started = utility::datetime();
    m_StartedIsSet = false;
    m_Ended = utility::datetime();
    m_EndedIsSet = false;
    m_MetaIsSet = false;
    m_User_id = 0;
    m_User_idIsSet = false;
    m_Organisation_id = 0;
    m_Organisation_idIsSet = false;
}

Submissions::~Submissions()
{
}

void Submissions::validate()
{
    // TODO: implement validation
}

web::json::value Submissions::toJson() const
{
    web::json::value val = web::json::value::object();

    if(m_IdIsSet)
    {
        val[utility::conversions::to_string_t("id")] = ModelBase::toJson(m_Id);
    }
    if(m_CreatedIsSet)
    {
        val[utility::conversions::to_string_t("created")] = ModelBase::toJson(m_Created);
    }
    if(m_UpdatedIsSet)
    {
        val[utility::conversions::to_string_t("updated")] = ModelBase::toJson(m_Updated);
    }
    if(m_Participant_idIsSet)
    {
        val[utility::conversions::to_string_t("participant_id")] = ModelBase::toJson(m_Participant_id);
    }
    if(m_Round_idIsSet)
    {
        val[utility::conversions::to_string_t("round_id")] = ModelBase::toJson(m_Round_id);
    }
    if(m_Grader_idIsSet)
    {
        val[utility::conversions::to_string_t("grader_id")] = ModelBase::toJson(m_Grader_id);
    }
    if(m_Submission_codeIsSet)
    {
        val[utility::conversions::to_string_t("submission_code")] = ModelBase::toJson(m_Submission_code);
    }
    if(m_StatusIsSet)
    {
        val[utility::conversions::to_string_t("status")] = ModelBase::toJson(m_Status);
    }
    if(m_OutputIsSet)
    {
        val[utility::conversions::to_string_t("output")] = ModelBase::toJson(m_Output);
    }
    if(m_Additional_outputsIsSet)
    {
        val[utility::conversions::to_string_t("additional_outputs")] = ModelBase::toJson(m_Additional_outputs);
    }
    if(m_LogsIsSet)
    {
        val[utility::conversions::to_string_t("logs")] = ModelBase::toJson(m_Logs);
    }
    if(m_StartedIsSet)
    {
        val[utility::conversions::to_string_t("started")] = ModelBase::toJson(m_Started);
    }
    if(m_EndedIsSet)
    {
        val[utility::conversions::to_string_t("ended")] = ModelBase::toJson(m_Ended);
    }
    if(m_MetaIsSet)
    {
        val[utility::conversions::to_string_t("meta")] = ModelBase::toJson(m_Meta);
    }
    if(m_User_idIsSet)
    {
        val[utility::conversions::to_string_t("user_id")] = ModelBase::toJson(m_User_id);
    }
    if(m_Organisation_idIsSet)
    {
        val[utility::conversions::to_string_t("organisation_id")] = ModelBase::toJson(m_Organisation_id);
    }

    return val;
}

void Submissions::fromJson(web::json::value& val)
{
    if(val.has_field(utility::conversions::to_string_t("id")))
    {
        web::json::value& fieldValue = val[utility::conversions::to_string_t("id")];
        if(!fieldValue.is_null())
        {
            setId(ModelBase::int32_tFromJson(fieldValue));
        }
    }
    if(val.has_field(utility::conversions::to_string_t("created")))
    {
        web::json::value& fieldValue = val[utility::conversions::to_string_t("created")];
        if(!fieldValue.is_null())
        {
            setCreated(ModelBase::dateFromJson(fieldValue));
        }
    }
    if(val.has_field(utility::conversions::to_string_t("updated")))
    {
        web::json::value& fieldValue = val[utility::conversions::to_string_t("updated")];
        if(!fieldValue.is_null())
        {
            setUpdated(ModelBase::dateFromJson(fieldValue));
        }
    }
    if(val.has_field(utility::conversions::to_string_t("participant_id")))
    {
        web::json::value& fieldValue = val[utility::conversions::to_string_t("participant_id")];
        if(!fieldValue.is_null())
        {
            setParticipantId(ModelBase::int32_tFromJson(fieldValue));
        }
    }
    if(val.has_field(utility::conversions::to_string_t("round_id")))
    {
        web::json::value& fieldValue = val[utility::conversions::to_string_t("round_id")];
        if(!fieldValue.is_null())
        {
            setRoundId(ModelBase::int32_tFromJson(fieldValue));
        }
    }
    if(val.has_field(utility::conversions::to_string_t("grader_id")))
    {
        web::json::value& fieldValue = val[utility::conversions::to_string_t("grader_id")];
        if(!fieldValue.is_null())
        {
            setGraderId(ModelBase::int32_tFromJson(fieldValue));
        }
    }
    if(val.has_field(utility::conversions::to_string_t("submission_code")))
    {
        web::json::value& fieldValue = val[utility::conversions::to_string_t("submission_code")];
        if(!fieldValue.is_null())
        {
            setSubmissionCode(ModelBase::stringFromJson(fieldValue));
        }
    }
    if(val.has_field(utility::conversions::to_string_t("status")))
    {
        web::json::value& fieldValue = val[utility::conversions::to_string_t("status")];
        if(!fieldValue.is_null())
        {
            setStatus(ModelBase::stringFromJson(fieldValue));
        }
    }
    if(val.has_field(utility::conversions::to_string_t("output")))
    {
        web::json::value& fieldValue = val[utility::conversions::to_string_t("output")];
        if(!fieldValue.is_null())
        {
            setOutput(ModelBase::stringFromJson(fieldValue));
        }
    }
    if(val.has_field(utility::conversions::to_string_t("additional_outputs")))
    {
        web::json::value& fieldValue = val[utility::conversions::to_string_t("additional_outputs")];
        if(!fieldValue.is_null())
        {
            setAdditionalOutputs(ModelBase::stringFromJson(fieldValue));
        }
    }
    if(val.has_field(utility::conversions::to_string_t("logs")))
    {
        web::json::value& fieldValue = val[utility::conversions::to_string_t("logs")];
        if(!fieldValue.is_null())
        {
            setLogs(ModelBase::stringFromJson(fieldValue));
        }
    }
    if(val.has_field(utility::conversions::to_string_t("started")))
    {
        web::json::value& fieldValue = val[utility::conversions::to_string_t("started")];
        if(!fieldValue.is_null())
        {
            setStarted(ModelBase::dateFromJson(fieldValue));
        }
    }
    if(val.has_field(utility::conversions::to_string_t("ended")))
    {
        web::json::value& fieldValue = val[utility::conversions::to_string_t("ended")];
        if(!fieldValue.is_null())
        {
            setEnded(ModelBase::dateFromJson(fieldValue));
        }
    }
    if(val.has_field(utility::conversions::to_string_t("meta")))
    {
        web::json::value& fieldValue = val[utility::conversions::to_string_t("meta")];
        if(!fieldValue.is_null())
        {
            std::shared_ptr<Object> newItem(nullptr);
            newItem->fromJson(fieldValue);
            setMeta( newItem );
        }
    }
    if(val.has_field(utility::conversions::to_string_t("user_id")))
    {
        web::json::value& fieldValue = val[utility::conversions::to_string_t("user_id")];
        if(!fieldValue.is_null())
        {
            setUserId(ModelBase::int32_tFromJson(fieldValue));
        }
    }
    if(val.has_field(utility::conversions::to_string_t("organisation_id")))
    {
        web::json::value& fieldValue = val[utility::conversions::to_string_t("organisation_id")];
        if(!fieldValue.is_null())
        {
            setOrganisationId(ModelBase::int32_tFromJson(fieldValue));
        }
    }
}

void Submissions::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    if(m_IdIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("id"), m_Id));
    }
    if(m_CreatedIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("created"), m_Created));
        
    }
    if(m_UpdatedIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("updated"), m_Updated));
        
    }
    if(m_Participant_idIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("participant_id"), m_Participant_id));
    }
    if(m_Round_idIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("round_id"), m_Round_id));
    }
    if(m_Grader_idIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("grader_id"), m_Grader_id));
    }
    if(m_Submission_codeIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("submission_code"), m_Submission_code));
        
    }
    if(m_StatusIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("status"), m_Status));
        
    }
    if(m_OutputIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("output"), m_Output));
        
    }
    if(m_Additional_outputsIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("additional_outputs"), m_Additional_outputs));
        
    }
    if(m_LogsIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("logs"), m_Logs));
        
    }
    if(m_StartedIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("started"), m_Started));
        
    }
    if(m_EndedIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("ended"), m_Ended));
        
    }
    if(m_MetaIsSet)
    {
        if (m_Meta.get())
        {
            m_Meta->toMultipart(multipart, utility::conversions::to_string_t("meta."));
        }
        
    }
    if(m_User_idIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("user_id"), m_User_id));
    }
    if(m_Organisation_idIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("organisation_id"), m_Organisation_id));
    }
}

void Submissions::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    if(multipart->hasContent(utility::conversions::to_string_t("id")))
    {
        setId(ModelBase::int32_tFromHttpContent(multipart->getContent(utility::conversions::to_string_t("id"))));
    }
    if(multipart->hasContent(utility::conversions::to_string_t("created")))
    {
        setCreated(ModelBase::dateFromHttpContent(multipart->getContent(utility::conversions::to_string_t("created"))));
    }
    if(multipart->hasContent(utility::conversions::to_string_t("updated")))
    {
        setUpdated(ModelBase::dateFromHttpContent(multipart->getContent(utility::conversions::to_string_t("updated"))));
    }
    if(multipart->hasContent(utility::conversions::to_string_t("participant_id")))
    {
        setParticipantId(ModelBase::int32_tFromHttpContent(multipart->getContent(utility::conversions::to_string_t("participant_id"))));
    }
    if(multipart->hasContent(utility::conversions::to_string_t("round_id")))
    {
        setRoundId(ModelBase::int32_tFromHttpContent(multipart->getContent(utility::conversions::to_string_t("round_id"))));
    }
    if(multipart->hasContent(utility::conversions::to_string_t("grader_id")))
    {
        setGraderId(ModelBase::int32_tFromHttpContent(multipart->getContent(utility::conversions::to_string_t("grader_id"))));
    }
    if(multipart->hasContent(utility::conversions::to_string_t("submission_code")))
    {
        setSubmissionCode(ModelBase::stringFromHttpContent(multipart->getContent(utility::conversions::to_string_t("submission_code"))));
    }
    if(multipart->hasContent(utility::conversions::to_string_t("status")))
    {
        setStatus(ModelBase::stringFromHttpContent(multipart->getContent(utility::conversions::to_string_t("status"))));
    }
    if(multipart->hasContent(utility::conversions::to_string_t("output")))
    {
        setOutput(ModelBase::stringFromHttpContent(multipart->getContent(utility::conversions::to_string_t("output"))));
    }
    if(multipart->hasContent(utility::conversions::to_string_t("additional_outputs")))
    {
        setAdditionalOutputs(ModelBase::stringFromHttpContent(multipart->getContent(utility::conversions::to_string_t("additional_outputs"))));
    }
    if(multipart->hasContent(utility::conversions::to_string_t("logs")))
    {
        setLogs(ModelBase::stringFromHttpContent(multipart->getContent(utility::conversions::to_string_t("logs"))));
    }
    if(multipart->hasContent(utility::conversions::to_string_t("started")))
    {
        setStarted(ModelBase::dateFromHttpContent(multipart->getContent(utility::conversions::to_string_t("started"))));
    }
    if(multipart->hasContent(utility::conversions::to_string_t("ended")))
    {
        setEnded(ModelBase::dateFromHttpContent(multipart->getContent(utility::conversions::to_string_t("ended"))));
    }
    if(multipart->hasContent(utility::conversions::to_string_t("meta")))
    {
        if(multipart->hasContent(utility::conversions::to_string_t("meta")))
        {
            std::shared_ptr<Object> newItem(nullptr);
            newItem->fromMultiPart(multipart, utility::conversions::to_string_t("meta."));
            setMeta( newItem );
        }
    }
    if(multipart->hasContent(utility::conversions::to_string_t("user_id")))
    {
        setUserId(ModelBase::int32_tFromHttpContent(multipart->getContent(utility::conversions::to_string_t("user_id"))));
    }
    if(multipart->hasContent(utility::conversions::to_string_t("organisation_id")))
    {
        setOrganisationId(ModelBase::int32_tFromHttpContent(multipart->getContent(utility::conversions::to_string_t("organisation_id"))));
    }
}

int32_t Submissions::getId() const
{
    return m_Id;
}


void Submissions::setId(int32_t value)
{
    m_Id = value;
    m_IdIsSet = true;
}
bool Submissions::idIsSet() const
{
    return m_IdIsSet;
}

void Submissions::unsetId()
{
    m_IdIsSet = false;
}

utility::datetime Submissions::getCreated() const
{
    return m_Created;
}


void Submissions::setCreated(utility::datetime value)
{
    m_Created = value;
    m_CreatedIsSet = true;
}
bool Submissions::createdIsSet() const
{
    return m_CreatedIsSet;
}

void Submissions::unsetCreated()
{
    m_CreatedIsSet = false;
}

utility::datetime Submissions::getUpdated() const
{
    return m_Updated;
}


void Submissions::setUpdated(utility::datetime value)
{
    m_Updated = value;
    m_UpdatedIsSet = true;
}
bool Submissions::updatedIsSet() const
{
    return m_UpdatedIsSet;
}

void Submissions::unsetUpdated()
{
    m_UpdatedIsSet = false;
}

int32_t Submissions::getParticipantId() const
{
    return m_Participant_id;
}


void Submissions::setParticipantId(int32_t value)
{
    m_Participant_id = value;
    m_Participant_idIsSet = true;
}
bool Submissions::participantIdIsSet() const
{
    return m_Participant_idIsSet;
}

void Submissions::unsetParticipant_id()
{
    m_Participant_idIsSet = false;
}

int32_t Submissions::getRoundId() const
{
    return m_Round_id;
}


void Submissions::setRoundId(int32_t value)
{
    m_Round_id = value;
    m_Round_idIsSet = true;
}
bool Submissions::roundIdIsSet() const
{
    return m_Round_idIsSet;
}

void Submissions::unsetRound_id()
{
    m_Round_idIsSet = false;
}

int32_t Submissions::getGraderId() const
{
    return m_Grader_id;
}


void Submissions::setGraderId(int32_t value)
{
    m_Grader_id = value;
    m_Grader_idIsSet = true;
}
bool Submissions::graderIdIsSet() const
{
    return m_Grader_idIsSet;
}

void Submissions::unsetGrader_id()
{
    m_Grader_idIsSet = false;
}

utility::string_t Submissions::getSubmissionCode() const
{
    return m_Submission_code;
}


void Submissions::setSubmissionCode(utility::string_t value)
{
    m_Submission_code = value;
    m_Submission_codeIsSet = true;
}
bool Submissions::submissionCodeIsSet() const
{
    return m_Submission_codeIsSet;
}

void Submissions::unsetSubmission_code()
{
    m_Submission_codeIsSet = false;
}

utility::string_t Submissions::getStatus() const
{
    return m_Status;
}


void Submissions::setStatus(utility::string_t value)
{
    m_Status = value;
    m_StatusIsSet = true;
}
bool Submissions::statusIsSet() const
{
    return m_StatusIsSet;
}

void Submissions::unsetStatus()
{
    m_StatusIsSet = false;
}

utility::string_t Submissions::getOutput() const
{
    return m_Output;
}


void Submissions::setOutput(utility::string_t value)
{
    m_Output = value;
    m_OutputIsSet = true;
}
bool Submissions::outputIsSet() const
{
    return m_OutputIsSet;
}

void Submissions::unsetOutput()
{
    m_OutputIsSet = false;
}

utility::string_t Submissions::getAdditionalOutputs() const
{
    return m_Additional_outputs;
}


void Submissions::setAdditionalOutputs(utility::string_t value)
{
    m_Additional_outputs = value;
    m_Additional_outputsIsSet = true;
}
bool Submissions::additionalOutputsIsSet() const
{
    return m_Additional_outputsIsSet;
}

void Submissions::unsetAdditional_outputs()
{
    m_Additional_outputsIsSet = false;
}

utility::string_t Submissions::getLogs() const
{
    return m_Logs;
}


void Submissions::setLogs(utility::string_t value)
{
    m_Logs = value;
    m_LogsIsSet = true;
}
bool Submissions::logsIsSet() const
{
    return m_LogsIsSet;
}

void Submissions::unsetLogs()
{
    m_LogsIsSet = false;
}

utility::datetime Submissions::getStarted() const
{
    return m_Started;
}


void Submissions::setStarted(utility::datetime value)
{
    m_Started = value;
    m_StartedIsSet = true;
}
bool Submissions::startedIsSet() const
{
    return m_StartedIsSet;
}

void Submissions::unsetStarted()
{
    m_StartedIsSet = false;
}

utility::datetime Submissions::getEnded() const
{
    return m_Ended;
}


void Submissions::setEnded(utility::datetime value)
{
    m_Ended = value;
    m_EndedIsSet = true;
}
bool Submissions::endedIsSet() const
{
    return m_EndedIsSet;
}

void Submissions::unsetEnded()
{
    m_EndedIsSet = false;
}

std::shared_ptr<Object> Submissions::getMeta() const
{
    return m_Meta;
}


void Submissions::setMeta(std::shared_ptr<Object> value)
{
    m_Meta = value;
    m_MetaIsSet = true;
}
bool Submissions::metaIsSet() const
{
    return m_MetaIsSet;
}

void Submissions::unsetMeta()
{
    m_MetaIsSet = false;
}

int32_t Submissions::getUserId() const
{
    return m_User_id;
}


void Submissions::setUserId(int32_t value)
{
    m_User_id = value;
    m_User_idIsSet = true;
}
bool Submissions::userIdIsSet() const
{
    return m_User_idIsSet;
}

void Submissions::unsetUser_id()
{
    m_User_idIsSet = false;
}

int32_t Submissions::getOrganisationId() const
{
    return m_Organisation_id;
}


void Submissions::setOrganisationId(int32_t value)
{
    m_Organisation_id = value;
    m_Organisation_idIsSet = true;
}
bool Submissions::organisationIdIsSet() const
{
    return m_Organisation_idIsSet;
}

void Submissions::unsetOrganisation_id()
{
    m_Organisation_idIsSet = false;
}

}
}
}
}

