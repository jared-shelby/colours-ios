***DESIGN:

    WELCOME TO COLOURS.

    I've embarked on the journey of creating COLOURS in order to challenge myself to achieve one of my longtime goals of creating a game.
        I love iOS and I love gaming, and I've always wanted to create a game. Though I had no prior experience with coding games on iOS,
        I knew I had some fun ideas to play around with and a knack for visual design. I decided to create COLOURS as a way of challenging
        myself to create a visually appealing, simplistic, and fun game that is customizable, immersive, and replayable.

    Watch COLOURS: https://youtu.be/ciD3kXq3Xe4

    Designing COLOURS:
        - I began by drawing out an app layout on paper
            - I drew a title screen with simple UI elements; I knew I wanted buttons to play the game and get instructions,
                but I also knew I wanted a button to change the theme of the game; I wanted to provide the user a bit of freedom
                in being able to customize their experience; I'm quite proud of how themes turned out
            - I then drew out the game board which followed simple design principles: tap boxes to change their color, and match the color
                to the target color
            - I drew out a help screen and a game over screen to make the game more complete

        - I then set out to learn how to use XCode and Swift
            - Refer to SOURCES.md to see which sources helped me learn and create this app

        - Once I learned how to use XCode and Swift, I tinkered with features to see what I could manage to create with the little experience I had
            - The first of my design choices was to create a splash screen (i.e. the loading screen when you first click the app);
                this screen helps bring the user to the title screen without doing so abruptly
            - Next, I designed the title screen; the color palette used helps the text not pop out so much--I wanted the text to blend in and keep colors subtle;
                the title screen also contains a short color shifting animation, something I felt helped define the tone of the game

        - With some preliminary screens sorted out, I needed to learn how to construct a play screen
            - To start, I followed guides on how to create transitions between ViewControllers so that pressing one button leads to another screen
            - With these transitions--known as segues--sorted out, I could link the title screen to the play screen
            - Next, I learned how to create score labels (UI elements) to house information stored by the score variables (Swift code)
            - With UI elements linked to code, I was now able to update UI elements dynamically: as score increases, the UI labels update automatically
            - I learned how to link UI buttons with code to increment score, and then learned how to reset that score using a reset button and code
            - I then learned how to layout the buttons on screen to allow for a cohesive user experience; I based these design choices off
                other popular mobile games like Candy Crush (pause button in top left/right, etc)

        - Next, I learned how to add color to my project
            - I first learned how to control background colors of buttons using code, such that when clicked, a button will change color
            - I designed each button to change color randomly when clicked; this design choice was made because I felt it would be more fun
                to have colors randomly appear with each click as opposed to following a specific order (e.g. red->orange->yellow); random colors
                helps with replayability and the element of chance
            - I then applied these features to all buttons on screen; I decided on using nine buttons after extensive testing with both more and less buttons;
                too many buttons and the user is clicking all over the screen and probably bored; too few buttons and the game is too simple; nine buttons
                fit nicely on screen and gave the game a complete look
            - The rectangle above the nine buttons stores the target color, which is also randomly assigned for an element of surprise;
                this color also changes randomly after each successful set of nine matches

        - Adding color was a focal point, clearly, of COLOURS
            - The main idea of COLOURS is to provide a colorful gameplay experience
            - To add to my game, I implemented a "theme" button and gameplay feature:
                - the theme button, when clicked, changes the master color of the app, meaning this color will follow you to all screens of the app
                - for example, changing the theme color to purple will change the "help" and "play" screens purple too
                - to make gameplay interesting and intuitive, the color of the theme will not be one of the colors of the buttons or the target color;
                    in other words, a purple theme means no buttons will be able to turn purple so as to blend in; this helps buttons not disappear randomly
                    and also helps build contrast to the background
                - when a nine match is achieved, the screen will flash white and the color that was just the target color now becomes the master color, or new theme color;
                    as the new theme color, this color will not be part of the colors shown when clicking the buttons, again to help with keeping buttons visible and avoiding
                    repeat colors
                - the themes feature helps keep gameplay colorful, refreshing, and ever-changing; each color switch adjusts your background and keeps the screen fluid and interesting
                - themes also help emphasize the score system; when a nine match is made, the screen flashes white and changes to the color just achieved;
                    for example, if the target color is purple, matching all nine squares to purple makes the screen background flash white then shift quickly to purple;
                    at this point, purple is now the background color/theme color, and a new color is targeted; 10 points are achieved during this transition; the screen flash
                    helps emphasize this achievement and point increase, while showing the user that they have, in essence, achieved the color purple and applied it to the background

        - The timer feature helps give the game flare
            - By setting a timer, gameplay feels more intense and immersive
            - 60 seconds is enough time to have fun without getting bored
            - The timer will end on its own or when the game is ended, meaning there are multiple ways to end your game and either get started on a new one
                or change the theme

        - Game Over was deisgned to be multifaceted and helpful
            - The game ends when 60 seconds are over or when the restart button is pressed in the upper right corner; this allows the user the choice to play the
                game all the way through or end it prematurely to see their final score and make their next decision
            - Game Over displays score and best score, two features that help the game feel replayable and rewarding

        - Score / Best
            - Score tracks your current score; +1 was designed to give a reward for matching color and +10 was designed to be a boost in score for matching all boxes to
                the target color; awarding score in both ways helps keep the game rewarding and helps ensure there are multiple pathways to beating your best score
            - Best score is unique to the user, so it will always display your best score, even if that score changes or you exit the app; thus,
                you'll always have a way to see how well you do, compare your score to others, and to keep the game replayable and competitive

        - Other features
            - colors will not repeat: the theme button will change the color randomly but will not apply the same theme twice; this is to prevent redundancy
                and ensure each tap of the button actually changes a something visually; the same applies for an individual button, which will always change to a
                color different from its current one
            - buttons are disabled after the target color is achieved; this is to help with gameplay functionality; without this feature, a button can always be pressed,
                and a user might accidentally press over the target color; while I considered taking out this disable button feature, I ultimately kept it in because
                I felt it would be frustrating to be tapping a button fast only to skip past the actual target color; the current implementation allows you to
                tap as fast as you'd like and ensures you can get as many points as possible; a good challenge mode for this game might be to keep buttons enabled
                indefinitely so as to force the user to be careful with the amount of taps to be sure not to skip over the target color; this current implementation
                was one I liked more but might require more user testing
            - play on Mac using XCode Simulator or play on iPhone by running the project on your own device, though this requires certain authentication by Apple

    Thank you for learning and playing COLOURS. I hope you enjoy it as much as I do. I learned a lot from creating this game, and overcame many challenges that
        learning a new software and language bring.