json.array!(@chats) do |chat|
  json.extract! chat, :content, :user_post, :user_rev, :post_read
  json.url chat_url(chat, format: :json)
end