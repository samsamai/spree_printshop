FactoryGirl.define do
  # Define your Spree extensions Factories within this file to enable applications, and other extensions to use and override them.
  #
  # Example adding this to your spec_helper will load these Factories for use:
  # require 'spree_printshop/factories'
  factory :user, class: Spree::User do
    email "user@spree.com"
    password "password"
    password_confirmation "password"
    spree_roles { [Spree::Role.find_by_name("user")] }
    factory :admin do
      email "admin@spree.com"
      spree_roles { [Spree::Role.find_by_name("admin")] }
    end
    factory :user_provider do
      email "provider@spree.com"
      spree_roles { [Spree::Role.find_by_name("provider")] }
      provider
    end
  end

  factory :provider do
    name { Faker::Company.name }
    email { Faker::Internet.email }
  end
  factory :invalid_provider, parent: :contact do
    name nil
  end

  factory :order, class: Spree::Order do
    user
  end

  factory :publication_request do
    status { PublicationRequest::OPEN }
    product
  end
end
