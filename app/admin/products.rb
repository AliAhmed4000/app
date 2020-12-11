ActiveAdmin.register Product do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :name, :description, :price, :category_id, images: []
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :description, :price, :category_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

   show do
    attributes_table do
      row :name
      row :images do |product|
        span do
        if product.images.attached?
        product.images.each do | img |
          div do
             image_tag url_for(img)
             end
           end
          end
         end
        end
      end
    end

  form do |f|
    f.inputs do
      f.input :category
      f.input :name
      f.input :description
      f.input :price
      f.input :images, as: :file, input_html: { multiple: true }
    end
   f.actions
  end

end
