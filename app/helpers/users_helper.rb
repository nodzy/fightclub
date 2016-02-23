module UsersHelper

def display_level

if @user.level==1
"Apprentice"
elsif @user.level==2
"Padawan"
elsif @user.level==3
"Jedi Knight"
elsif @user.level==4
"Master"
elsif @user.level==5
"Force Ghost"
end

end
end
