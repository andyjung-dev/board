defmodule BoardWeb.SubscriptionController do
    use BoardWeb, :controller

    def create(conn, %{"email" => email}) do 
        IO.inspect(email, label: "Email submitted")
        send_resp(conn, 200, "OK")
    end
end