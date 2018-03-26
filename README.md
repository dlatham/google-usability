#Google Usability Testing Prototype

In UX, we often want to user test our experiences through replication of real world situations. In real world internet browsing, most experiences start with a Google SERP. This app is a proxied version of that SERP with the ability to create custom results in your preferred sort order. The search results can be mixed with real results from Google's CSE for a more natural SERP and the custom entries can redirect to your prototype.

##Configuration

* Create a Custom Search Engine to power the organic results at https://cse.google.com/

* Create a `secrets.rb` file and place it in your `/config/initializers` folder with the following code:

```
#Variables for your CSE implementation
GOOGLE_API_KEY = YOUR_GOOGLE_API_KEY
GOOGLE_SEARCH_CX = YOUR_CSE_CX_CODE
```