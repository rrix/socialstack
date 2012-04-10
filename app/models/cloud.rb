class Cloud
  include Mongoid::Document
  include Mongoid::Timestamps

  field :cloud_name

  attr_accessor :cloud_words

private

  def self.create_new_cloud
    @the_cloud = some_silly_cloud_name

    return Cloud.create cloud_name: @the_cloud
  end

  def self.some_silly_cloud_name
    cloud_length = rand(2) + 2
    cloud_name = ""

    cloud_length.times do
      word = cloud_words[ rand( cloud_words.length ) ]
      cloud_name += word
    end

    return cloud_name
  end

  def cloud_word_me
    n = rand( cloud_words.length +1 )
    return social_word if n > cloud_words.length

    return cloud_words[n]
  end

  def self.social_word string
    n = rand( social_words.length +1 )

    return social_words[n]
  end

  def self.cloud_words 
    [
      "Cloud",
      "Platform",
      "Service",
      "Social",
      "Stack",
      "Thunder",
      "Web"
    ]
  end

  def self.social_words
    [
      "+",
      "2.0",
      "3.0",
      "Book"
    ]
  end

end
