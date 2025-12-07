# Sinatra Web App with Sequel

## Overview
- This is a web application built using the **Sinatra** Ruby framework and the **Sequel** database library.

- It demonstrates dynamic content loading, popovers, and simple CRUD operations with a database backend.

- The app is based on the **Sample Northwind database**, so the tables and data follow that schema.


## Features
- Dynamic content using AJAX/fetch
- Popover-based UI for interactive data display
- Database interactions handled via Sequel
- Clean, minimalistic Sinatra setup for easy understanding

## Getting Started
Clone the app and run
```
ruby main.rb
```

## Essentials:
- **Ruby version:** 3.x (or whichever version you used)
- **Required gems:** 
  - `sinatra`
  - `sequel`
  - `sqlite3` (or your chosen database)
- **Database**: Sample Northwind database (ensure the DB file exists or will be created)
- **Port:** By default, Sinatra runs on `http://localhost:4567`
- **Notes:** 
  - Make sure to `bundle install` if you’re using Bundler
  - Popovers require a modern browser that supports HTML `popover` attribute

## Included Northwind Database SQL File

- The `db_source/northwind.sql` file is included to set up the PostgreSQL database for the app. It is designed for PostgreSQL; run it before starting the Sinatra app: