class AddSomeMovies < ActiveRecord::Migration
  def up
    [['Gone with the Wind', 'G', '15/12/1939', 'The iconic American film set in the Reconstruction South'],
      ['Casablanca', 'PG', '26/11/1942', 'Casablanca is a classic and iconic film starring Humphrey Bogart and Ingrid Bergman.'],
      ['Pay it Forward', 'PG-13', '02/10/2000', 'A feel-good film about doing good for others.'],
      ['The Lord of the Rings: The Fellowship of the Ring', 'PG-13', '19/12/2001', 'The first in a trilogy based on J.R.R. Tolkien\'s books.'],
      ['Avatar', 'PG-13', '18/12/2009', 'What if you could control an alien body on another planet?'],
      ['It\'s Complicated', 'R', '23/12/2009', 'The title says it all--some relationships are just hard to explain.'],
      ['Inception', 'PG-13', '16/7/2010', 'Dreams within dreams in this mind-bending thriller.']].each do |movie|
      Movie.create! :title => movie[0], :rating => movie[1], :release_date => Time.parse(movie[2]), :description => movie[3]
    end
  end

  def down
    Movie.delete_all
  end
end
