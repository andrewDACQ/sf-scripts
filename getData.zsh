# Author: Andrew Thompson
# Description: This script will pull data from the Salesforce org and store it in a JSON file.
echo 'Pulling data from Salesforce org...'
sf data query -q 'SELECT FIELDS(ALL) FROM Lead LIMIT 200' -o devHub --json > Lead.json
sf data query -q 'SELECT FIELDS(ALL) FROM Account LIMIT 200' -o devHub --json > Account.json
sf data query -q 'SELECT FIELDS(ALL) FROM Contact LIMIT 200' -o devHub --json > Contact.json
sf data query -q 'SELECT FIELDS(ALL) FROM Opportunity LIMIT 200' -o devHub --json > Opportunity.json
echo 'Data pulled from Salesforce org and stored in JSON files.'