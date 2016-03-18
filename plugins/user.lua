local function run(msg, matches ) 
  if matches[1] == "user" then
    return "Telegram.me/"..msg.from.username
  end
end

return {
  patterns ={
    "^[/! #](user)$" 
 }, 
  run = run 
}
