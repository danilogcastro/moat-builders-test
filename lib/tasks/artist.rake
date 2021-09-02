namespace :artist do
  desc "Makes API call and creates artists from list"
  task create_artists: :environment do
    artists = FetchArtists.new.parse_list
    puts "Purging database..."
    Artist.destroy_all
    puts "Done purging database!"
    puts "Creating new artists..."
    artists.each do |artist|
      Artist.create(name: artist["name"], twitter: artist["twitter"])
    end
    puts "All done!"
  end
end
