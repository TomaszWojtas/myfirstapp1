shinyUI(pageWithSidebar(
        headerPanel("PA project"),
        sidebarPanel(
                h3('This is a very simple application.
                   It is based on data collected by Galton.
                   We will use that data to predict your
                   childs height'),
                numericInput('input', 'Enter your height below and on the right
                   you will see predicted height of your child',
                             100, min=50, max=250, step=1),
                checkboxInput('cm', 'Turn it on if you entered
                              your height in centimetres and turn off
                              if you entered it in inches')
        ),
        mainPanel(
                h3('Your child height is:'),
                verbatimTextOutput('check'),
                verbatimTextOutput('output')
        )
))