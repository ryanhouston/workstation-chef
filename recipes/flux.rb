apt_repository "f.lux" do
  uri "ppa:kilian/f.lux"
  distribution node['lsb']['codename']
end

package "fluxgui"

