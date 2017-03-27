RailsAdmin.config do |config|

  config.main_app_name = ["JCS", "Administrator"]

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :admin
  end
  config.current_user_method(&:current_admin)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar true

  config.model Admin do
    navigation_label 'Administration'
    weight 10

    edit do
      field :email
      field :password
      field :password_confirmation
    end
  end

  config.model Client do
    navigation_label 'Administration'
    weight 10
    exclude_fields :id, :created_at, :updated_at
  end

  config.model Provider do
    navigation_label 'Administration'
    weight 10
    exclude_fields :id, :created_at, :updated_at
  end

  config.model Dispatch do
    parent Bidding
    exclude_fields :id, :created_at, :updated_at

    list do
      field :items, :integer do
        formatted_value do
          bindings[:object].items.count
        end
      end
    end
  end

  config.model Item do
    parent Dispatch
    exclude_fields :id, :created_at, :updated_at
  end

  config.model Bidding do
    exclude_fields :id, :created_at, :updated_at
  end

  config.actions do
    dashboard
    index
    new do
      except ["Admin"]
    end
    export
    bulk_delete
    show
    edit
    delete

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
