class Person < ApplicationRecord
  paginates_per 10

  def self.search(first_name, last_name, email, gender)
    if gender == nil
      person = Person.where(
        "lower(first_name) LIKE ? and 
        lower(last_name) LIKE ? and 
        lower(email) LIKE ?",
        "%#{first_name.downcase}%",
        "%#{last_name.downcase}%",
        "%#{email.downcase}%"
      )
    else
      person = Person.where(
        "lower(first_name) LIKE ? and 
         lower(last_name) LIKE ? and 
         lower(email) LIKE ? and 
         gender == ?",
         "%#{first_name.downcase}%",
         "%#{last_name.downcase}%",
         "%#{email.downcase}%",
         "#{gender}"
      )
    end
    return person
  end

end
