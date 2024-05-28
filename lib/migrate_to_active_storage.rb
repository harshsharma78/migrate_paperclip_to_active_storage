class Migrate
  def self.mig
    file_path = File.join(Dir.pwd, "/public/paperclip_attachments_migrate/users.json")
    data = JSON.parse(File.read(file_path))

    User.find_each do |item|
      path = data[item.email]
      if path
        item.profile_picture.attach(io: File.open(path), filename: item.profile_picture_file_name, content_type: item.profile_picture_content_type)
      end
    end
  end
  # end

  #   file_path = File.join(Dir.pwd, "/public/paperclip_attachments_migrate/categories.json")
  #   data = JSON.parse(File.read(file_path))
  #
  #   Category.find_each do |item|
  #     path = data[item.id.to_s]
  #     if path
  #       begin
  #         unless File.exist?(path)
  #           puts "File not found: #{path}"
  #           next
  #         end
  #         item.image.attach(io: File.open(path), filename: item.image_file_name, content_type: item.image_content_type)
  #       rescue Errno::ENOENT => e
  #         puts "Error opening file: #{e.message}"
  #         next
  #       end
  #     else
  #       puts "No path found for user: #{item.id}"
  #       next
  #     end
  #   end
end

# Dir[Rails.root + "public/*.json"].each { |fil| require fil }
