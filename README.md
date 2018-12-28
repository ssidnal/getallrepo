# Purpose of this script

*Shell script to get all repositories of user account from BitBucket on WINDOWS machine*

# Steps to use:
  1. Please enable ssh on your bitbucket before you use this.
  2. Download jq utility from https://stedolan.github.io/jq/download/ and rename downloaded file to jq.exe.
  3. Copy above file jq.exe to your %ProgramFiles%\Git\mingw64\bin\
  4. Download *getAllRepos.sh* and paste in the folder where you want to clone all repositories of your bitbucket account. 
  5. Open git bash here and run below command to clone all your repositories. 
      
      *./getAllRepos.sh [username] [password]
    
