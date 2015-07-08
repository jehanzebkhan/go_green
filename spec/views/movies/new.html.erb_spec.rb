require 'spec_helper'

describe "movies/new" do
  before(:each) do
    assign(:movie, stub_model(Movie,
      :title => "MyString",
      :score => "",
      :imdb_link => "MyString"
    ).as_new_record)
  end

  it "renders new movie form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", movies_path, "post" do
      assert_select "input#movie_title[name=?]", "movie[title]"
      assert_select "input#movie_score[name=?]", "movie[score]"
      assert_select "input#movie_imdb_link[name=?]", "movie[imdb_link]"
    end
  end
end
