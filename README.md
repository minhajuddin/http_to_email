# HttpToEmail

This service allows you to send emails using an HTTP API.

## TODO
  - [ ] Allow a user sign up using an email.
    - [ ] Send the user a magic login link.
    - [ ] Generate a random basic auth user id.
  - [ ] Set up an authentication plug which allows authenticating using basic auth
  - [ ] Set up `/email` which accepts a message with the shape: `{"to":"minhajuddink@gmail.com", "from":"from@email.com", "subject":"Git it done!", "html_body":"<b>chop chop!</b>", "text_body":"chop chop!"}`
  - [ ] Set up throttling so that only 10 emails can be sent per account per month.

## Tech
  - Database: DynamoDB
  - SMTP Server: AWS SES

## Dev setup

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
