namespace :deploy do
  desc 'Shows the Git revision of the currently deployed app'
  task :get_current_revision do
    on roles(:app).first do
      within current_path do
        puts capture(:cat, 'REVISION')
      end
    end
  end
end
