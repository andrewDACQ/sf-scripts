# Author: Andrew Thompson
# Email: andrew@diamondacq.com
# Description: This script will pull data from the Salesforce org and store it in a JSON file.
# Note: You need to have a $TARGET_ORG set
# TODO: Add date to filenames 

echo 'Pulling data from Salesforce org...'

sf data query -q 'SELECT FIELDS(ALL) FROM Lead LIMIT 200' -o $TARGET_ORG --json > Lead.json
sf data query -q 'SELECT FIELDS(ALL) FROM Account LIMIT 200' -o $TARGET_ORG --json > Account.json
sf data query -q 'SELECT FIELDS(ALL) FROM Contact LIMIT 200' -o $TARGET_ORG --json > Contact.json
sf data query -q 'SELECT FIELDS(ALL) FROM Opportunity LIMIT 200' -o $TARGET_ORG --json > Opportunity.json

echo 'Data pulled from Salesforce org and stored in JSON files.'
