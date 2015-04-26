
class HomePage < SitePrism::Page

  set_url '/home'

# -- field --
  element :editor_field, '.editor_field'

# -- button --
  element :new_folder_button, '.s_web_folder_add'
  element :upload_button, '.s_web_upload_16'

# -- element --
  elements :file_or_folder, "#browse-files .filename-col [ alt~='#{get_folder_name}' ]"
  element :new_folder_icon, '.browse-new-folder .sprite_web'

# -- action --
  def create_folder

    @name = get_folder_name
    new_folder_button.click
    editor_field.set @name
    new_folder_icon.click                               # todo: replace with 'remove focus' or 'send return signal'

  end

end