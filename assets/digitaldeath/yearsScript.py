import pandas as pd
data = pd.read_csv("Include.csv")
s = data["Publication Year"].value_counts()
s.to_dict()
dictList =[]
for y in range(2008,2021):
    #yearsList.append(y)
    if(y not in s):
        dictList.append({"year":y,"count":"0"})
    elif(y in s):
        dictList.append({"year":y,"count":str(s[y])})
#Convert to JSON
import json
jsonStr = json.dumps(dictList)
with open('years.json', 'w') as json_file:
    json.dump(jsonStr, json_file)
