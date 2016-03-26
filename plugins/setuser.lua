
local function run(msg, matches)
  if not is_momod(msg) then
      return nil
    end
  local username = matches[1]
  local chat = 'channel#id'..msg.to.id
  
  if msg.to.type == 'channel' then
    print('addabout '..chat..' to '..text)
    channel_set_username(chat, username, ok_cb, false)
    return 'username \n@'..username..'\nsaved'
  else
    return 'username not save'
  end  
end
return {
  patterns = {
    "^[!/#]setusername +(.+)$"
  }, 
  run = run 
