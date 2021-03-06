
def get_user_info( usr )

  begin
    user = CONFIG[ 'users' ].fetch( usr )
  rescue e
    raise "No such user configured: <#{usr}> => #{e.message}"
  end

  if CONFIG[ 'use_encoded_password' ]
    user[ 'password' ] = Base64.decode64( user[ 'password_encoded' ].dup ) unless user[ 'password_encoded' ].nil?
  end

  user
end

def get_env_url
  CONFIG[ 'environments' ][ "#{ENV[ 'environment' ]}" ][ 'url' ]
end

def get_folder_name
  CONFIG[ 'folder_name' ]
end