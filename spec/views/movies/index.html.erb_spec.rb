require 'spec_helper'

describe "movies/index" do
  before(:each) do
    assign(:movies, [
      stub_model(Movie,
        :title => "Title",
        :score => "",
        :imdb_link => "Visit"
      ),
      stub_model(Movie,
        :title => "Title",
        :score => "",
        :imdb_link => "Visit"
      )
    ])
  end

  it "renders a list of movies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Visit".to_s, :count => 2
  end

  @javascript
  it "checks of UI Regression Bugs" do
    percentage = GreenOnion.skin_visual_and_percentage("http://localhost:3000/movies")
    expect(percentage.to_f).to eq(0)
  end
end
