<% include Header %>


 <section class="bg-dark text-white background-image-overlay-container" <% if $BackgroundImage %>style="background-image: url($BackgroundImage.FocusFill(1920,1080).URL)"<% end_if %>>
    <div class="background-image-overlay"></div>
    <div class="container-xl py-sm-6">
        <div class="row d-flex align-items-center justify-content-center">
            <div class="col-lg-10 py-5 text-center lead">
                $Content
            </div>

        </div>
    </div>
</section>

<section class="bg-primary text-white py-5">
    <div class="container-xl">
        <div class="row d-flex align-items-center">
            <div class="col-sm-8 col-md-7">
                <h2 class="h1">About River Run</h2>
                <p class="lead">RiverRun is a 5K run, walk, and wheelchair race held in Iowa City each April.</p>
                <p><a href="about/" class="btn btn-light btn-large">Learn more about River Run</a></p>
            </div>

                <div class="col-sm-4 offset-md-1">
                <ul class="list-group list-group-flush quick-links text-center">
                  <li class="list-group-item"><a href="faq/">FAQs</a></li>
                  <li class="list-group-item"><a href="events/">Events</a></li>
                  <li class="list-group-item"><a href="social-media/">Social Media</a></li>
                </ul>
                </div>

        </div>

    </div>
</section>
<%--
<section class="py-5">
    <div class="container-xl">
        <h2 class="text-center display-3 mb-5">Meet Our Executive Board</h2>
        <div class="stafflist">
            <ul class="stafflist__list list-unstyled">
                <% loop RandomStaffMembers(8) %>
                    <% include StaffPageListItem %>
                <% end_loop %>
            </ul>
            <p class="text-center">
            <a href="about/" class="btn btn-outline-primary text-center">View all members</a>
            </p>
        </div>
    </div>
</section> --%>
<% include Sponsors %>
