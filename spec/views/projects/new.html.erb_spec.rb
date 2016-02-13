require 'rails_helper'

RSpec.describe "projects/new", type: :view do
  before(:each) do
    assign(:project, Project.new(
      :name => "MyString",
      :url => "MyString",
      :budget => 1,
      :client => nil
    ))
  end

  it "renders new project form" do
    render

    assert_select "form[action=?][method=?]", projects_path, "post" do

      assert_select "input#project_name[name=?]", "project[name]"

      assert_select "input#project_url[name=?]", "project[url]"

      assert_select "input#project_budget[name=?]", "project[budget]"

      assert_select "input#project_client_id[name=?]", "project[client_id]"
    end
  end
end
