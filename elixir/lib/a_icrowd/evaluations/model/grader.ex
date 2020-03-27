# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule AIcrowd.Evaluations.Model.Grader do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"created",
    :"updated",
    :"dataset_url",
    :"code_access_mode",
    :"cluster_id",
    :"docker_username",
    :"docker_password",
    :"docker_registry",
    :"workflow_spec",
    :"evaluation_code",
    :"storage_capacity",
    :"logs",
    :"meta",
    :"status",
    :"user_id",
    :"organisation_id"
  ]

  @type t :: %__MODULE__{
    :"id" => integer(),
    :"created" => DateTime.t,
    :"updated" => DateTime.t,
    :"dataset_url" => String.t,
    :"code_access_mode" => String.t,
    :"cluster_id" => integer(),
    :"docker_username" => String.t,
    :"docker_password" => String.t,
    :"docker_registry" => String.t,
    :"workflow_spec" => Object,
    :"evaluation_code" => String.t,
    :"storage_capacity" => String.t,
    :"logs" => Object,
    :"meta" => Object,
    :"status" => String.t,
    :"user_id" => integer(),
    :"organisation_id" => integer()
  }
end

defimpl Poison.Decoder, for: AIcrowd.Evaluations.Model.Grader do
  import AIcrowd.Evaluations.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"workflow_spec", :struct, AIcrowd.Evaluations.Model.Object, options)
    |> deserialize(:"logs", :struct, AIcrowd.Evaluations.Model.Object, options)
    |> deserialize(:"meta", :struct, AIcrowd.Evaluations.Model.Object, options)
  end
end

