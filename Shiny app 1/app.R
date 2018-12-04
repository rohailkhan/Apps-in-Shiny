library(shiny)
bcl <- read.csv("bcl-data.csv", stringsAsFactors = FALSE)
ui <- fluidPage(
  titlePanel("Pathway Drinks Multan"),
  h2('Item prices in Pathway drinks'),
  sidebarLayout(
    sidebarPanel(sliderInput("priceInput", "Price", min=0, max=100, value=c(25,40), pre = "$")),
    
    
    mainPanel("the output is here")
    
    
  )
  
)


server <- function(input, output, session) {
  
}

shinyApp(ui=ui, server=server)