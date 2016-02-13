require 'rails_helper'

RSpec.describe "projects/edit", type: :view do
  before(:each) do
    @project = assign(:project, Project.create!(
      :name => "MyString",
      :url => "MyString",
      :budget => 1,
      :client => nil
    ))
  end

  it "renders the edit project form" do
    render

    assert_select "form[action=?][method=?]", project_path(@project), "post" do

      assert_select "input#project_name[name=?]", "project[name]"

      assert_select "input#project_url[name=?]", "project[url]"

      assert_select "input#project_budget[name=?]", "project[budget]"

      assert_select "input#project_client_id[name=?]", "project[client_id]"
    end
  end
end
