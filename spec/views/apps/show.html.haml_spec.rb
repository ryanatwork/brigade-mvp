require 'spec_helper'

describe "apps/show" do
  before(:each) do
    @app = assign(:app, stub_model(App,
      :name => "Name",
      :tag_line => "Tag Line",
      :description => "MyText",
      :instructions => "MyText",
      :github_url => "Github Url",
      :demo_url => "Demo Url",
      :deployments => "Deployments"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Tag Line/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Github Url/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Demo Url/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Deployments/)
  end
end
