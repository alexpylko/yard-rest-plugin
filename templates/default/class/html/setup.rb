def init
  sections :header,  :method_summary, [:item_summary], :method_details_list, [T('method_details')]
end

def method_details_list
  @meths = object.meths(:inherited => false, :included => false) 
  @meths = index_objects(@meths)
  erb(:method_details_list)
end
