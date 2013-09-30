get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/:username' do
  friends = Twitter.user_timeline("leejart")

  friends.each do |f|
    f.text
  end
  erb :index
end