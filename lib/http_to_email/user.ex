defmodule HTE.User do
  alias __MODULE__

  alias ExAws.Dynamo

  @table_name "http_to_email_users"

  @derive [ExAws.Dynamo.Encodable]
  defstruct [:email, :name]

  def get(email) do
    with {:ok, user_json} <- Dynamo.get_item(@table_name, %{email: email}) |> ExAws.request(),
         {:found, true} <- {:found, user_json != %{}},
         {:decode, %User{} = user} <- {:decode, Dynamo.decode_item(user_json, as: User)} do
      {:ok, user}
    else
      {:error, error} -> {:error, inspect(error)}
      {:found, _} -> {:error, "Not found"}
      {:decode, _} -> {:error, "Error in decoding user"}
    end
  end

  def create(%User{} = user) do
    Dynamo.put_item(@table_name, user) |> ExAws.request()
  end

  def create_table do
    # Create a users table with a primary key of email [String]
    # and 1 unit of read and write capacity
    Dynamo.create_table(@table_name, "email", %{email: :string}, 1, 1)
    |> ExAws.request()
  end
end
