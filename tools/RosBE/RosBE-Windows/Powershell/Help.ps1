#
# PROJECT:     RosBE - ReactOS Build Environment for Windows
# LICENSE:     GNU General Public License v2. (see LICENSE.txt)
# FILE:        Root/Help.ps1
# PURPOSE:     Display help for the commands included with the ReactOS Build Environment.
# COPYRIGHT:   Copyright 2008 Daniel Reimer <reimer.daniel@freenet.de>
#
#

#
# Check if we are displaying help on all commands, if so, display it.
#
if ("$args" -eq "") {
    ""
    "Available Commands:"
    "    make [OPTIONS]       - Make does a standard build of ReactOS. OPTIONS are"
    "                           the standard ReactOS build options."
    "    makex [OPTIONS]      - Same as 'make' but automatically determines the"
    "                           number of CPU Cores in the system and uses -j with"
    "                           the appropriate number."
    "    basedir              - Switch back to the ReactOS source directory."

    if (Test-Path "$_ROSBE_BASEDIR\charch.ps1") {
        "    charch [OPTIONS]     - Change the Architecture to build ReactOS for"
        "                           for the current RosBE session."
    }

    if (Test-Path "$_ROSBE_BASEDIR\chdefdir.ps1") {
        "    chdefdir [OPTIONS]   - Change the ReactOS source directory for the"
        "                           current RosBE session."
    }

    if (Test-Path "$_ROSBE_BASEDIR\chdefgcc.ps1") {
        "    chdefgcc [PATH]      - Change the Host or Target MinGW/GCC directory"
        "                           for the current RosBE session."
    }

    "    clean [OPTIONS]      - Fully clean the ReactOS source directory and/or the"
    "                           RosBE build logs."

    if (Test-Path "$_ROSBE_BASEDIR\Config.ps1") {
        "    config [OPTIONS]     - Configures the way, ReactOS will be built."
    }

    "    help [COMMAND]       - Display the available commands or give help on a"
    "                           specific command."

    if (Test-Path "$_ROSBE_BASEDIR\reladdr2line.ps1") {
        "    raddr2line [OPTIONS] - Translates program addresses into file names and"
        "                           line numbers to assist developers with finding"
        "                           specific bugs in ReactOS."
    }

    if (Test-Path "$_ROSBE_BASEDIR\scut.ps1") {
        "    scut [OPTIONS]       - List, add, edit, remove, switch and default to"
        "                           shortcutted ReactOS source directories."
    }

    if (Test-Path "$_ROSBE_BASEDIR\sSVN.ps1") {
        "    ssvn [OPTIONS]       - Create, update or clean-up your ReactOS source"
        "                           tree or show the revision number of the local"
        "                           and online trees."
    }

    if (Test-Path "$_ROSBE_BASEDIR\options.ps1") {
        "    options              - Starts the RosBE configurator and sets the."
        "                           changes active immediately."
    }

    if (Test-Path "$_ROSBE_BASEDIR\update.ps1") {
        "    update [OPTIONS]     - Updates RosBE to the most recent files."
    }

    ""
    exit
}

