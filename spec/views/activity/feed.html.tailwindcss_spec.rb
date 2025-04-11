require 'rails_helper'

RSpec.describe "activity/feed.html.tailwindcss", type: :view do
  it "renders the word feed" do
    render template: 'activity/feed'
    expect(rendered).to match(//)
  end
end
