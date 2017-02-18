resources :start_end_date, :only => [:index] do
  collection do
    post 'update_start'
    post 'update_end'
  end
end
