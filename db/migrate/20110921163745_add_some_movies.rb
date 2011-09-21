class AddSomeMovies < ActiveRecord::Migration
  def up
    [['Gone with the Wind', 'G', '12/15/1939', 'The iconic American film set in the Reconstruction South'],
      ['Casablanca', 'PG', '11/26/1942', 'Casablanca is a classic and iconic film starring Humphrey Bogart and Ingrid Bergman.'],
      ['Pay it Forward', 'PG-13', '10/02/2000', 'A feel-good film about doing good for others.'],
      ['The Lord of the Rings: The Fellowship of the Ring', 'PG-13', '12/19/2001', 'The first in a trilogy based on J.R.R. Tolkien\'s books.'],
      ['Avatar', 'PG-13', '12/18/2009', 'What if you could control an alien body on another planet?'],
      ['It\'s Complicated', 'R', '12/23/2009', 'The title says it all--some relationships are just hard to explain.'],
      ['Inception', 'PG-13', '7/16/2010', 'Dreams within dreams in this mind-bending thriller.']].each do |movie|
      Movie.create! :title => movie[0], :rating => movie[1], :release_date => Date.parse(movie[2]), :description => movie[3]
    end
  end

  def down
    Movie.delete_all
  end
end
