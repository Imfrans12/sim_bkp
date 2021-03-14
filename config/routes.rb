Rails.application.routes.draw do
  patch 'tr_sikaps/:id/activate',to:'tr_sikaps#activate' , as: :activate
  patch 'tr_motivasis/:id/activate',to:'tr_motivasis#activate' , as: :activate_motivasi
  patch 'tr_esds/:id/activate',to:'tr_esds#activate' , as: :activate_esd
  patch 'tr_phbs/:id/activate',to:'tr_phbs#activate' , as: :activate_phbs
  patch 'tr_shalat_fardus/:id/activate',to:'tr_shalat_fardus#activate' , as: :activate_fardu 
  patch 'tr_shalat_dhuhas/:id/activate',to:'tr_shalat_dhuhas#activate' , as: :activate_dhuha 
  patch 'tr_shalat_jumats/:id/activate',to:'tr_shalat_jumats#activate' , as: :activate_jumat 
  patch 'tr_ceramahs/:id/activate',to:'tr_ceramahs#activate' , as: :activate_ceramah
  patch 'tr_pengajians/:id/activate',to:'tr_pengajians#activate' , as: :activate_pengajian 
  patch 'tr_juzs/:id/activate',to:'tr_juzs#activate' , as: :activate_juz 
  patch 'tr_keagamaans/:id/activate',to:'tr_keagamaans#activate' , as: :activate_keagamaan  
  patch 'tr_jurnals/:id/activate',to:'tr_jurnals#activate' , as: :activate_jurnal
  patch 'tr_jurnal2s/:id/activate',to:'tr_jurnal2s#activate' , as: :activate_jurnal2  
  patch 'tr_jurnal3s/:id/activate',to:'tr_jurnal3s#activate' , as: :activate_jurnal3    
  resources :tr_jurnal3s
  resources :tr_jurnal2s
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
