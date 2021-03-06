require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_db_column :user_name}
  it { should have_db_column :first_name}
  it { should have_db_column :last_name}
  it { should have_db_column :email}
  it { should have_db_column :password_digest}
  it { should validate_presence_of :user_name}
  it { should validate_presence_of :first_name}
  it { should validate_presence_of :last_name}
  it { should validate_presence_of :email}
  it { should validate_presence_of :password_digest}
  it { should have_many :posts}
end
