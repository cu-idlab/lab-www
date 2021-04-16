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
 
def make_json(csvFilePath, jsonFilePath):
     
    # create a dictionary
    data = {}
     
    # Open a csv reader called DictReader
    with open(csvFilePath, encoding='utf-8') as csvf:
        csvReader = csv.DictReader(csvf)
         
        # Convert each row into a dictionary 
        for rows in csvReader:
             
            # I chose the title column because the keys will always be unique, unless we have repeat entries
            # be the primary key
            key = rows['']
            data[key] = rows
 
    # Open a json writer, and use the json.dumps() function to dump data
    with open(jsonFilePath, 'w', encoding='utf-8') as jsonf:
        jsonf.write(json.dumps(data, indent=4))
         
# Driver Code
 
# Decide the two file paths according to your 
# computer system
csvFilePath = r'cleanedUp.csv'
jsonFilePath = r'dhLit_data.json'
 
# Call the make_json function
make_json("cleanedUp.csv", "dhLit_data.json")
# The file titled `dhLit_data.json` is used to construct the Digital Hospice Reading List table on the Identity Lab website.