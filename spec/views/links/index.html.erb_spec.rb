require 'rails_helper'

RSpec.describe "links/index", type: :view do
  before(:each) do
    assign(:links, [
      Link.create!(
        title: "Title",
        url: "Url",
        description: "MyText"
      ),
      Link.create!(
        title: "Title",
        url: "Url",
        description: "MyText"
      )
    ])
  end

  it "renders a list of links" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "Url".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
