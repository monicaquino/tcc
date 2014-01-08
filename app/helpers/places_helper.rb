module PlacesHelper
  PLACES = YAML.load(File.read "#{Rails.root}/db/places.yml")['places']
 
  def brazilian_states
    @@brasilian_states ||= PLACES['brazilian_states'].map(&:last)
  end
end