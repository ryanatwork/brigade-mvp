require 'spec_helper'

describe "apps/index" do
  before(:each) do
    assign(:apps, [
      stub_model(App,
        :name => "Name",
        :tag_line => "Tag Line",
        :description => "MyText",
        :instructions => "MyText",
        :github_url => "Github Url",
        :demo_url => "Demo Url",
        :deployments => "Deployments"
      ),
      stub_model(App,
        :name => "Name",
        :tag_line => "Tag Line",
        :description => "MyText",
        :instructions => "MyText",
        :github_url => "Github Url",
        :demo_url => "Demo Url",
        :deployments => "Deployments"
      )
    ])
  end

  pending it "renders a list of apps" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Tag Line".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Github Url".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Demo Url".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Deployments".to_s, :count => 2
  end
end
