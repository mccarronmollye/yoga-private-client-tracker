xadd before_action :authenticate_user! to yoga_class controller given by devise

xUsing Ruby on Rails for the project
xInclude at least one has_many relationship (x has_many y; e.g. User has_many Recipes)
xInclude at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
xInclude at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through xIngredients)
xInclude at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe xhas_many Items through Ingredients, Item has_many Recipes through Ingredients)
xThe "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute xother than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity) (R, L, N/A) Need another...
xInclude reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
xInclude a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)

URL /yoga_class/30_minutes

 XInclude signup (how e.g. Devise)
 XInclude login (how e.g. Devise)
 XInclude logout (how e.g. Devise)
 xInclude third party signup/login (how e.g. Devise/OmniAuth)
X Include nested resource show or index (URL e.g. users/2/recipes)
x Include nested resource "new" form (URL e.g. recipes/1/ingredients/new) through clients
XInclude form display of validation errors (form URL e.g. /recipes/new)
Confirm:

The application is pretty DRY
Limited logic in controllers
Views use helper methods if appropriate
Views use partials if appropriate

db browser sqlite

1. We need to hijack View All Yoga Classes link
2. Once we're in event we need to fire an ajax data for yoga_classes
3. Then we need to place it in the DOM / add to page

<p>History of Classes:</p>
<% @user.yoga_classes.each do |yoga_class| %>
<ul>
  <strong><%=yoga_class.title %></strong> <br>
  <%=yoga_class.class_plan %> <br>
  <p>Comments:</p>
  <% yoga_class.comments.each do |comment|%>
    <%=comment.content%>
  <%end%>
</ul>
<% end %>
