# mac-dev-setup
[![License: Unlicense](https://img.shields.io/badge/license-Unlicense-blue.svg)](http://unlicense.org/)


This script allow you to install all the tools you need for setting up your dev environnement on your brand new mac.

# Launch installation

```shell
curl https://raw.githubusercontent.com/oo-weave/mac-dev-setup/master/src/mac-dev-setup.sh | bash
```

# What does it install?

It will install all this tools:
- ## Homebrew
  The Missing Package Manager for macOS, Homebrew installs the stuff you need that Apple (or your Linux system) didn’t.

  After the installation you will be available to install almost everything you need for your mac. You can list installed packages with `brew list` and `brew cask list`.

  I recommend running brew doctor every now and then to make sure things are good and `brew cleanup` to remove unused files.
- ## iTerm2
  iTerm2 is a replacement for Terminal (https://www.iterm2.com/).

  My favorites is that you can split your terminal in multiple views.

  ![iTerm2 screenshot](screenshots/iTerm2.png "iTerm2 screenshot")

- ## zsh / oh-my-zsh
  A delightful community-driven (with 1500+ contributors) framework for managing your zsh configuration. Includes 200+ optional plugins (rails, git, OSX, hub, capistrano, brew, ant, php, python, etc), over 140 themes to spice up your morning, and an auto-update tool so that makes it easy to keep up with the latest updates from the community. https://ohmyz.sh/

  There is a ton of great things to do with oh-my-zsh. [Powerlevel10k](https://github.com/romkatv/powerlevel10k) is my theme of choice.
  
  There are also a lot of [plugins](https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins) availablem go check it you will certainly find some things great for your usage.

- ## Most used command line tools.
  - ### [ack](https://github.com/beyondgrep/ack3/)
    `ack` is designed as a replacement for 99% of the uses of grep.

  - ### [bash-completion](https://github.com/scop/bash-completion)
    Programmable completion functions for bash.

  - ### [ctop](https://github.com/bcicen/ctop)
    Top-like interface for container metrics

    `ctop` provides a concise and condensed overview of real-time metrics for multiple containers:
    <p align="center"><img src="https://raw.githubusercontent.com/bcicen/ctop/master/_docs/img/grid.gif" alt="ctop"/></p>

    as well as an [single container view][single_view] for inspecting a specific container.

    `ctop` comes with built-in support for Docker and runC; connectors for other container and cluster systems are planned for future releases.

  - ### [curl](https://linux.die.net/man/1/curl)
    Command line tool and library for transferring data with URLs.

  - ### [htop](https://github.com/hishamhm/htop)
    Similar to top but allows you to scroll vertically and horizontally.

  - ### [jq](https://stedolan.github.io/jq/)
    `jq` is a lightweight and flexible command-line JSON processor.

  - ### [libpq](https://www.postgresql.org/docs/current/libpq.html)
     `libpq` is the postgres client command line.

  - ### [lsd](https://github.com/Peltoche/lsd)
    The next gen ls command.

    Pimp your `ls` command to display icons and color to have a better experience.

    ![lsd screenshot](screenshots/lsd.png "lsd screenshot")
  - ### [micro](https://micro-editor.github.io/)
    A modern and intuitive terminal-based text editor.

    ![micro screenshot](screenshots/micro.png "micro screenshot")
  - ### [tldr](https://github.com/tldr-pages/tldr)
    A collection of simplified and community-driven man pages.

    ![tldr screenshot](screenshots/tldr.png "tldr screenshot")

  - ### [tree](https://linux.die.net/man/1/tree)
    `tree` is a recursive directory-listing program that produces a depth indented listing of files.

    ![tree screenshot](screenshots/tree.png "tree screenshot")

  - ### [wget](https://www.gnu.org/software/wget/)
    Software package for retrieving files using HTTP, HTTPS, FTP and FTPS.
    
  - ### [z](https://github.com/rupa/z)
      Tracks your most used directories, based on 'frecency'.
      
      After  a  short  learning  phase, z will take you to the most 'frecent' directory that matches ALL of the regexes
      given on the command line, in order.
      
      For example, z foo bar would match /foo/bar but not /bar/foo.


- ## GIT
  Git is a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency.
  - ### [git-alias](https://github.com/thomaspoignant/gitalias)
    Some great aliases to make your life easier when using GIT command line.

    There are a lot of useful aliases, like `git ls` or `git ll` who allow to see your git history.
    There is a lot more you should check [https://github.com/thomaspoignant/gitalias](https://github.com/thomaspoignant/gitalias) to see the list of available aliases.
  - ### [git-secrets](https://github.com/awslabs/git-secrets)
    Prevents you from committing passwords and other sensitive information to a git repository.

    You're not done yet! You MUST install the git hooks for every repo that you wish to use with `git secrets --install`.

- ## IDE
  ### [Jetbrains toolbox](https://www.jetbrains.com/toolbox-app/)
    Jetbrains make the best IDEs in the market, `Intellij`, `Webstorm` or `Goland` are awesome.

    We don't want to install all of them because you propably don't need all of them, but the jetbrains toolbox allow you to manage all your installation and update of your jetbrains products.

  ### [Visual Studio Code](https://code.visualstudio.com/)
    A great text editor who can be an IDE sometimes.

- ## Development
  ### API
  - [**ngrok**](https://ngrok.com/)  
    `ngrok` is a great tool who allow to create a port tunnel from your local development environement to internet. So you can expose your local APIs online for testing purpose.
  
  - [**postman**](https://www.postman.com)  
    `postman` allow to quickly and easily send REST, SOAP, and GraphQL requests directly within Postman.
  
  ### AWS
  - [**awscli**](https://aws.amazon.com/fr/cli/)  
    Official AWS command line

  - [**saws**](https://github.com/donnemartin/saws)  
    A supercharged AWS command line interface.
  
  ### Database tools
  - [**DBeaver**](https://dbeaver.io/)  
    `DBeaver` is a nice database viewer who works with most of the recent DB engine.

  ### FTP/SFTP
  - [**Cyberduck**](https://cyberduck.io)  
    `cyberduck` is a libre server and cloud storage browser for Mac.

  ### Docker
    Should I present what `docker` is?

    To work with docker we will install the docker runtime and also the docker command line completion who help you to write docker command like a boss.
    - docker
    - docker command line completion

  ### Languages
  The main languages I am working with are Java and Go, but here are the main languages you always need, on projects.

  - **Java**  
    Install the last version of the `openJDK` JVM.  
    It also install `maven` and `gradle`.
  - **Go / Golang**  
    Install the last `go` version and set `GOPATH` into your shell profile file.
  - **NodeJS**  
    Install `nvm` and the last version of `nodejs` + `yarn` for dependencies management.
  - **Python**  
    Install `python` and `pip` so you are ready to go.
  - **Terraform**  
    Install the last version of `terraform` and you are ready to code your infrastructure.

- ## Productivity tools
  Development is not coding all day, you also have to collaborate with people and to use you mac for different kind of things.

  Here are the most common tools I use every day to work.
  - ### [Evernote](https://evernote.com/)
    Note taking app.

  - ### [KAP](https://getkap.co/)
    This is the best screen capture app right now.

    Export your video capture as a `GIF` and sharing them is super easy.

  - ### [Rectangle](https://rectangleapp.com/)
    Move and resize windows in macOS using   keyboard shortcuts or snap areas.

    I use Rectangle a lot — you should master its shortcuts. The main ones I use are:
    ```  - ###  shell
      Left half: ⌥⌘ Arrow-Left
      Right half: ⌥⌘ Arrow-Right
      Top half: ⌥⌘ Arrow-Up
      Bottom half: ⌥⌘ Arrow-Down
      Center window: ⌥⌘ C
      Maximize window: ⌥⌘ F
    ```

  - ### [Slack](https://slack.com/)
    The Collaboration Hub.
    I am not sure I need to present what is slack.

  - ### [Spotify](http://spotify.com/)
    Music streaming.

  - ### [Whatsapp](https://www.whatsapp.com/)
    Messaging system.
    I am not sure I need to present what is whatsapp.

  - ### [VLC](https://www.videolan.org)
    Free and open source cross-platform multimedia player that plays most multimedia files, and various streaming protocols.

- ## Web browsers
  Because most of the development projects need some web related tools, you need to have most importants web browser of the market.

  Here we install, the 3 main one:
  - [Google Chrome](https://www.google.com/chrome/)
  - [Mozilla Firefox](https://www.mozilla.org/firefox/)
  - [Microsoft Edge](https://www.microsoft.com/edge)

# How can I contribute?

If you want to contribute, please open an issue or a pull request and let's talk about the new feature 😉