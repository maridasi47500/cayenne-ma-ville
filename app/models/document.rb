class Document < ApplicationRecord
def filename=(uploaded_io)
File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
  file.write(uploaded_io.read)
end
end
def filename
read_attribute(:filename)
end
end
