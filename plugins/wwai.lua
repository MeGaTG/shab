do function run(msg, matches)

   if matches[1]:lower() == 'wai' and is_sudo(msg) then
      return "You are SUDO"
      end
      if matches[1]:lower() == 'wai' and is_admin(msg) then
      return "You are Admin"
      end
      if matches[1]:lower() == 'wai' and is_owner(msg) then
      return "You are Group Leader"
      end
      if matches[1]:lower() == 'wai' and is_momod(msg) then
      return "You are Group Moderator"
      end
      if matches[1]:lower() == 'wai' then
      return "You are Group Member"
    end
      if matches[1]:lower() == '����' and is_sudo(msg) then
      return "��� ������ ���� �����"
      end
      if matches[1]:lower() == '����' and is_admin(msg) then
      return "��� ����� ���� �����"
      end
      if matches[1]:lower() == '����' and is_owner(msg) then
      return "��� ���� ���� ���� �����"
      end
      if matches[1]:lower() == '����' and is_momod(msg) then
      return "��� �� ���� �����"
      end
      if matches[1]:lower() == '����' then
      return "��� ��� ���� �����"
    end
end
  return {
  description = "Your Postation In Group",
  usage = "Wai",
  patterns = {
  "^([Ww][Aa][Ii])$",
  "^(����)$"
 , "^([Ww][Aa][Ii])$",
  "^(����)$"
 , "^([Ww][Aa][Ii])$",
  "^(����)$"
 , "^([Ww][Aa][Ii])$",
  "^(����)$"
 , "^([Ww][Aa][Ii])$",
  "^(����)$"
    },
  run = run
}
end
