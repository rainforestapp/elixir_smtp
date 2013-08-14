defmodule ElixirSmtp do
  def send!(from, to, subject, body, server, login, password) do 
    :gen_smtp_client.send({to, [from], "Subject: #{subject}\r\nFrom: #{from}\r\nTo: #{to}\r\n\r\n#{body}"}, [{:relay, server}, {:username, login}, {:password, password}])
  end
end
