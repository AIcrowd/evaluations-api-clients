-module(aicrowd_evaluations_submissions).

-export([encode/1]).

-export_type([aicrowd_evaluations_submissions/0]).

-type aicrowd_evaluations_submissions() ::
    #{ 'id' => integer(),
       'created' => aicrowd_evaluations_date_time:aicrowd_evaluations_date_time(),
       'updated' => aicrowd_evaluations_date_time:aicrowd_evaluations_date_time(),
       'grader_id' := integer(),
       'submission_data' => maps:map(),
       'status' => binary(),
       'output' => binary(),
       'additional_outputs' => maps:map(),
       'logs' => binary(),
       'started' => aicrowd_evaluations_date_time:aicrowd_evaluations_date_time(),
       'ended' => aicrowd_evaluations_date_time:aicrowd_evaluations_date_time(),
       'meta' => binary(),
       'wf_name' => binary(),
       'user_id' => integer(),
       'organisation_id' => integer()
     }.

encode(#{ 'id' := Id,
          'created' := Created,
          'updated' := Updated,
          'grader_id' := GraderId,
          'submission_data' := SubmissionData,
          'status' := Status,
          'output' := Output,
          'additional_outputs' := AdditionalOutputs,
          'logs' := Logs,
          'started' := Started,
          'ended' := Ended,
          'meta' := Meta,
          'wf_name' := WfName,
          'user_id' := UserId,
          'organisation_id' := OrganisationId
        }) ->
    #{ 'id' => Id,
       'created' => Created,
       'updated' => Updated,
       'grader_id' => GraderId,
       'submission_data' => SubmissionData,
       'status' => Status,
       'output' => Output,
       'additional_outputs' => AdditionalOutputs,
       'logs' => Logs,
       'started' => Started,
       'ended' => Ended,
       'meta' => Meta,
       'wf_name' => WfName,
       'user_id' => UserId,
       'organisation_id' => OrganisationId
     }.
