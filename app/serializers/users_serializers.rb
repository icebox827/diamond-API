class UsersSerializers
  # instantiate serializer for users
  include FasrJsonapi::ObjectSerializer
  attributes :first_name, :last_name, :email, :password
end