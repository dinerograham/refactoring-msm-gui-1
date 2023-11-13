# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord

  def movie
    # returns movie given a character
    matching_movies = Movie.where({:id => self.movie_id})
    return matching_movies[0]
  end
end
