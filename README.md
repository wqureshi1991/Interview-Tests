# First fork the repository in your github account.

# Simple yet elegant exercise
Create a simple gallery view as shown in the template. The gallery has few set of images grouped in different categories. You need to display the list of category with its respective thumbnail images. On selecting a particular image its preview should be displayed as shown in the template. All the images and data related to it is supposed to be fetched from the provided API.

# Features
1. On launching the application, hit the API (http://192.168.10.34/imageData.php) and get the required data to display the images in the gallery. (The required input and output details are available in GalleryJSON.txt file)
2. The gallery is divided into two sections. Upper half of the screen will display the preview of selected image and the lower half will display the list of thumbnail images. The images are grouped into different categories.
3. The list of all available categories should be displayed vertically and the list should be scrollable if its going offscreen. Each category would be having different set of images. These images must be aligned horizontally in a single row and the row should be scrollable if its going offscreen. (Added advantage if images have rounded corners)
4. On tapping a particular image its preview should be displayed in the preview area. Initially it should display a default image if its taking time to load a particular image.

#API End Point 
http://192.168.10.34/imageData.php

# Expectations
## General:
1. Proper coding standards should be followed. Try to write a optimised code. 
2. Class designing and structuring should be according to design patterns (e.g. MVC)
3. For UI designing, try to make use of latest available concepts.
4. App should provide support on different resolution and dimension based devices.    

## For iOS:
1. Its expected to make use of (not all but if needed) UITableView, UICollectionView, Storyboards, Autolayout, SizeClass, Delegates, Blocks, lazy loading.

## For Android
2. Its expected to make use of (not all but if needed) CardView, ScrollView, ImageViewer, Custom Layouts, ListView, lazy loading,


# Deadline
Complete test in 2 hours of time.

# Tips
1. Feel free to use third party libraries for network operations and anywhere else.
2. Feel free to use Google, Stackoverflow, etc.
3. See if you can be creative with your architecture even if you think it’s overkill.
4. Be sure to have a deliverable at the deadline.
5. Less is more.
6. Commit often

