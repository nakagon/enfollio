module UserHelper
  def star_rating(num)
    star = ""
    (1..num).each do 
      star += '★'
    end
    star
  end
end
