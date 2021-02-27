# _Anagrams and Antigrams_

#### This app will check if two inputs are anagrams or antigrams

#### By _**Mekinsie Callahan**_

## Technologies Used

* Ruby
* Docker
* Bundler
* RSpec

## Description

This project will take in two inputs and determine if they anagrams, antigrams or neither. It will also return how many letters in the two inputs match. The purpose of this project was to practice using Test-Driven Development with Ruby. 

## Installation & Requirements
**Ruby or Docker is required to run this application**

1. Navigate to the desired directory where you would like to clone the project to.

2. Once you have chosen your desired directory, clone the github repo into it by typing the following command into your terminal:
```bash 
$ git clone https://github.com/mekinsie/anagrams_and_antigrams
```
3. Open the project in VSCode by typing the following in your terminal:

``` bash
$ code .
```  
**If you are using Docker, skip steps 4 & 5.**  

4. Install gem bundler by typing:

``` bash
$ gem install bundler
```  

5. Install gem bundles by typing:

``` bash
$ bundle
```

## Running Tests

**Run tests using Ruby (no Docker):**  
If you have Ruby already installed, simply type "rspec" into your terminal while located in the root directory of the project.
``` bash
$ rspec
```

**Run tests using Docker:**

To use Docker, you will first need to [install](https://docs.docker.com/get-docker/) it. Once it's installed, Docker should be open so you can actually run Docker commands in the terminal.  

We recommend creating an alias for the following commands. The alias should look something like this:  

```
dspec ()
{
  docker-compose down
  docker-compose up --build
  docker-compose run --rm app
}
```

With this alias, the `dspec` command will automatically run RSpec tests. If you prefer not to use an alias, simply type each of the aforementioned commands into your terminal.


## Running scripts 

**Run scripts in your terminal (must have Ruby already installed):**

* While located in the root directory of the project, type the following in your terminal to run the script:

```bash
$ ruby lib/script.rb
```

**Run scripts in Docker**
* Run the following command: `docker-compose run --rm app ruby lib/script.rb`.
We recommend aliasing this command if you plan to run scripts often.

## Known Bugs

* _No known bugs_

## License

_GPL_

Copyright (c) 2021 **_Mekinsie Callahan_**

## Contact Information

Reach me: via <a href="https://www.linkedin.com/in/mekinsie/" target="_blank">Linkedin</a> or <a href="mailto:mekinsie.aja@gmail.com" target="_blank">email</a></li>.

Checkout my <a href="https://github.com/mekinsie" target="_blank">github</a>.
