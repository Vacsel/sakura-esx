RegisterNetEvent("gcPhone:twitter_getTweets")
AddEventHandler("gcPhone:twitter_getTweets", function(tweets)
  SendNUIMessage({event = 'twitter_tweets', tweets = tweets})
end)

RegisterNetEvent("gcPhone:twitter_getFavoriteTweets")
AddEventHandler("gcPhone:twitter_getFavoriteTweets", function(tweets)
  SendNUIMessage({event = 'twitter_favoritetweets', tweets = tweets})
end)

RegisterNetEvent("gcPhone:twitter_newTweets")
AddEventHandler("gcPhone:twitter_newTweets", function(tweet)
  exports.nextra_twitter:SendTwitter(tweet)
  -- TriggerEvent('chat:addMessageTwitter',tweet )
  SendNUIMessage({event = 'twitter_newTweet', tweet = tweet})
end)

RegisterNetEvent("gcPhone:twitter_updateTweetLikes")
AddEventHandler("gcPhone:twitter_updateTweetLikes", function(tweetId, likes)
  SendNUIMessage({event = 'twitter_updateTweetLikes', tweetId = tweetId, likes = likes})
end)

RegisterNetEvent("gcPhone:twitter_setAccount")
AddEventHandler("gcPhone:twitter_setAccount", function(username, avatarUrl)
  SendNUIMessage({event = 'twitter_setAccount', username = username, avatarUrl = avatarUrl})
end)

RegisterNetEvent("gcPhone:twitter_showError")
AddEventHandler("gcPhone:twitter_showError", function(title, message)
  SendNUIMessage({event = 'twitter_showError', message = message, title = title})
end)

RegisterNetEvent("gcPhone:twitter_showSuccess")
AddEventHandler("gcPhone:twitter_showSuccess", function(title, message)
  SendNUIMessage({event = 'twitter_showSuccess', message = message, title = title})
end)

RegisterNetEvent("gcPhone:twitter_setTweetLikes")
AddEventHandler("gcPhone:twitter_setTweetLikes", function(tweetId, isLikes)
  SendNUIMessage({event = 'twitter_setTweetLikes', tweetId = tweetId, isLikes = isLikes})
end)
local theme = nil
RegisterNetEvent("gcPhone:twitter_theme")
AddEventHandler("gcPhone:twitter_theme", function(t)
  theme = t
  print("theme", theme)
end)

RegisterNUICallback('twitter_getTweets', function(cb)
  TriggerServerEvent('gcPhone:twitter_getTweets')
end)

RegisterNUICallback('twitter_getFavoriteTweets', function()
  TriggerServerEvent('gcPhone:twitter_getFavoriteTweets')
end)
local delaypost = false
RegisterNUICallback('twitter_postTweet', function(data, cb)
  if not delaypost then
  -- exports["chat"]:checkVipPlayer(data.message, data.image)
    delaypost = true
    TriggerServerEvent('gcPhone:twitter_postTweet', data.message, data.image, theme)
    Wait(10000)
    delaypost = false
  end
end)

RegisterNUICallback('twitter_toggleLikeTweet', function(data, cb)
  TriggerServerEvent('gcPhone:twitter_toogleLikeTweet', data.tweetId)
end)

RegisterNUICallback('twitter_toggleDeleteTweet', function(data, cb) 
  TriggerServerEvent('gcPhone:twitter_toggleDeleteTweet', data.tweetId)
end)

RegisterNUICallback('twitter_setAvatarUrl', function(data, cb)
  TriggerServerEvent('gcPhone:twitter_setAvatarUrl', data.avatarUrl)
end)

RegisterNUICallback('twitter_changeUsername', function(data, cb)
  TriggerServerEvent('gcPhone:twitter_changeUsername', data.newUsername)
end)