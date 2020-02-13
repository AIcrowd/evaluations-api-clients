-module(swagger_submissions).

-export([encode/1]).

-export_type([swagger_submissions/0]).

-type swagger_submissions() ::
    #{ 'id' => integer(),
       'created' => swagger_date_time:swagger_date_time(),
       'updated' => swagger_date_time:swagger_date_time(),
       'participant_id' => integer(),
       'round_id' => integer(),
       'grader_id' := integer(),
       'submission_code' := binary(),
       'status' => binary(),
       'output' => binary(),
       'additional_outputs' => binary(),
       'logs' => binary(),
       'started' => swagger_date_time:swagger_date_time(),
       'ended' => swagger_date_time:swagger_date_time(),
       'meta' => maps:map(),
       'user_id' => integer(),
       'organisation_id' => integer()
     }.

encode(#{ 'id' := Id,
          'created' := Created,
          'updated' := Updated,
          'participant_id' := ParticipantId,
          'round_id' := RoundId,
          'grader_id' := GraderId,
          'submission_code' := SubmissionCode,
          'status' := Status,
          'output' := Output,
          'additional_outputs' := AdditionalOutputs,
          'logs' := Logs,
          'started' := Started,
          'ended' := Ended,
          'meta' := Meta,
          'user_id' := UserId,
          'organisation_id' := OrganisationId
        }) ->
    #{ 'id' => Id,
       'created' => Created,
       'updated' => Updated,
       'participant_id' => ParticipantId,
       'round_id' => RoundId,
       'grader_id' => GraderId,
       'submission_code' => SubmissionCode,
       'status' => Status,
       'output' => Output,
       'additional_outputs' => AdditionalOutputs,
       'logs' => Logs,
       'started' => Started,
       'ended' => Ended,
       'meta' => Meta,
       'user_id' => UserId,
       'organisation_id' => OrganisationId
     }.
