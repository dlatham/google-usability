# Google Usability Testing Prototype

In UX, we often want to user test our experiences through replication of real world situations. In real world internet browsing, most experiences start with a Google SERP. This app is a proxied version of that SERP with the ability to create custom results in your preferred sort order. The search results can be mixed with real results from Google's CSE for a more natural SERP and the custom entries can redirect to your prototype.

## Configuration

* Create a Custom Search Engine to power the organic results at https://cse.google.com/

* Create a `.env` file and place it in your `root` folder with the following code. The dotenv gem is used in development and test modes but an environmetal variable will need to be set in production in order to function properly:

```ruby
#Variables for your CSE implementation
KEY = YOUR_GOOGLE_API_KEY
CX = YOUR_CSE_CX_CODE
```

## References:
http://josephndungu.com/tutorials/ajax-sortable-lists-rails-4
https://github.com/B-raw/google-serp
https://github.com/wiseleyb/google_custom_search_api