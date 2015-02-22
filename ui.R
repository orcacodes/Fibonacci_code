shinyUI(pageWithSidebar(
      headerPanel("Fibonacci number generator"),
      sidebarPanel(
            numericInput('n', 'Indicate the nth Fibonnaci number you want to find',value = 0, min = 0, step = 1),
            submitButton('Find my Fibonacci number')
      ),
      mainPanel(
#             plotOutput('newHist') # this 'newHist' name wasn't matching what was in server.R 'myHist'. Changed in server.R.
              h4('Welcome!  Please first read these instructions.'),
              p('This page will generate the nth number in the Fibonacci sequence for the n that you choose.'),
              p('The Fibonacci number sequence starts with either 0 or 1, and each subsequent number in the sequence is the sum of the previous two numbers in the sequence.'),
              p('In this shiny app, we are starting our Fibonacci sequence with 0.  As a result, here is the start of the sequence:'),
              code('0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987... '),
              p('But how do you quickly come up with the nth term in the Fibonacci sequence without performing all the previous calculations?'),
              p('That\'s where this simple shiny app comes in.'),
              p('Enter any n you want between 0 and 1474, and the app will quickly generate for you the Fibonacci number for that nth term.  (Any n term after 1474 will result in \'Inf\' for infinity.)'),
              p('You can type the number or use the up/down arrows of the input box on the left, then click \'Find my Fibonacci number\', and the right panel will show you the Fibonacci number.'),
              h3('Fibonacci number result'),
              h4('You entered this n value:'),
              verbatimTextOutput("inputValue"),
              h4('Which resulted in a fibonacci number of:'),
              verbatimTextOutput("outputValue")
              )
))