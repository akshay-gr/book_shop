ActiveAdmin.register Book do

  permit_params :title, :author, :cover_image

  index do
    column :title
    column :author
    column :cover_image do |book|
      image_tag(book.cover_image.url(:thumb))
    end
    actions
  end

  form :html => { :multipart=>true } do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs do
      f.input :title
      f.input :author
      f.input :cover_image, :as => :file, :hint => f.image_tag(book.cover_image.url(:medium))
      f.actions do
        f.actions
      end
    end
  end
end
