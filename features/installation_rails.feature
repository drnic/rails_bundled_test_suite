Feature: Installing bundle into Rails app
  In order to not have to use f@#$ing selenium and receive hate into our lives
  As a self-respective Rails/JavaScript developer
  I want to install the integration testing bundle into my Rails app

  Background:
    Given a Rails app
    And I run executable "script/generate" with arguments "cucumber"
    # And I delete file "features/step_definitions/webrat_steps.rb"
    And I copy the project generators into "vendor/generators"
    And I invoke task "rake db:migrate"
    When I run executable "script/generate" with arguments "test_bundle"
    And I setup load path to local code
  

  Scenario: Check the bundle works with no scenarios
    And I run executable "cucumber" with arguments "features/"
    Then I should see "0 scenarios"
    And I should see "0 steps"
    
  Scenario: Check the bundle works on default public/index.html page
    When I add a feature file to test Rails index.html default file
    And I run executable "cucumber" with arguments "features/"
    Then I should see "1 scenario"
    And I should see "5 steps (5 passed)"

  
  
  
  