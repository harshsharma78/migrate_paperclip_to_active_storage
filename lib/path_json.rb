require "json"

class PathJson
  def self.generate_json_file
    model = User.all
    content = {}
    model.each do |item|
      next unless item.profile_picture.path.present?
      content[item.email] = item.profile_picture.path
    end

    file_path = File.join(Dir.pwd, "users.json")
    json_data = content.to_json

    File.open(file_path, "w") do |file|
      file.write(json_data)
    end
  end
end
