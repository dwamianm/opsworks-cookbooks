node[:deploy].each do |application, deploy|

  application_folder = "#{deploy[:deploy_to]}/current"

  git "Update Git" do
    repository deploy[:git_repository]
    destination "#{application_folder}"
    action :sync
  end

end
