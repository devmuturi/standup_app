module RequestMacros
  def login_user
    before(:each) do
      @user = FactoryBot.create(:user)
      sign_in @user, scope: :user
    end
  end
end
