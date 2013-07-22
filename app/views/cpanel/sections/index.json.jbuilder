json.array!(@cpanel_sections) do |cpanel_section|
  json.extract! cpanel_section, :name, :sort
  json.url cpanel_section_url(cpanel_section, format: :json)
end
