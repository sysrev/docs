+++
title = "SRVC"
+++

<h2>SRVC Getting Started</h2>
Sysrev Version Control is an open source document review system. Every SRVC review is a git repo made up of review stages. Each stage is a script that can be written in any language.  

1. Install `sr` with [homebrew](https://brew.sh/):
   ```bash
   $ brew tap insilica/brew
   $ brew install srvc
   ```
2. Clone a hello-world review [srvc-hello](https://github.com/sysrev/srvc-hello)
   ```bash
   $ git clone https://github.com/sysrev/srvc-hello.git
   $ cd srvc-hello
   ```
3. Start a command line review with `sr review`:
   ```bash
   $ sr review simple
   ```

Next, learn about [**review configuration (coming soon)**](TODO) 
