# SpaceChecker

Spacechecker is a free space checker for linux in terminal.

## Installation
Download Dotnet and deploy.sh from the [release tab](https://github.com/Marcus7540/spacecheck/releases/tag/Release)
 and then open terminal in that directory and typ in
```
./deploy.sh
```

## Compile
### Debian
```bash
sudo apt install dotnet-sdk-8.0 && sudo apt install git
```
Then we need to clone the repository
```
git clone https://github.com/Marcus7540/spacecheck
cd spacecheck
```
Almost there!!!
We just have to run the deploy.sh to install it.

```
./deploy.sh
```
Done :) Now just run spacecheck in your terminal and your output should for example be:
```
Free space on '/' partition: 42.03 GB
