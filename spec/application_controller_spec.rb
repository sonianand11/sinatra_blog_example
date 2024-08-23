require_relative "spec_helper"

def app
  ApplicationController
end

describe ApplicationController do

  let!(:user) { User.create(email: "user1@example.com", password: 'changeme') }
  let!(:post) { Post.create({author_id: user.id, title: "Post 1 title", content: "Post 2 content"}) }

  it "responds with a welcome message" do
    get '/'
    expect(last_response.status).to eq(200)
    expect(last_response.body).to include(post.title)
    expect(Post.count).to eq(1)
  end
end
