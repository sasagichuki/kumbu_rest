ActiveAdmin.register DeathNotice do
  permit_params :title, :date_added, :client_born, :client_died, :eulogy, :burial_date, :meeting_date, :burial_location, :meeting_location, :client_picture, :comments


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
