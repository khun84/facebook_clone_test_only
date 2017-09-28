require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the SessionsHelper. For example:
#
# describe SessionsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe SessionsHelper, type: :helper, focus: true do
    describe 'current user' do
        context 'when user has logged in' do
            it 'should return the current user' do
                user = create(:user)
                session[:user_id] = user.id

                expect(current_user).to be_a_kind_of(User)
                expect(current_user.id).to eq(user.id)
            end

        end

        context 'when no user logged in' do
            it 'should return nil' do
                expect(current_user).to eq(nil)
            end
        end
    end
end
