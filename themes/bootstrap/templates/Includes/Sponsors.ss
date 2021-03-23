<div class="container">
    <div class="sponsors row">
        <% loop Sponsors %>
            <div class="sponsors__item col-6 col-lg-3">
                <img src="$SponsorPhoto.Pad(300,300).URL" class="w-100 p-3" alt="$Title" />
            </div>
        <% end_loop %>
    </div>
</div>
