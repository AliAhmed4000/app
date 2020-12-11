ActiveAdmin.register Category do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :name, :description, images: []
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :description]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  #showing images
  show do
   attributes_table do
     row :name
     row :description
     row :images do |category|
       if category.images.attached?
       category.images.each do | imgg |
         div do
            image_tag url_for(imgg)
            end
          end
        end
       end
     end
   end

     form do |f|
       f.inputs do
         f.inputs
         f.input :images, as: :file, input_html: { multiple: true }
       end
      f.actions
     end
end
