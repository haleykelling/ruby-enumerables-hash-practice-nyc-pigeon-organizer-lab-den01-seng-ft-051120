def nyc_pigeon_organizer(data)
  pigeons = {}
  data.each do |sub_category, value|
    value.each do |trait, names|
      names.each do |name|
        pigeons[name] ||= {}
        pigeons[name][sub_category] ||= []
        pigeons[name][sub_category].push(trait.to_s)
      end
    end
  end
  p pigeons
end
