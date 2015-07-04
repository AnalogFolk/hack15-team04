class AddIpAddressToLoginToken < ActiveRecord::Migration
  def change
    add_column :login_tokens, :ip_address, :string
  end
end
