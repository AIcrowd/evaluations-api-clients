# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule AIcrowd.Evaluations.Model.Cluster do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"created",
    :"updated",
    :"remote_address",
    :"auth_token",
    :"docker_username",
    :"docker_registry",
    :"namespace",
    :"storage_class",
    :"status",
    :"wf_name",
    :"argo_host",
    :"argo_token",
    :"minio_user",
    :"s3_policy",
    :"user_id",
    :"organisation_id"
  ]

  @type t :: %__MODULE__{
    :"id" => integer(),
    :"created" => DateTime.t,
    :"updated" => DateTime.t,
    :"remote_address" => String.t,
    :"auth_token" => String.t,
    :"docker_username" => String.t,
    :"docker_registry" => String.t,
    :"namespace" => String.t,
    :"storage_class" => String.t,
    :"status" => boolean(),
    :"wf_name" => String.t,
    :"argo_host" => String.t,
    :"argo_token" => String.t,
    :"minio_user" => String.t,
    :"s3_policy" => String.t,
    :"user_id" => integer(),
    :"organisation_id" => integer()
  }
end

defimpl Poison.Decoder, for: AIcrowd.Evaluations.Model.Cluster do
  def decode(value, _options) do
    value
  end
end

