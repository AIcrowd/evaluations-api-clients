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
  Delete a grader

  ## Parameters

  - connection (AIcrowd.Evaluations.Connection): Connection to server
  - grader_id (integer()): 
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec delete_grader_dao(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def delete_grader_dao(connection, grader_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/graders/#{grader_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Get information of a grader

  ## Parameters

  - connection (AIcrowd.Evaluations.Connection): Connection to server
  - grader_id (integer()): 
  - opts (KeywordList): [optional] Optional parameters
    - :x_fields (String.t): An optional fields mask

  ## Returns

  {:ok, %AIcrowd.Evaluations.Model.Grader{}} on success
  {:error, info} on failure
  """
  @spec get_grader_dao(Tesla.Env.client, integer(), keyword()) :: {:ok, AIcrowd.Evaluations.Model.Grader.t} | {:error, Tesla.Env.t}
  def get_grader_dao(connection, grader_id, opts \\ []) do
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
  Get all grader

  ## Parameters

  - connection (AIcrowd.Evaluations.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :x_fields (String.t): An optional fields mask

  ## Returns

  {:ok, [%Grader{}, ...]} on success
  {:error, info} on failure
  """
  @spec get_grader_list_dao(Tesla.Env.client, keyword()) :: {:ok, list(AIcrowd.Evaluations.Model.Grader.t)} | {:error, Tesla.Env.t}
  def get_grader_list_dao(connection, opts \\ []) do
    optional_params = %{
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
  @spec post_grader_list_dao(Tesla.Env.client, AIcrowd.Evaluations.Model.Grader.t, keyword()) :: {:ok, AIcrowd.Evaluations.Model.Grader.t} | {:error, Tesla.Env.t}
  def post_grader_list_dao(connection, payload, opts \\ []) do
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
end
