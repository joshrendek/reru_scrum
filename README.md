# Getting Started
    
    git clone git@github.com:bluescripts/reru_scrum.git
    cd reru_scrum
    heroku create
    git push heroku master
    heroku rake db:migrate

Go visit your new installation, add some Story Types & Statuses and start SCRUMing!

# Customizable Settings

These settings are creatable once you login and visit the "Settings" page

<table>
  <tr>
    <td><b>Key</b></td>
    <td><b>Description</b></td>
  </tr>
  <tr>
    <td>title</td>
    <td>Your project's website title and header in the top left corner</td>
  </tr>
  <tr>
    <td>allow_registration</td>
    <td>0 to turn off registration, delete or set to 1 to allow</td>
  </tr>
</table>

# How to update
    
    cd reru_scrum
    git pull; git push heroku master
    heroku rake db:migrate


# Working locally
    
    rm -rf public/assets/*

Before deploying again:
    
    rake assets:precompile:all

# License
Copyright (c) 2011 Josh Rendek

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
