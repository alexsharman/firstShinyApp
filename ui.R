library(shiny)

# Define UI for application that plots features of movies
ui <- fluidPage(
  
  # Sidebar layout with a input and output definitions
  sidebarLayout(
    
    # Inputs
    sidebarPanel(
      
      # Select variable for y-axis
      selectInput(inputId = "y", 
                  label = "Y-axis:",
                  choices = c("IMDB rating" = "imdb_rating", 
                              "IMDB number of votes" = "imdb_num_votes", 
                              "Critics score" = "critics_score", 
                              "Audience score" = "audience_score", 
                              "Runtime" = "runtime"), 
                  selected = "audience_score"),
      
      # Select variable for x-axis
      selectInput(inputId = "x", 
                  label = "X-axis:",
                  choices = c("IMDB rating" = "imdb_rating", 
                              "IMDB number of votes" = "imdb_num_votes", 
                              "Critics score" = "critics_score", 
                              "Audience score" = "audience_score", 
                              "Runtime" = "runtime"), 
                  selected = "critics_score"),
      
      # Select variable for color
      selectInput(inputId = "z", 
                  label = "Color by:",
                  choices = c("Title type" = "title_type", 
                              "Genre" = "genre", 
                              "MPAA rating" = "mpaa_rating", 
                              "Critics rating" = "critics_rating", 
                              "Audience rating" = "audience_rating"),
                  selected = "mpaa_rating")
    ),
    
    # Output
    mainPanel(
      plotOutput(outputId = "scatterplot")
    )
  )
)


