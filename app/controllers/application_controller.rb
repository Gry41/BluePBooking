class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :except => [:show, :index,:home, :query,:gallery, :mail,:all_points,:mail_us]
  contact = Contact.all.each
  contact.next
  @face_link = contact.next
  @insta_link = contact.next
  
end
