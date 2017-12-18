# BoardBankAutomation
Automated test suite for the BoardBank app

## Intro:
  This is a humble attempt on automating the BoardBank app for iOS
  using the Calabash mobile testing framework with Ruby
  Calabash predefined steps are not used here..everything custom.
  Number of test scenarios is far from exhaustive, but is indeed intended to briefly showcase how easy and fast could one automate their app.
## Future development (what to expect in next versions): 
  * more code comments 
  * more negative scenarios
  * fix RuboCop suggestions :)
  * no hardcoded test data
  * multi-device/iOS versions setup
  * flexible 'between scenarios' logic (no app/device restart needed every time)


## Requirements :
  * latest Mac OS
  * latest xCode
  * target app https://github.com/richardxyx/BoardBank 
  * unfortunately Calabash test framework requires app modification for iOS apps
  and as far as I know the target app should be built and modified localy using 
  a -cal build target -> more info here : https://github.com/calabash/calabash-ios
  I have set up a custom app build on my machine , but could not get it working on another machine :(

## Setup steps :
 its a Ruby project , so ->
   rbenv recomended -> Ruby version 2.3.1

* run:
  ```gem install bundler```  
* run:
  ```bundle install ```
* Running the test suite :
  ```bundle exec cucumber```

* Screenshots folder : /PROJECT_DEFAULT

