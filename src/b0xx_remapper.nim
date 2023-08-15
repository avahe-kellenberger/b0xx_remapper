import nigui

app.init()

# TODO:
# Maybe we can fake a tabbed view
# by having buttons at the top
# which swap out the mainContainer content

# Create a window with a given title:
# By default, a window is empty and not visible.
# It is played at the center of the screen.
# A window can contain only one control.
# A container can contain multiple controls.
var window = newWindow("B0XX (R4) Remapper Tool")
window.resizable = false
window.width = 600.scaleToDpi
window.height = 575.scaleToDpi
window.iconPath = "./assets/b0xx.png"

# Create a container for controls.
# By default, a container is empty.
# It's size will adapt to it's child controls.
# A LayoutContainer will automatically align the child controls.
# The layout is set to clhorizontal.
var mainContainer = newLayoutContainer(Layout_Vertical)
mainContainer.padding = 36.scaleToDpi
window.add(mainContainer)

# B0XX Drawing
var boxImageContainer = newContainer()
mainContainer.add(boxImageContainer)

var boxImage = newImage()
boxImage.loadFromFile("./assets/b0xx.png")

var boxImageCanvas = newCanvas(boxImageContainer)
boxImageCanvas.drawImage(boxImage)

var updateButton = newButton("Update Overlay")
mainContainer.add(updateButton)

updateButton.onClick = proc(event: ClickEvent) =
  updateButton.enabled = false

  # TODO

  discard startTimer(1400, proc(event: TimerEvent) =
    updateButton.enabled = true
  )

# Make the window visible on the screen.
window.show()

# At last, run the main loop.
# This processes incoming events until the application quits.
# To quit the application, dispose all windows or call "app.quit()".
app.run()

