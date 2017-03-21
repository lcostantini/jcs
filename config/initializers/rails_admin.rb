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
  end

  config.model Client do
    navigation_label 'Administration'
    weight 10
  end

  config.model Provider do
    navigation_label 'Administration'
    weight 10
  end

  config.model Dispatch do
    parent Bidding
  end

  config.model Item do
    parent Dispatch
  end

  config.actions do
    dashboard
    index
    new
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
