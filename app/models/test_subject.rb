class TestSubject
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :phrase, :word

  def initialize options = {}
    @phrase = options[:phrase]
    @word   = options[:word]
  end

  def self.model_name
    @@model_name ||= ActiveModel::Name.new(self)
  end

  def persisted?
    false
  end
end