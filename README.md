# Simple Calabash test for iOs application

The demo Calabash test is presented in features/sample.feature file.

To run the test:

- Checkout the project
- Build the application using XCode (ensure that -cal target is builded)
- From the command line:
  - <code>cd path/to/app/home</code>
  - <code>bundle install</code>
  - <code>export APPLITOOLS_API_KEY=YOUR_KEY</code>
  - <code>bundle exec cucumber</code>
