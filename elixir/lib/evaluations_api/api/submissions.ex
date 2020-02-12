# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule EvaluationsAPI.Api.Submissions do
  @moduledoc """
  API calls for all endpoints tagged `Submissions`.
  """

  alias EvaluationsAPI.Connection
  import EvaluationsAPI.RequestBuilder


  @doc """
  Stop evaluation of a submission

  ## Parameters

  - connection (EvaluationsAPI.Connection): Connection to server
  - submission_id (integer()): 
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec delete_submission_dao(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def delete_submission_dao(connection, submission_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/submissions/#{submission_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Get details of a submission

  ## Parameters

  - connection (EvaluationsAPI.Connection): Connection to server
  - submission_id (integer()): 
  - opts (KeywordList): [optional] Optional parameters
    - :x_fields (String.t): An optional fields mask

  ## Returns

  {:ok, %EvaluationsAPI.Model.Submissions{}} on success
  {:error, info} on failure
  """
  @spec get_submission_dao(Tesla.Env.client, integer(), keyword()) :: {:ok, EvaluationsAPI.Model.Submissions.t} | {:error, Tesla.Env.t}
  def get_submission_dao(connection, submission_id, opts \\ []) do
    optional_params = %{
      :"X-Fields" => :headers
    }
    %{}
    |> method(:get)
    |> url("/submissions/#{submission_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%EvaluationsAPI.Model.Submissions{})
  end

  @doc """
  Get all submissions

  ## Parameters

  - connection (EvaluationsAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :x_fields (String.t): An optional fields mask

  ## Returns

  {:ok, [%Submissions{}, ...]} on success
  {:error, info} on failure
  """
  @spec get_submission_list_dao(Tesla.Env.client, keyword()) :: {:ok, list(EvaluationsAPI.Model.Submissions.t)} | {:error, Tesla.Env.t}
  def get_submission_list_dao(connection, opts \\ []) do
    optional_params = %{
      :"X-Fields" => :headers
    }
    %{}
    |> method(:get)
    |> url("/submissions/")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode([%EvaluationsAPI.Model.Submissions{}])
  end

  @doc """
  Make a new submission

  ## Parameters

  - connection (EvaluationsAPI.Connection): Connection to server
  - payload (Submissions): 
  - opts (KeywordList): [optional] Optional parameters
    - :x_fields (String.t): An optional fields mask

  ## Returns

  {:ok, %EvaluationsAPI.Model.Submissions{}} on success
  {:error, info} on failure
  """
  @spec post_submission_list_dao(Tesla.Env.client, EvaluationsAPI.Model.Submissions.t, keyword()) :: {:ok, EvaluationsAPI.Model.Submissions.t} | {:error, Tesla.Env.t}
  def post_submission_list_dao(connection, payload, opts \\ []) do
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
    |> decode(%EvaluationsAPI.Model.Submissions{})
  end
end
