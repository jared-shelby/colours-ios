***DOCUMENTATION:

    WELCOME TO COLOURS.

    COLOURS is an iOS application built using XCode and Swift.

    COLOURS is a game, and the objective is to match all squares on the board to the target color.
        Directions for playing are shown under "help" in the app. Tap each square to change its color.
        Once the square's color matches the target color (represented by the color of the rectangle),
        that square will be disabled and unable to be changed again. Once all nine squares match the
        target color, all buttons will turn back to black, the target color will change, and the buttons
        will be reenabled. Points are scored +1 for each match and +10 for a full board match. Get the
        highest score in 60 seconds.

    To inspect and play COLOURS:
        - unzip Colours.zip
        - open XCode
        - click on Colours.zip to open
        - on the left side of the screen is the file browser
            - Storyboards/LaunchScreen.storyboard contains the splash screen for Colours, a screen that shows while the app is loading
            - Storyboards/Main.storyboard contains all screens in the actual application; follow the paths to see how the screens connect;
                each screen is called a ViewController (VC) and contains UI elements like buttons and labels
            - Controllers/HomeScreenVC.swift contains code for the home screen; click to read the code and my comments
            - Controllers/PlayVC.swift contains code for the play screen; click to read the code and my comments
            - Controllers/ProfileVC.swift contains code for the help screen where instructions on how to play are located; click to read the code and my comments
            - Controllers/GameOverVC.swift contains code for the game over screen; click to read the code and my comments
            - all other files in the file browser contain code and elements, most of which I have not touched or edited; they come standard with XCode projects like this
        - ViewControllers, as mentioned, contain UI elements and content you will see when playing the game; all VC.swift files correspond to a VC; for example,
            PlayVC.swift houses code for the ViewController that contains the playing board; when looking at PlayVC.swift, you will see functions, variables, and
            things like @IBActions, which are actions that occur when UI elements like buttons are pressed
        - to play the app and see it in action, look at the top bar of XCode; to the left of the bar that reads "Colours | Build Colours" is the section to choose a device to run
            Colours on; while the app will run on many Apple devices, I have built it specifically for iPhone; click the dropdown menu and change device to "iPhone 11 Pro" for
            optimal play experience; for reference, this is the device I own and the device I have done all of my playing and testing on; the recording attached contains gameplay
            from the iPhone 11 Pro
        - after selecting the device, click the play button to the left; this will load the app on the selected device and run on Mac in an application called "XCode Simulator"
        - navigate to XCode Simulator (should automatically redirect you), and you will be met with a virtual iPhone 11 Pro; you can navigate the iPhone using your computer
        - COLOURS will load automatically, at which point you are free to navigate and play the game
        - click "help" to learn how to play
        - click "theme" to change the color palette
        - click "play" to play the game
        - while in the game, click the home button in the upper left  corner to go home; click the button in the upper right corner to end the game and restart
        - once the 60 second timer ends, a game over screen will allow you to see your score, your best score, and give you the option to go home or play again
        - your score resets each game; your best score will be stored on your own profile, and will not reset even when exiting the app

    For additional information or guidance on how to play the game, consult the video. In general, the game contains a simple objective: tap each box until the color matches the target color,
        and try to score as many points as possible.

    The purpose of COLOURS is to provide a fast, fun, simple gameplay experience that is both colorful and immersive. I implemented themes into COLOURS
        to allow for customization and an element of personality.

    I hope you enjoy exploring and playing COLOURS. I learned a lot from building an iOS app, and the overall product is something I'm immensely proud of.