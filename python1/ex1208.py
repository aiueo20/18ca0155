def convert(hour,minute,second):
    hour_second = hour * 3600
    minute_second = minute * 60
    allsecond = hour_second + minute_second + second
    return allsecond

print(str(convert(2,30,60)))