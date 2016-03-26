do
local function get_message_callback(extra, success, result)
  if result.to.peer_type == 'channel' then
    if our_id == result.from.peer_id then
      --local del = delete_msg(result.id, ok_cb, true)
    else
      local del = delete_msg(result.id, ok_cb, true)
      if del == false then
        send_msg(extra, "deleting failed.", ok_cb, false)
        return
      end
    end
  else
    send_msg(extra, "", ok_cb, false)
    return
  end
end
local function run(msg, matches)
  if matches[1] == "del" and msg.reply_id then
    msgr = get_message(msg.reply_id,get_message_callback, get_receiver(msg))
  end
end
return {
   description = "del-msg by reply.",
   usage = {
   },
   patterns = {
      "^[!/#](del)$"
   },
   run = run,
   moderated = true,
   hide = true

}
