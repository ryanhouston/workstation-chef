apt_repository "handbrake" do
  uri "ppa:stebbins/handbrake-releases"
  distribution node['lsb']['codename']
end

package "handbrake-gtk"

