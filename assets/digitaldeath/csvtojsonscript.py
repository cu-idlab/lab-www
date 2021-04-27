import pandas as pd
# Selecting which Rows to Keep
f = pd.read_csv("Include.csv")
keep_col = ['Publication Year','Author','Title','Publication Title',"Url","Manual Tags","Item Type"]
new_f = f[keep_col]
new_f.to_csv("newFile.csv", index=False)
# New Dataframe
new = pd.read_csv("newFile.csv")
# Solving Punctuation Issues
itemType = []
for i in new["Item Type"]:
    if(i == "journalArticle"):
        itemType.append("Journal Article")
        i = "Journal Article"
    if(i == "conferencePaper"):
        itemType.append("Conference Paper")
        i = "Conference Paper"
    else:
        i = i
        # Add another IF statement if there is a new type of paper, i.e. "Book", that isn't punctuated properly.
    #print(i)
    
    # the cleaned column
new["ItemType"] = itemType
# Punctuation in Keyword Column
keywords = []
for w in new["Manual Tags"]:
    # Nan values are floats and don't translate well as a different datatype. Lets make those into strings.
    if(type(w)==float):
        w = str("None")
    w = w.title()
    keywords.append(w)
    #print(w)
    
# the cleaned column
new["Keywords"] = keywords
# Delete repetitive columns
new = new.drop("Item Type",axis=1)
new = new.drop("Manual Tags",axis=1)
# Renaming columns for use as keys down the line
new = new.rename(columns={"Url": "Link", "ItemType": "Type"})
#This is the cleaned csv
new.to_csv("cleanedUp.csv",encoding='utf-8')
# Converting CSV to JSON
import csv
import json
 
c = pd.read_csv("cleanedUp.csv")
strings = []
for i in c["Publication Year"]:
    if(type(i)==int):
        i = str(i)
    strings.append(i)
c["Publication Year"] = strings
c = c.drop("Unnamed: 0",axis=1)
d = c.to_dict('records')
dataDict = {"data": d}
with open("dhLit_data.json", 'w', encoding='utf-8') as jsonf:
        jsonf.write(json.dumps(dataDict, indent=4))
# The file titled `dhLit_data.json` is used to construct the Digital Hospice Reading List table on the Identity Lab website.
