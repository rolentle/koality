FB_APP_ID = 594183100646923
FB_SECRET = "49c1d9523000f644f5b809ad708c16db"

Koala::Facebook::OAuth.class_eval do
  def initialize_with_default_settings(*args)
    case args.size
    when 0,1
      raise "application id and/or secret are not specified in the config" unless Facebook::APP_ID && Facebook::SECRET
      initialize_without_default_settings(FB_APP_ID.to_s, FB_SECRET.to_s, args.first)
    when 2,3
      initialize_without_default_settings(*args)
    end
  end

   alias_method_chain :initialize, :default_settings
end
