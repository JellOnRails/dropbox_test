
class HomePage < SitePrism::Page

  set_url '/home'

# -- field --
  element :editor_field, '.editor_field'

# -- button --
  element :new_folder_button, '.s_web_folder_add'

# -- sidebar --
  element :files_button, '#personal-nav-item'
  element :photos_button, '#photos-nav-item'
  element :sharing_button, "#main-nav a[href='/share']"
  element :links_button, "#main-nav a[href='/links']"
  element :events_button, "#main-nav a[href='/events']"
  element :get_started_button, "#main-nav a[href='/gs']"

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