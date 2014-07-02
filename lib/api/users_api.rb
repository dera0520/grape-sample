class Users_API < Grape::API
  resource "users" do

    # ex) http://localhost"3000/api/v1/users
    desc "returns all users"
    get do
      Users.all
    end

    desc "return a users"
    params do
      requires :id, type: Integer
      optional :name, type: String
    end
    get ':id' do
      Users.find(params[:id])
    end
  end
end
