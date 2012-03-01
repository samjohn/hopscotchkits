kits = [
  {"id"=>2,
    "name"=>"Tic-Tac-Toe",
    "slug"=>"tic-tac-toe",
    "description"=>"Welcome to the Tic-Tac-Toe Kit by Hopscotch. We\'ll teach you step-by-step how to make your own Tic-Tac-Toe game you can play with your friends online. Afterwards you can share it with the world to show everyone what an awesome computer programmer you are.",
    "created_at"=>"Mon, 02 Jan 2012 23:58:19 UTC +00:00",
    "updated_at"=>"Tue, 14 Feb 2012 16:11:23 UTC +00:00",
    "icon_url"=>"puppy-icon.png",
    "published"=>false,
    "blurb"=>nil},
  {"id"=>3,
    "name"=>"Puppy Draw",
    "slug"=>"puppy",
    "description"=>"Welcome to the Puppy Drawing Kit by Hopscotch. We\'ll teach you step-by-step how to make your own puppy cartoon illustration. Afterwards you can share it with the world to show everyone what an awesome computer programmer (and artist!) you are.",
    "created_at"=>"Thu, 05 Jan 2012 21:11:55 UTC +00:00",
    "updated_at"=>"Thu, 09 Feb 2012 21:53:26 UTC +00:00",
    "icon_url"=>"puppy-icon.png",
    "published"=>true,
    "blurb"=>"We\'ll teach you step-by-step how to make your own puppy cartoon illustration. Afterwards you can share it with the world to show everyone what an awesome computer programmer (and artist!) you are."},
  {"id"=>4,
    "name"=>"Puppy Draw",
    "slug"=>"puppy2",
    "description"=>"Welcome to the Puppy Drawing Kit by Hopscotch. We\'ll teach you step-by-step how to make your own puppy cartoon illustration. Afterwards you can share it with the world to show everyone what an awesome computer programmer (and artist!) you are.",
    "created_at"=>"Thu, 05 Jan 2012 21:11:55 UTC +00:00",
    "updated_at"=>"Tue, 14 Feb 2012 16:11:23 UTC +00:00",
    "icon_url"=>"puppy-icon.png",
    "published"=>false,
    "blurb"=>"We\'ll teach you step-by-step how to make your own puppy cartoon illustration. Afterwards you can share it with the world to show everyone what an awesome computer programmer (and artist!) you are."},
  {"id"=>5,
    "name"=>"Animation",
    "slug"=>"animation",
    "description"=>"Now that you\'ve drawn a puppy let\'s make her do something. We\'ll create a scene for her to live in and a friend for her to talk to and play with. \r\n\r\nLet\'s get started!",
    "created_at"=>"Tue, 10 Jan 2012 01:47:00 UTC +00:00",
    "updated_at"=>"Tue, 14 Feb 2012 16:11:23 UTC +00:00",
    "icon_url"=>"puppy-icon.png",
    "published"=>nil,
    "blurb"=>nil},
  {"id"=>6,
    "name"=>"Make a website",
    "slug"=>"website",
    "description"=>"This is kim\'s kit",
    "created_at"=>"Tue, 14 Feb 2012 03:52:20 UTC +00:00",
    "updated_at"=>"Tue, 14 Feb 2012 16:11:23 UTC +00:00",
    "icon_url"=>"puppy-icon.png",
    "published"=>nil,
    "blurb"=>"Kim\'s kit!"},
  {"id"=>7,
    "name"=>"Quiz Game",
    "slug"=>"quiz",
    "description"=>"For this kit, we\'re going to show you how to make a quiz you can play on your computer or your phone. You\'ll need to give the computer different sets of directions to do several different things, and at the end, we\'ll put them all together to make a working program.",
    "created_at"=>"Wed, 15 Feb 2012 14:53:09 UTC +00:00",
    "updated_at"=>"Wed, 15 Feb 2012 14:53:09 UTC +00:00",
    "icon_url"=>"quiz-icon.png",
    "published"=>true,
    "blurb"=>"Make a quiz you can play on your computer or your phone."}
]
kits.each do |kit|
  if existing_kit = Kit.find_by_slug(kit["slug"])
    existing_kit.update_attributes(kit)
  else
    new_kit = Kit.new(kit)
    new_kit.id = kit["id"]
    new_kit.save
  end
end