#
# Now check if we are displaying help on individual commands, if so,
# display the help for that command.
#
if ("$args" -eq "make") {
    " Usage: make [OPTIONS]"
    " Make does a standard build of ReactOS. OPTIONS are the standard ReactOS build"
    " options:"
        ""
        "    all              - This target builds all of ReactOS."
        "    ""module""         - Builds only the module with the appropiate name."
        "    bootcd           - Generates a BootCD ISO."
        "    livecd           - Generates a LiveCD ISO."
        "    install          - Installs ReactOS in the folder specified by the"
        "                       environment variable ""ROS_INSTALL""."
        "    ""module""_install - Installs only the module with the appropiate name in"
        "                       the folder specified by the environment variable"
        "                       ""ROS_INSTALL""."
        "    clean            - Deletes all files generated by the build process."
        "    ""module""_clean   - Deletes only the files of one module with the"
        "                       appropiate name."
        "    depends          - Does a full dependency check on the ReactOS Source"
        "                       and generates a new makefile. This will take a while."
        "    ""module""-depends - Does a dependency check for one module with the"
        "                       appropiate name."
    exit
}
if ("$args" -eq "makex") {
    " Usage: makex [OPTIONS]"
    " Same as 'make' but automatically determines the number of CPU Cores in the"
    " system and uses ""make -j x"" with the appropriate number. OPTIONS are the"
    " standard ReactOS build options:"
        ""
        "    all              - This target builds all of ReactOS."
        "    ""module""         - Builds only the module with the appropiate name."
        "    bootcd           - Generates a BootCD ISO."
        "    livecd           - Generates a LiveCD ISO."
        "    install          - Installs ReactOS in the folder specified by the"
        "                       environment variable ""ROS_INSTALL""."
        "    ""module""_install - Installs only the module with the appropiate name in"
        "                       the folder specified by the environment variable"
        "                       ""ROS_INSTALL""."
        "    clean            - Deletes all files generated by the build process."
        "    ""module""_clean   - Deletes only the files of one module with the"
        "                       appropiate name."
        "    depends          - Does a full dependency check on the ReactOS Source"
        "                       and generates a new makefile. This will take a while."
        "    ""module""-depends - Does a dependency check for one module with the"
        "                       appropiate name."
    " NOTE: The number makex uses can be modified by editing Build.cmd"
    "       located in the RosBE directory, instructions for doing so are"
    "       contained within the file."
    exit
}
if ("$args" -eq "basedir") {
    " Usage: basedir"
    " Switches back to the ReactOS source directory."
    exit
}
if (Test-Path "$_ROSBE_BASEDIR\charch.ps1") {
    if ("$args" -eq "charch") {
        " Usage: charch [OPTIONS]"
        " Change the Architecture to build ReactOS for, for the current RosBE session."
        " Possible Architectures are: i386, ppc, arm, amd64."
        ""
        exit
    }
}
if (Test-Path "$_ROSBE_BASEDIR\chdefdir.ps1") {
    if ("$args" -eq "chdefdir") {
        " Usage: chdefdir [OPTIONS]"
        " Change the ReactOS source directory for the current RosBE session."
        ""
        "    previous - Switch to the previous ReactOS source directory."
        exit
    }
}
if (Test-Path "$_ROSBE_BASEDIR\chdefgcc.ps1") {
    if ("$args" -eq "chdefgcc") {
        " Usage: chdefgcc [PATH]"
        " Change the MinGW/GCC directory for the current RosBE session."
        ""
        "    Path - Path to set the Host or Target GCC to."
        "    Type - Set it to ""target"" or ""host"""
        exit
    }
}
if ("$args" -eq "clean") {
    " Usage: clean [logs]"
    " Fully clean the ReactOS source directory."
    ""
    "    all  - Removes build logs and compiler output in the RosBE-Logs directory."
    "    logs - Removes all build logs in the RosBE-Logs directory."
    "    All other commands will be parsed as ""make COMMAND_clean"" and cleans the"
    "    specific command."
    exit
}
if (Test-Path "$_ROSBE_BASEDIR\Config.ps1") {
    if ("$args" -eq "config") {
        " Usage: config [OPTIONS]"
        " Creates a configuration file, which tells RosBE how to build the tree."
        ""
        "    delete - Deletes the created configuration file and so sets back to the"
        "             default settings."
        "    update - Deletes the old created configuration file and updates it with a"
        "             new, default one."
        exit
    }
}
if ("$args" -eq "help") {
    " Usage: help [COMMAND]"
    " Shows help for the specified command or lists all available commands."
    exit
}
if (Test-Path "$_ROSBE_BASEDIR\reladdr2line.ps1") {
    if ("$args" -eq "raddr2line") {
        " Usage: raddr2line [FILE] [ADDRESS]"
        " Translates program addresses into file names and line numbers to assist"
        " developers with finding specific bugs in ReactOS. If either of the options"
        " is not given you will be prompted for it."
        ""
        " FILE    - This can be either a fully specified path or just the file name"
        "           [you can use a partial name ie. ntdll*] of the executable to be"
        "           analyzed. When using just a file the current directory and all"
        "           sub-directories are searched."
        " ADDRESS - The address to be translated."
        ""
        exit
    }
}
if (Test-Path "$_ROSBE_BASEDIR\scut.ps1") {
    if  ("$args" -eq "scut") {
        IEX "&'$_ROSBE_BASEDIR\Tools\scut.exe' --help"
        exit
    }
}
if (Test-Path "$_ROSBE_BASEDIR\sSVN.ps1") {
    if  ("$args" -eq "ssvn") {
        " Usage: ssvn [OPTIONS]"
        " Creates, updates or cleans up your ReactOS source tree or shows the revision"
        " number of the local and online trees."
        ""
        "    update  - Updates to HEAD revision or to a specific one when the second"
        "              parameter specifies one."
        "    create  - Creates a new ReactOS source tree."
        "    cleanup - Cleans up and fixes errors in the source tree."
        "    status  - Show the current local and online revision numbers."
        exit
    }
}
if (Test-Path "$_ROSBE_BASEDIR\options.ps1") {
    if ("$args" -eq "options") {
        " Usage: options"
        " Starts the RosBE configurator and sets the changes active in the current."
        " RosBE session."
        exit
    }
}
if (Test-Path "$_ROSBE_BASEDIR\update.ps1") {
    if ("$args" -eq "update") {
        " Usage: update [OPTIONS]"
        " Updates all files of RosBE to the most recent files."
        ""
        "    delete X - Deletes Update Nr X."
        "    info X   - Shows info about Update Nr X."
        "    nr X     - Re/Installs Update Nr X."
        "    reset    - Removes the Updates Cache. Not recommended."
        "    status   - Shows the recent status of available, non installed updates."
        exit
    }
}
if ("$args" -ne $null) {
    " Unknown command specified. No help available for $args."
    exit
}
