class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :except => [:show, :index,:home, :query,:gallery, :mail,:all_points,:mail_us]
  # contact = Contact.all.each
  # b=contact.next
  # if b 
  #   @face_link = contact.next
  #   if @face_link 
  #     @insta_link = contact.next
  #   end
  # end
end
