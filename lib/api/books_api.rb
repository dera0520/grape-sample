class Books_API < Grape::API
  resource "books" do

    # ex) http://localhost"3000/api/v1/books
    desc "returns all books"
    get do
      Books.all
    end

    desc "return a books"
    params do
      requires :id, type: Integer
      optional :title, type: String
    end
    get ':id' do
      Books.find(params[:id])
    end

    desc "delete a books"
    params do
      requires :id, type: Integer
    end
    # http://localhost:3000/api/vi/books/del/:id
    get 'del/:id' do
      Books.find(params[:id]).destroy
    end

  end
end
