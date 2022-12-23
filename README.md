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
    <div class="row justify-content-center">        
          <div class="col-10">
              <%= render 'shared/errors'%>
              <%= form_with(model: @article, class: "shadow p-3 mb-3 bg-info rounded", local: true) do |f| %>
                  <div class="form-group row mb-3">
                    <%= f.label :title, class: "col-2 col-form-label text-light" %>
                      <div class="col-10">
                        <%= f.text_field :title, class: "form-control shadow rounded", placeholder: "Title of article" %>
                      </div>
                  </div>

                    <div class="form-group row">
                      <%= f.label :description, class: "col-2 col-form-label text-light" %>
                        <div class="col-10"> 
                        <%= f.text_area :description, rows: 10, class: "form-control shadow rounded", placeholder: "Description of article" %>
                        </div>
                    </div>
                
                    <div class="form-group row justify-content-center mt-3">
                      <%= f.submit class: "btn btn-outline-light btn-lg" %>
                    </div>
                <% end %>
          </div>
          <div class="bt-3">
            <%= link_to '[ Cancel and return to articles listing ]', articles_path, class: "text-info justify-content-center" %>
          </div>
    </div>
</div>


