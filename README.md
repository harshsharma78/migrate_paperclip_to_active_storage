# README

# Migrate the Paperclip attachments to Active Storage

Two files are given in the lib directory:
- path_json.rb
- migrate_to_active_storage.rb

## Steps for successful migration
- Run the code in the path_json.rb file where the paperclip is configured i.e. the active storage is not configured yet in the rails app and make a JSON file of the paperclip attachments paths. You can also directly run the code in rails console.
- Then configure the active storage after successfully getting the paths of the paperclip attachments and remove every reference of paperclip from the models, controllers and views and replace it with active storage configuration. After all this, run the code given in the migrate_to_active_storage.rb
- Check the path where you are saving the JSON files, here I am saving it in the '/public/paperclip_attachments_migrate/<JSON file>
