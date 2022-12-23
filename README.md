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


<div class="container">
    <% if @article.errors.any? %> 
      <h2>The following errors prevented the article from being saved</h2> 
        <ul> 
          <% @article.errors.full_messages.each do |msg| %> 
            <li><%= msg %></li> 
          <% end %> 
        </ul>
    <% end %>
    <div class="row justify-content-center">
      <%= form_with(model: @article, local: true) do |f|%>
        <div class="form-group row mb-3">
          <%= f.label :title, class: "col-2 col-form-label text-light" %>
            <div class="col-10">
              <%= f.text_field :title, class: "form-control shadow rounded", placeholder: "Title of article" %> 
            </div>
        </div>

        <div class="form-group row">
          <%= f.label :description, class: "col-2 col-form-label text-light" %>
            <div class="col-10">
              <%= f.text_area :description, rows:10,  class: "form-control shadow rounded", placeholder: "Title of article" %> 
            </div>
        </div>

        <div class="form-group row justify-content-center mt-3">
          <%= f.submit class: "btn btn-outline-light btn-lg" %>
        </div>
      <% end %>
    </div>
</div>


