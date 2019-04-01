library(shiny)

shinyUI(pageWithSidebar(
        titlePanel("Iris species prediction"),
        
        sidebarPanel(
                h3("Enter iris measurements here:"),
                sliderInput("sepal.length", "Sepal Length", value = 6, min = 4,
                            max = 8, step = 0.1),
                sliderInput("sepal.width", "Sepal Width", value = 3, min = 1.5,
                            max = 4.5, step = 0.1),
                sliderInput("petal.length", "Petal Length", value = 4, min = 1,
                            max = 7, step = 0.1),
                sliderInput("petal.width", "Petal Width", value = 0, min = 1.5,
                            max = 3, step = 0.1),
                
                h3("Explanation:"),
                p("This is a simple model that will predict whether an iris
                  flower is of the species setosa, versicolor, or virginica,
                  based on its petal and sepal length and width. Simply use the
                  slider bars above to enter the iris flower's measurements
                  and the model will compute the predicted species on the
                  right. The model uses a classification tree trained on data
                  from R's iris dataset")
                ),
        
        mainPanel(
                h3("Predicted species of iris:"),
                textOutput('prediction')
        )
)
)
