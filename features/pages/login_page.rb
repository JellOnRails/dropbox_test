
class SignInSection < SitePrism::Section

# -- field --
  element :email_field, "#business-sign-in-modal .text-input-input[ name='login_email' ]"
  element :password_field, "#business-sign-in-modal .text-input-input[ name='login_password' ]"

# -- button --
  element :sign_in_button, '#business-sign-in-modal .login-form .login-button'

end

class LoginPage < SitePrism::Page

  set_url '/'

# -- section --
  section :sign_in_section, SignInSection, '#business-sign-in-modal .db-modal-content'

# -- button --
  element :sign_in_button, '#sign-in'

# -- action --
  def sign_in_as( usr )

    user = get_user_info usr
    sign_in_button.click
    sign_in_section.email_field.set user[ 'email' ]
    sign_in_section.password_field.set user[ 'password' ]
    sign_in_section.sign_in_button.click

  end

end
