# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule EvaluationsAPI.Model.UserQuota do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"quota"
  ]

  @type t :: %__MODULE__{
    :"quota" => integer()
  }
end

defimpl Poison.Decoder, for: EvaluationsAPI.Model.UserQuota do
  def decode(value, _options) do
    value
  end
end

