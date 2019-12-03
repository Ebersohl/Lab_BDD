# ----------------------------------------------------------------------------
# Author: Amber Ebersohl
#  Date: 03DEC2019
#
# This program calls the DuckDuckGo API and tests that the correct presidential
# list is returned in RelatedTopics when "presidents of the united states" is
# the search criteria, using a Gherkin/a feature file
#  ---------------------------------------------------------------------------

import requests
from pytest_bdd import scenario, given, then

DUCKDUCKGO_API = 'https://api.duckduckgo.com'


@scenario('../features/duckduckgo.feature', 'Presidents in Related Topics')
def test_start():
    pass


@given('the DuckDuckGo API is queried with "presidents of the united states"')
def ddg_response():
    response = requests.get(DUCKDUCKGO_API + "/?q=presidents+of+the+united+states&format=json")
    return response


@then('the RelatedTopics contain "<name>"')
def ddg_response_contents(ddg_response, name):
    rsp_data = ddg_response.json()
    pres_resps = [t['Text'] for t in rsp_data["RelatedTopics"]]
    assert name in pres_resps
