# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule AIcrowd.Evaluations.Api.Graders do
  @moduledoc """
  API calls for all endpoints tagged `Graders`.
  """

  alias AIcrowd.Evaluations.Connection
  import AIcrowd.Evaluations.RequestBuilder


  @doc """
  Create a new grader

  ## Parameters

  - connection (AIcrowd.Evaluations.Connection): Connection to server
  - payload (Grader): 
  - opts (KeywordList): [optional] Optional parameters
    - :x_fields (String.t): An optional fields mask

  ## Returns

  {:ok, %AIcrowd.Evaluations.Model.Grader{}} on success
  {:error, info} on failure
  """
  @spec create_grader(Tesla.Env.client, AIcrowd.Evaluations.Model.Grader.t, keyword()) :: {:ok, AIcrowd.Evaluations.Model.Grader.t} | {:error, Tesla.Env.t}
  def create_grader(connection, payload, opts \\ []) do
    optional_params = %{
      :"X-Fields" => :headers
    }
    %{}
    |> method(:post)
    |> url("/graders/")
    |> add_param(:body, :"payload", payload)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%AIcrowd.Evaluations.Model.Grader{})
  end

  @doc """
  Delete a grader by its ID

  ## Parameters

  - connection (AIcrowd.Evaluations.Connection): Connection to server
  - grader_id (integer()): 
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec delete_grader(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def delete_grader(connection, grader_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/graders/#{grader_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Get details of a grader by its ID

  ## Parameters

  - connection (AIcrowd.Evaluations.Connection): Connection to server
  - grader_id (integer()): 
  - opts (KeywordList): [optional] Optional parameters
    - :x_fields (String.t): An optional fields mask

  ## Returns

  {:ok, %AIcrowd.Evaluations.Model.Grader{}} on success
  {:error, info} on failure
  """
  @spec get_grader(Tesla.Env.client, integer(), keyword()) :: {:ok, AIcrowd.Evaluations.Model.Grader.t} | {:error, Tesla.Env.t}
  def get_grader(connection, grader_id, opts \\ []) do
    optional_params = %{
      :"X-Fields" => :headers
    }
    %{}
    |> method(:get)
    |> url("/graders/#{grader_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%AIcrowd.Evaluations.Model.Grader{})
  end

  @doc """
  Get the grader logs by submission ID

  ## Parameters

  - connection (AIcrowd.Evaluations.Connection): Connection to server
  - grader_id (integer()): 
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec get_grader_logs(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def get_grader_logs(connection, grader_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/graders/#{grader_id}/logs")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  List all graders available

  ## Parameters

  - connection (AIcrowd.Evaluations.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :per_page (String.t): Results to display per page
    - :page (String.t): Page number
    - :meta (String.t): Fetch graders containing this meta value
    - :name (String.t): Fetch grader containing name
    - :status (String.t): Fetch graders with this status
    - :user_id (integer()): Fetch graders created by the user
    - :x_fields (String.t): An optional fields mask

  ## Returns

  {:ok, [%Grader{}, ...]} on success
  {:error, info} on failure
  """
  @spec list_graders(Tesla.Env.client, keyword()) :: {:ok, list(AIcrowd.Evaluations.Model.Grader.t)} | {:error, Tesla.Env.t}
  def list_graders(connection, opts \\ []) do
    optional_params = %{
      :"per_page" => :query,
      :"page" => :query,
      :"meta" => :query,
      :"name" => :query,
      :"status" => :query,
      :"user_id" => :query,
      :"X-Fields" => :headers
    }
    %{}
    |> method(:get)
    |> url("/graders/")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode([%AIcrowd.Evaluations.Model.Grader{}])
  end

  @doc """
  Update meta details of a grader by its ID. Warning: There is no data validation.

  ## Parameters

  - connection (AIcrowd.Evaluations.Connection): Connection to server
  - grader_id (integer()): 
  - payload (GraderMeta): 
  - opts (KeywordList): [optional] Optional parameters
    - :x_fields (String.t): An optional fields mask

  ## Returns

  {:ok, %AIcrowd.Evaluations.Model.Grader{}} on success
  {:error, info} on failure
  """
  @spec update_grader(Tesla.Env.client, integer(), AIcrowd.Evaluations.Model.GraderMeta.t, keyword()) :: {:ok, AIcrowd.Evaluations.Model.Grader.t} | {:error, Tesla.Env.t}
  def update_grader(connection, grader_id, payload, opts \\ []) do
    optional_params = %{
      :"X-Fields" => :headers
    }
    %{}
    |> method(:patch)
    |> url("/graders/#{grader_id}")
    |> add_param(:body, :"payload", payload)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%AIcrowd.Evaluations.Model.Grader{})
  end
end
