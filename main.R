# set cwd to homepage
setwd("/Users/matt/projects/blogdown_demo/")

# create the site
blogdown::new_site()

# add a minimal theme
blogdown::install_theme("yihui/hugo-xmin")

# now need to modify config.toml with appropriate themes
# e.g. subl config.toml 

# build the website into public/
blogdown::hugo_build()

# push the code to git and hopefully you've setup 
# an appropriate netlify build step.
# e.g. git commit -m "an update" & git push origin master

# tada! You're website should now be deployed!