# ObfJS - a different approach to obfuscating email addresses

## How it works
This jQuery plugin updates the email addresses on the page by only placing the email address in the `<a>` when the user hovers over the link. This way a bot or scraper would have to actively hover over your link in order to get at your email address.

## Usage
The plugin can be included after the initialisation of jQuery (I'm working on a vanilla version). The markup adds two data- attributes (data-begin & data-end) but I'm open to recommendations on whether this is the best way or whether to split a rel attribute instead. See markup below for example codes.

### HTML

	<a href="#" data-begin="hello" data-end="ianculshaw.co.uk">Email me!</a>
	<!-- or -->
	<a class="email" href="#" data-begin="hello" data-end="ianculshaw.co.uk">Email me!</a>
   
### Javascript

	$('a').ObfJS();
	// or
	$('.email').ObfJS();

## Roadmap

This isn't the best all round solution as it will fail miserably on mobile. I'm thinking about how to tackle this, all ideas are welcome.

## Help!
By all means fork this and improve it, together we can unite and rise up against the machines.