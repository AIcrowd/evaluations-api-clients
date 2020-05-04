# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule AIcrowd.Evaluations.Api.Submissions do
  @moduledoc """
  API calls for all endpoints tagged `Submissions`.
  """

  alias AIcrowd.Evaluations.Connection
  import AIcrowd.Evaluations.RequestBuilder


  @doc """
  Make a new submission

  ## Parameters

  - connection (AIcrowd.Evaluations.Connection): Connection to server
  - payload (Submissions): 
  - opts (KeywordList): [optional] Optional parameters
    - :x_fields (String.t): An optional fields mask

  ## Returns

  {:ok, %AIcrowd.Evaluations.Model.Submissions{}} on success
  {:error, info} on failure
  """
  @spec create_submission(Tesla.Env.client, AIcrowd.Evaluations.Model.Submissions.t, keyword()) :: {:ok, AIcrowd.Evaluations.Model.Submissions.t} | {:error, Tesla.Env.t}
  def create_submission(connection, payload, opts \\ []) do
    optional_params = %{
      :"X-Fields" => :headers
    }
    %{}
    |> method(:post)
    |> url("/submissions/")
    |> add_param(:body, :"payload", payload)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%AIcrowd.Evaluations.Model.Submissions{})
  end

  @doc """
  Stop evaluation of a submission and delete it

  ## Parameters

  - connection (AIcrowd.Evaluations.Connection): Connection to server
  - submission_id (integer()): 
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec delete_submission(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def delete_submission(connection, submission_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/submissions/#{submission_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Get details of a submission by its ID

  ## Parameters

  - connection (AIcrowd.Evaluations.Connection): Connection to server
  - submission_id (integer()): 
  - opts (KeywordList): [optional] Optional parameters
    - :x_fields (String.t): An optional fields mask

  ## Returns

  {:ok, %AIcrowd.Evaluations.Model.Submissions{}} on success
  {:error, info} on failure
  """
  @spec get_submission(Tesla.Env.client, integer(), keyword()) :: {:ok, AIcrowd.Evaluations.Model.Submissions.t} | {:error, Tesla.Env.t}
  def get_submission(connection, submission_id, opts \\ []) do
    optional_params = %{
      :"X-Fields" => :headers
    }
    %{}
    |> method(:get)
    |> url("/submissions/#{submission_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%AIcrowd.Evaluations.Model.Submissions{})
  end

  @doc """
  Get the submission data by submission ID

  ## Parameters

  - connection (AIcrowd.Evaluations.Connection): Connection to server
  - submission_id (integer()): 
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec get_submission_data(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def get_submission_data(connection, submission_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/submissions/#{submission_id}/data")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Get the submission logs by submission ID

  ## Parameters

  - connection (AIcrowd.Evaluations.Connection): Connection to server
  - submission_id (integer()): 
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec get_submission_logs(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def get_submission_logs(connection, submission_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/submissions/#{submission_id}/logs")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  List all submissions available

  ## Parameters

  - connection (AIcrowd.Evaluations.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :meta (String.t): Fetch submissions containing this meta value
    - :status (String.t): Fetch submissions with this status
    - :grader_id (integer()): Fetch submissions for a grader
    - :user_id (integer()): Fetch submissions created by the user
    - :x_fields (String.t): An optional fields mask

  ## Returns

  {:ok, [%Submissions{}, ...]} on success
  {:error, info} on failure
  """
  @spec list_submissions(Tesla.Env.client, keyword()) :: {:ok, list(AIcrowd.Evaluations.Model.Submissions.t)} | {:error, Tesla.Env.t}
  def list_submissions(connection, opts \\ []) do
    optional_params = %{
      :"meta" => :query,
      :"status" => :query,
      :"grader_id" => :query,
      :"user_id" => :query,
      :"X-Fields" => :headers
    }
    %{}
    |> method(:get)
    |> url("/submissions/")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode([%AIcrowd.Evaluations.Model.Submissions{}])
  end
end
