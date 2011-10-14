# Resets contexts  before a new page rendering
#ActionDispatch::Callbacks.before do
#end

pnml_define_context(:hour)
pnml_add_adaptation(:hour, ApplicationHelper, :phenomenal_color) do |tmp|
  "red"
end

pnml_define_context(:date)
pnml_add_adaptation(:date, ApplicationHelper, :phenomenal_color) do |tmp|
  "green"
end

pnml_define_context(:user_agent)  
pnml_add_adaptation(:user_agent, ApplicationHelper, :phenomenal_color) do |tmp|
  "blue"
end

pnml_define_context(:geo_ip)
pnml_add_adaptation(:geo_ip, ApplicationHelper, :phenomenal_color) do |tmp|
  "yellow"
end
