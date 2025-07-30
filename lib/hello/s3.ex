defmodule Hello.S3 do
  def upload_file(bucket, file_path, key) do
    file_path
    |> File.read!()
    |> upload_content(bucket, key)
  end

  def upload_content(content, bucket, key) do
    ExAws.S3.put_object(bucket, key, content)
    |> ExAws.request()
  end

  def download_file(bucket, key, destination_path) do
    case get_object(bucket, key) do
      {:ok, content} ->
        File.write!(destination_path, content)
        {:ok, destination_path}

      {:error, _} = error -> error
    end
  end

  def get_object(bucket, key) do
    case ExAws.S3.get_object(bucket, key) |> ExAws.request() do
      {:ok, %{body: body}} -> {:ok, body}
      {:error, _} = error -> error
    end
  end

  def key_exists?(bucket, key) do
    case ExAws.S3.head_object(bucket, key) |> ExAws.request() do
      {:ok, _} -> true
      {:error, {:http_error, 404, _}} -> false
      {:error, _} = error -> error
    end
  end
end
