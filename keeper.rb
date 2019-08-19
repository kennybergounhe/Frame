<div class="container dropdown-container">
  <div class="dropdown">
    <button class="dropbtn">Layout <i class="arrow down">  </i></button>
    <div class="dropdown-content">
      <p id="portrait" class="btn-desactivated" >Portrait</p>
      <p id="landscape" class="btn-desactivated" >Landscape</p>
    </div>
  </div>

  <div class="dropdown">
    <%= link_to "Upload your own 📎", new_photo_path, class: "dropbtn" %>
  </div>

</div>

<br>

<div class="d-flex w-100 flex-wrap">
  <% @photos.each do |photo| %>
    <div class="photo-container" >
      <img class="photoindex" data-id = "<%= photo['id'] %>" src="<%= photo["src"]["large2x"]%>" height="300" alt="test">
      <i class="fas fa-heart" data-id = "<%= photo['id'] %>" data-src="<%= photo["src"]["large2x"]%>"></i>
    </div>
<% end %>
</div>

  <%= simple_form_for Photo.new do |f| %>
    <%= f.input :api_id, :as => :hidden %>
    <%= f.input :api_url, :as => :hidden %>
    <%= f.input :height, :as => :hidden %>
    <%= f.input :width, :as => :hidden %>
  <% end %>


<%= simple_form_for Favorite.new, remote: true do |f| %>
  <input  id="favorite_api_id" type="text" value="" hidden="true" name="api_id">
  <input type="text" id="favorite_api_url" value="" hidden="true" name="url_id">
<% end %>

<!-- <p>
  Photo ID:<%#= photo["id"] %>
  Width:<%#= photo["width"] %>
  Height:<%#= photo["height"] %>
  HD:<%#= photo["src"]["original"] %>
  Large:<%#= photo["src"]["large2x"] %>
  Medium:<%#= photo["src"]["medium"] %>
</p> -->

<script>

  // This is a form for a new photo
  const photos = document.querySelectorAll(".photoindex")
  const portrait = document.querySelector("#portrait")
  const landscape = document.querySelector("#landscape")

  portrait.addEventListener('click', (e) => {
    portrait.classList.toggle("btn-activated");
    photos.forEach((photo) => {
      if (photo.dataset.height < photo.dataset.width * 1.5) {
        photo.classList.toggle("display");
      }
    })
  })

  landscape.addEventListener('click', (e) => {
    landscape.classList.toggle("btn-activated");
    photos.forEach((photo) => {
      if (photo.dataset.height * 1.5 > photo.dataset.width) {
        photo.classList.toggle("display");
      }
    })
  })
</script>

<script>
  const photos = document.querySelectorAll("#photoindex")
  const form_id = document.querySelector("#photo_api_id")
  const form_url = document.querySelector("#photo_api_url")
  const form_height = document.querySelector("#photo_height")
  const form_width = document.querySelector("#photo_width")


  photos.forEach((photo) => {

    photo.addEventListener('click', (e) => {
      form_id.value = photo.dataset.id
      form_url.value = photo.src
      form_height.value = photo.dataset.height
      form_width.value = photo.dataset.width
      document.querySelector("#new_photo").submit()
    })
  })
  //This is a form for a new favorite
  const favoritesForm = document.querySelector("#new_favorite")
  const hearts = document.querySelectorAll(".fa-heart")
  const apiUrl = document.querySelector("#favorite_api_url")
  const apiId = document.querySelector("#favorite_api_id")

  hearts.forEach((heart)=>{
    heart.addEventListener('click', (e) => {
      apiId.value = e.target.dataset.id
      apiUrl.value = e.target.dataset.src
      Rails.fire(favoritesForm, "submit")
    })
  })
</script>


----


<div class="container dropdown-container">
  <div class="dropdown">
    <button class="dropbtn">Layout <i class="arrow down">  </i></button>
    <div class="dropdown-content">
      <p id="portrait" class="btn-desactivated" >Portrait</p>
      <p id="landscape" class="btn-desactivated" >Landscape</p>
    </div>
  </div>

