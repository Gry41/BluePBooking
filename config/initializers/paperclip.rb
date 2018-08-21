Paperclip::Attachment.default_options.update(
    begin
      YAML.load_file("#{Rails.root}/config/paperclip.yml")[Rails.env].symbolize_keys
    rescue
      {
        path: "#{Rails.root}/public/system/:attachment/:year/:month/:day/:id/:style.:extension",
        url:  "#{ActionController::Base.relative_url_root}/system/:attachment/:year/:month/:day/:id/:style.:extension"
      }
    end
  )
  
  Paperclip.interpolates :year do |attachment, style|
    Time.at(attachment.updated_at).strftime("%Y")
  end
  
  Paperclip.interpolates :month do |attachment, style|
    Time.at(attachment.updated_at).strftime("%m")
  end
  
  Paperclip.interpolates :day do |attachment, style|
    Time.at(attachment.updated_at).strftime("%d")
  end

  