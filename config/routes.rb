Rails.application.routes.draw do
  resources :components, :contract_maintenance_items, :contract_services, :contracts,
            :date_infos, :facilities, :items, :manufacturers, :organisation_services, :organisations,
            :reg_keys, :reg_key_privileges, :reports, :reviews, :services, :tasks, :users,
            only: [:index, :show, :create, :update, :destroy]

  # Defines the root path route ("/")
  # root "posts#index"
  # TODO: member and collection routes for entities displayed in Qt app client
end
