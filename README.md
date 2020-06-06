## Reproducer for GitHub token expiration issue

The issue can be reproduced by pushing changes into repository. 

There are two workflows which print command that should be executed locally:

* `test` - which prints command and exits right away - when trying to execute command printed by this workflow it will result in expired token
* `delayed` - which prints command and sleeps for 90 seconds, which gives enough time to execute command while workflow is still running - after executing deployment status is successfuly updated

This experiment demonstrates that token expires as soon as workflow terminates and token is not valid for 60 minutes as mentioned in the documentation.
Previously that was not the case as we had similar setup running for several months.
