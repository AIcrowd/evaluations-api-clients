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
    :"dataset",
    :"cluster_id",
    :"description",
    :"workflow_spec",
    :"evaluator_repo",
    :"evaluator_repo_tag",
    :"name",
    :"notifications",
    :"logs",
    :"meta",
    :"status",
    :"secrets",
    :"wf_name",
    :"allowed_extensions",
    :"user_id",
    :"organisation_id"
  ]

  @type t :: %__MODULE__{
    :"id" => integer(),
    :"created" => DateTime.t,
    :"updated" => DateTime.t,
    :"dataset" => Object,
    :"cluster_id" => integer(),
    :"description" => String.t,
    :"workflow_spec" => Object,
    :"evaluator_repo" => String.t,
    :"evaluator_repo_tag" => String.t,
    :"name" => String.t,
    :"notifications" => String.t,
    :"logs" => String.t,
    :"meta" => String.t,
    :"status" => String.t,
    :"secrets" => Object,
    :"wf_name" => String.t,
    :"allowed_extensions" => Object,
    :"user_id" => integer(),
    :"organisation_id" => integer()
  }
end

defimpl Poison.Decoder, for: AIcrowd.Evaluations.Model.Grader do
  import AIcrowd.Evaluations.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"dataset", :struct, AIcrowd.Evaluations.Model.Object, options)
    |> deserialize(:"workflow_spec", :struct, AIcrowd.Evaluations.Model.Object, options)
    |> deserialize(:"secrets", :struct, AIcrowd.Evaluations.Model.Object, options)
    |> deserialize(:"allowed_extensions", :struct, AIcrowd.Evaluations.Model.Object, options)
  end
end

