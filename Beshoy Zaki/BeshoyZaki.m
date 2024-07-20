clc
clear
time = input ("enter the time: ","s");
flag_am = 0;
flag_pm = 0;
firstcolon_index = find(time==':' , 1);
hours = str2double(time(1:firstcolon_index-1));
%% Flags
if(hours < 12)
  flag_am = 1;
elseif(hours == 12)
  flag_pm = 1;
else
  flag_pm = 1;
  hours = hours - 12;
end
%% From 24 hour format to 12 hour format
if(flag_am)
  if(hours == 0)
    res = ['12:' time(firstcolon_index+1:end) 'AM'];
  elseif(hours == 12)
    res = [num2str(hours) ':' time(firstcolon_index+1:end) 'PM'];
  else
    res = [num2str(hours) ':' time(firstcolon_index+1:end) 'AM'];
  end
elseif(flag_pm)
  if(hours == 0)
    res = ['12:' time(firstcolon_index+1:end) 'PM'];
  else
    res = [num2str(hours) ':' time(firstcolon_index+1:end) 'PM'];
  end
end

res