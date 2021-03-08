Rails.application.routes.draw do
  resources :tr_shalat_dhuhas
  resources :tr_shalat_jumats
  resources :tr_shalat_fardus
  resources :tr_ceramahs
  resources :tr_pengajians
  resources :tr_juzs
  resources :tr_keagamaans
  resources :tr_jurnals
  resources :tr_phbs
  resources :tr_esds
  resources :tr_motivasis
  get 'ms_kode/index'
  get 'ms_kode/show'
  get 'ms_kode/edit'
  get 'ms_kode/update'
  get 'ms_kode/new'
  get 'ms_kode/create'
  get 'ms_kode/destroy'
  devise_for :ms_users
  resources :tr_sikaps
  root to: 'dashboard#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
