require 'spec_helper'

describe "movies/edit" do
  before(:each) do
    @movie = assign(:movie, stub_model(Movie,
      :title => "MyString",
      :score => "",
      :imdb_link => "MyString"
    ))
  end

  it "renders the edit movie form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", movie_path(@movie), "post" do
      assert_select "input#movie_title[name=?]", "movie[title]"
      assert_select "input#movie_score[name=?]", "movie[score]"
      assert_select "input#movie_imdb_link[name=?]", "movie[imdb_link]"
    end
  end
end
