class Comment 
  include Mongoid::Document

  field :author, type: String
  field :comment, type: String

  #we introduce here a structure that says we want to think about 
  #each comment as being a part of a post document
  embedded_in :post
end