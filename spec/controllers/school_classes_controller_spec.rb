require 'rails_helper'


describe SchoolclassesController do

  describe "POST create" do
    context "with valid attributes" do
      it "creates a new school_class" do
        expect{
          post :create, params: { :school_class => { :title => "Computer Science", :room_number => 5 } }
        }.to change(Schoolclass,:count).by(1)
      end

      it "redirects to the new school_class" do
        post :create, params: { :school_class => { :title => "Computer Science", :room_number => 5 } }
        expect(response).to redirect_to Schoolclass.last
      end
    end
  end

end
