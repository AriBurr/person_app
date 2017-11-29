Rails.application.routes.draw do
  root 'people#index'
  resources:people do
    resources:notes, only: [:create, :destroy]
  end
end
