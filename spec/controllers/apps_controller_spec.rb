require 'spec_helper'

describe AppsController do

  login_user

  describe "#index" do
    it "should render the index template" do
      get :index
      response.should render_template("apps/index")
    end
  end

 describe "#show and #edit" do
   before do
     Factory(:app)
     @apps = App.find(:first)
   end

   it "should render the show template" do
     get :show, :id => @apps
     response.should render_template("apps/show")
   end

   describe "edit action should render edit template" do
     it "should be successful" do
       get :edit, :id => @apps
       response.should render_template("apps/edit")
     end
   end
 end

 describe '#create' do
   before do
     post :create, :application => FactoryGirl.attributes_for(:app)
     @apps = App.find(:first)
     @response = response
   end

   it "should create an App" do
     App.all.size.should == 1
   end

   it "should redirect to that App" do
     @response.should redirect_to(@apps)
   end
 end

 describe '#update' do
   before do
     @apps = Factory(:app)
     put :update, :id => @apps.id, :app => { :name => "Adopta Hydrant" }
   end

   it "should update the App name" do
     @apps.reload.name.should == "Adopta Hydrant"
   end
 end

 describe '#destroy' do
   before do
     @apps = Factory(:app)
     @apps_count = App.all.size
     delete :destroy, :id => @apps.id
   end

   it "should destroy an App" do
     App.all.size.should == @apps_count - 1
     expect{@apps.reload}.to raise_error ActiveRecord::RecordNotFound
   end

   it "should redirect to that apps_url" do
     @response.should redirect_to(apps_url)
   end
 end

end
