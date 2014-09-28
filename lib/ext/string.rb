class String
  def to_id
    self.downcase.gsub /[_\,\.\/\ \+\-]+/, '_'
  end
end