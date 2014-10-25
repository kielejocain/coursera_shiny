library(shiny)
shinyUI(fluidPage(
      absolutePanel(
            left = 20,
            top = 20,
            height = 100,
            wellPanel(
                  h2("Guess My Iris")
            )
      ),
      absolutePanel(
            left = 20,
            width = 300,
            top = 140,
            wellPanel(
                  h3("Please select the dimensions of your iris."),
                  sliderInput('sLen', 'Sepal Length', 4, 8, 6, step = 0.1),
                  sliderInput('sWid', 'Sepal Width', 2, 5, 3.5, step = 0.1),
                  sliderInput('pLen', 'Petal Length', 1, 7, 4, step = 0.1),
                  sliderInput('pWid', 'Petal Width', 0, 3, 1.5, step = 0.1)
            )
      ),
      absolutePanel(
            left = 340,
            top = 140,
            wellPanel(
                  h3('Your iris has:'),
                  textOutput("osLen"),
                  textOutput("osWid"),
                  textOutput("opLen"),
                  textOutput("opWid"),
                  h3("You've got an:"),
                  span(textOutput("spec"), style = "font-style: italic")
            )
      ),
      absolutePanel(
            bottom = 20,
            left = 20,
            right = 20,
            wellPanel(
                  h3("Introduction"),
                  p("This simple webapp was developed as the Course Project for
                    the Developing Data Products Coursera course.  It is intended
                    to be a simple exercise in the use of the shiny library."),
                  h3("Usage"),
                  p("The app, taking in the four measurements of the parts of an
                    iris, attempts to use a pre-built decision tree to guess the
                    species of the specific plant.  Simply use the sliders to
                    input the iris's sepal length and width as well as its petal
                    length and width.  Or you could just pretend, since you're
                    only here to grade my assignment.  I won't judge."),
                  p("After choosing the values for your particular iris (and I'm
                    sure it's lovely), the app will suggest which of the three
                    species you have under the heading, \"You've got an\".  The
                    three possible outcomes are setosa, versicolor, and virginica.")
            )
      )
))