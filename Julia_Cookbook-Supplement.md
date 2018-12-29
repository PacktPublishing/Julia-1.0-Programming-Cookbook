[B. Kamiński, P. Szufel: Julia 1.0 Programming Cookbook](https://www.packtpub.com/application-development/julia-10-programming-cookbook) 
========================================================================================================================================


# Supplement: Julia installation for macOS


In this supplement we explain how to use configure Julia environment on macOS.
The discussed examples have been tested with macOS Mojave, version 10.14.2
but Julia is known to work with any macOS version starting from 10.8.

### Installing Julia on macOS

The recommended way to install Julia on macOS is to use the binary release that
is available at [https://julialang.org/downloads/](https://julialang.org/downloads/).
The steps for macOS platform are very similar to the previously presented examples for Linux.

Julia installer comes as a standard macOS `*.dmg` file.
Hence, you need to simply download it (for example with the Safari browser),
double-click the downloaded file and drag the *Julia-1.0* icon onto the *Applications* icon.

Once installed you should check what is the actual location of Julia. Use the following command:

```bash
$ ls -d /Applications/Julia*/
```

This will show the location of your Julia installation (for example `/Applications/Julia-1.0.app`).
In the following steps we assume that Julia 1.0 has been installed in the above folder.

Julia is often used in the command line console (Terminal). It can be started with the following command:

```bash
$ /Applications/Julia-1.0.app/Contents/Resources/julia/bin/julia
```

Typing such a long command is not convenient.
Hence we recommend creating a symbolic link to the `julia` executable file in the `/usr/local/bin` folder:

```bash
$ sudo mkdir /usr/local/bin
$ sudo ln -fs /Applications/Julia-1.0.app/Contents/Resources/julia/bin/julia /usr/local/bin/julia
```

Note that on some macOS installations the folder `/usr/local/bin` does not exist by default and hence we create it.

Once the above two commands have been run, Julia REPL can be started in the terminal with the command `julia` rather than typing the entire path.

When installing packages in Julia a complex compilation process takes place.
Hence, compiling some of Julia packages (such as `Cbc.jl`) requires the `Xcode` developer tools.
Their installation can be started by running the command below
(note that this will start the graphical user interface installer):

```bash
$ xcode-select --install
```

Additionally, the developer Command Line Tools are also required and can be
installed with the following command (you might need to change the macOS version
number at the end of the `pkg` file name):

```bash
$ sudo installer -pkg /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg -target /
```

### Installing Juno IDE on macOS

Juno is the recommended Julia development environment for macOS (as well as for Linux and Windows platforms).
Once the link to Julia executable (`/usr/local/bin/julia`) is created the installation is straightforward.
Simply go to the Atom website at [https://atom.io/](https://atom.io/), download the installer and double click the `pkg` file.
Start Atom and add the Juno plugin - for details see the Juno paragraph at Julia IDEs recipe in the Chapter 1 of the book.
If you follow the discussed Julia installation steps, Juno will just work out-of-the-box.

### Integration of other tools on macOS

For configuration of other tools including Anaconda Python and Gnu R have a look at
the Linux comments at relevant recipes - there are no differences between Linux and macOS Julia configuration.
