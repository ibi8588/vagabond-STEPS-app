require 'date'

module PostsHelper




  def date_subtr(d)
    date_time = DateTime.parse(d)
    return (Date.today - date_time).ceil.to_i
  end
end
