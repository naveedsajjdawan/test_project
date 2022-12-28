# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

<% if logged_in? %>
            <li class="nav-item dropdown">
              <li class="nav-item">
                <%= link_to 'Logout', logout_path, class: "nav-link", method: :delete %>
              </li>
            <% else %>
              <li class="nav-item">
                <%= link_to 'Log in', login_path, class: "nav-link" %>
              </li>
              <li class="nav-item">
                <%= link_to 'Sign up', signup_path, class: "nav-link" %>
              </li>
            <% end %>








<% if logged_in? && @user == current_user%>
    <div class="text-center mt-4">
        <%= link_to "Edit your profile", edit_user_path(@user), class: "btn btn-outline-info" %>
    </div>
<% end %>















<% if logged_in? %>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                profile [<%= current_user.username %>]
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><%= link_to "View Profile", user_path(current_user), class:"dropdown-item"%></li>
                <li><%= link_to "Edit Profile", edit_user_path(current_user), class:"dropdown-item"%></li>
                </ul>
              </li>
              <li class="nav-item">
                <%= link_to 'Logout', logout_path, class: "nav-link", method: :delete %>
              </li>
            <% else %>
              <li class="nav-item">
                <%= link_to 'Log in', login_path, class: "nav-link" %>
              </li>
              <li class="nav-item">
                <%= link_to 'Sign up', signup_path, class: "nav-link" %>
              </li>
            <%end%>