defmodule Phone.NANP.JM do
  def valid?(number) do
    String.length(number) == 7
  end
  def builder(code, number) do
    unless valid?(number) do
      raise ArgumentError, message: "Not a valid phone number."
    end
    %{
      country: "Jamaica",
      code: "1-"<>code,
      number: number,
      a2: "JM",
      a3: "JAM"
    }
  end
end