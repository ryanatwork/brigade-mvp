require 'spec_helper'

describe "apps/edit" do
  before(:each) do
    @app = assign(:app, stub_model(App,
      :name => "MyString",
      :tag_line => "MyString",
      :description => "MyText",
      :instructions => "MyText",
      :github_url => "MyString",
      :demo_url => "MyString",
      :deployments => "MyString"
    ))
  end

  it "renders the edit app form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => apps_path(@app), :method => "post" do
      assert_select "input#app_name", :name => "app[name]"
      assert_select "input#app_tag_line", :name => "app[tag_line]"
      assert_select "textarea#app_description", :name => "app[description]"
      assert_select "textarea#app_instructions", :name => "app[instructions]"
      assert_select "input#app_github_url", :name => "app[github_url]"
      assert_select "input#app_demo_url", :name => "app[demo_url]"
      assert_select "input#app_deployments", :name => "app[deployments]"
    end
  end
end
