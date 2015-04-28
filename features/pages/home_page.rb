
class HomePage < SitePrism::Page

  set_url '/home'

# -- field --
  element :editor_field, '.editor_field'

# -- button --
  element :new_folder_button, '.s_web_folder_add'

# -- item --
  element :file_or_folder, "#browse-files .filename-col [ alt~='#{get_folder_name}' ]"
  element :new_folder_icon, '.browse-new-folder .sprite_web'

# -- action --
  def create_folder

    folder_name = get_folder_name
    new_folder_button.click
    editor_field.set folder_name
    new_folder_icon.click                               # todo: replace with 'remove focus' or 'send return signal'

  end

end