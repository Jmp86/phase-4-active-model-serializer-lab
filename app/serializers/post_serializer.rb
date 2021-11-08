class PostSerializer < ActiveModel::Serializer
  attributes :title, :content

  def short_content
    "#{self.object.content[0..39]}..."
  end

  belongs_to :author
  has_many :tags

end
