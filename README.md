# Rails Basic Forms Lab

<img src="https://s3.amazonaws.com/learn-verified/puppies.gif" hspace="10" align="right" width="300">

Your local pet adoption store has asked you to build their new website. First
and foremost, the store needs a form for their staff to add puppies that are
available for adoption. Good thing you love puppies _and_ coding!

## Objectives

1. Implement RESTful routing using Rails conventions
2. Implement both POST and GET requests following RESTful patterns
3. Connect a controller action with both a view and a model
4. Practice using Rails form helpers with proper nested naming conventions

## Instructions

The focus of this lab is to build a way for a user to go to a homepage,
follow a link to a form where they can enter a puppy's information, and, upon
submission, view the puppy's information on a show page.

1. Run `bundle install`
2. Run `bin/rails server`

3. **Set up your routes** in `config/routes.rb`:

   - Use RESTful routing conventions with `resources :puppies`
   - This will create all the standard RESTful routes including:
     - GET `/puppies` → `puppies#index` (homepage)
     - GET `/puppies/new` → `puppies#new` (form page)
     - POST `/puppies` → `puppies#create` (process form)
     - GET `/puppies/:id` → `puppies#show` (display puppy)

4. **Create controller actions** in `app/controllers/puppies_controller.rb`:

   - Add an `index` action to display the homepage
   - Add a `new` action to display the form
   - Add a `create` action to process the form submission and redirect to show
   - Add a `show` action to display the puppy information

5. **Build the homepage** in `app/views/puppies/index.html.erb`. This page should
   welcome you to the Puppy Adoption Site and include a link to the new puppy form.
   Use Rails `link_to` helper with the `new_puppy_path` route helper to create a link
   with the text "Click Here To List A Puppy".

6. **Create the form** in `app/views/puppies/new.html.erb`. You can create this form
   using Rails form helpers. Use Rails `form_with` helper with a model parameter to create your form.
   The form should automatically submit to the correct route and have fields for name, breed, and age.
   Remember: the "submit" button should be an `<input>` element with a `type` of `"submit"` and text content of "submit".

7. **Display the results** in `app/views/puppies/show.html.erb`. This view should display the info for the puppy that
   was just created. Display the puppy information with labels like:
   - Puppy Name: [name]
   - Puppy Breed: [breed]
   - Puppy Age: [age]

## Important Notes

- The database and model are already set up for you
- Use `form_with` with a model parameter, not a URL parameter
- After creating a puppy, redirect to the show page, don't render a create view
- Follow RESTful conventions throughout
- Form fields should use nested naming (e.g., `puppy[name]`, `puppy[breed]`, `puppy[age]`)

## Testing

Run `bundle exec rspec` to test your implementation. Make sure all tests pass!

The tests will check that:

- Your routes are set up correctly using RESTful conventions
- Your form has all the required fields with proper nested naming
- Your form submits to the correct endpoint
- Your show page displays all the submitted data correctly
- Your controller follows proper redirect patterns

## Resources

- [Rails Forms Guide](https://guides.rubyonrails.org/form_helpers.html)
- [Rails Routing Guide](https://guides.rubyonrails.org/routing.html)
- [Rails Controller Guide](https://guides.rubyonrails.org/action_controller_overview.html)
- [Rails RESTful Routing](https://guides.rubyonrails.org/routing.html#resource-routing-the-rails-default)