<<<<<<< favorites
<div class="d-flex w-100 flex-wrap">
  <% @photos.each do |photo| %>
    <div class="photo-container" >
      <img class="photoindex" data-id = "<%= photo['id'] %>" src="<%= photo["src"]["large2x"]%>" height="300" alt="test">
      <i class="fas fa-heart" data-id = "<%= photo['id'] %>" data-src="<%= photo["src"]["large2x"]%>"></i>
    </div>
<% end %>
</div>

=======
  <div class="dropdown">
    <%= link_to "Upload your own 📎", new_photo_path, class: "dropbtn" %>
  </div>

</div>

<br>


<div class="cards">
  <% @photos.each do |photo| %>
    <div class="card">
      <img id="photoindex" data-id = "<%= photo['id'] %>" src="<%= photo["src"]["large2x"]%>" data-height = "<%= photo['height'] %>" data-width = "<%= photo['width'] %>" height="300" alt="test">
    </div>
  <% end %>
</div>

  <%= simple_form_for Photo.new do |f| %>
    <%= f.input :api_id, :as => :hidden %>
    <%= f.input :api_url, :as => :hidden %>
    <%= f.input :height, :as => :hidden %>
    <%= f.input :width, :as => :hidden %>
  <% end %>
>>>>>>> master


<%= simple_form_for Favorite.new, remote: true do |f| %>
  <input  id="favorite_api_id" type="text" value="" hidden="true" name="api_id">
  <input type="text" id="favorite_api_url" value="" hidden="true" name="url_id">
<% end %>

<!-- <p>
  Photo ID:<%#= photo["id"] %>
  Width:<%#= photo["width"] %>
  Height:<%#= photo["height"] %>
  HD:<%#= photo["src"]["original"] %>
  Large:<%#= photo["src"]["large2x"] %>
  Medium:<%#= photo["src"]["medium"] %>
</p> -->

<script>
<<<<<<< favorites
  // This is a form for a new photo
  const photos = document.querySelectorAll(".photoindex")
=======
  const portrait = document.querySelector("#portrait")
  const landscape = document.querySelector("#landscape")

  portrait.addEventListener('click', (e) => {
    portrait.classList.toggle("btn-activated");
    photos.forEach((photo) => {
      if (photo.dataset.height < photo.dataset.width * 1.5) {
        photo.classList.toggle("display");
      }
    })
  })

  landscape.addEventListener('click', (e) => {
    landscape.classList.toggle("btn-activated");
    photos.forEach((photo) => {
      if (photo.dataset.height * 1.5 > photo.dataset.width) {
        photo.classList.toggle("display");
      }
    })
  })
</script>

<script>
  const photos = document.querySelectorAll("#photoindex")
>>>>>>> master
  const form_id = document.querySelector("#photo_api_id")
  const form_url = document.querySelector("#photo_api_url")
  const form_height = document.querySelector("#photo_height")
  const form_width = document.querySelector("#photo_width")


  photos.forEach((photo) => {

    photo.addEventListener('click', (e) => {
      form_id.value = photo.dataset.id
      form_url.value = photo.src
      form_height.value = photo.dataset.height
      form_width.value = photo.dataset.width
      document.querySelector("#new_photo").submit()
    })
  })
  //This is a form for a new favorite
  const favoritesForm = document.querySelector("#new_favorite")
  const hearts = document.querySelectorAll(".fa-heart")
  const apiUrl = document.querySelector("#favorite_api_url")
  const apiId = document.querySelector("#favorite_api_id")

  hearts.forEach((heart)=>{
    heart.addEventListener('click', (e) => {
      apiId.value = e.target.dataset.id
      apiUrl.value = e.target.dataset.src
      Rails.fire(favoritesForm, "submit")
    })
  })
</script>


