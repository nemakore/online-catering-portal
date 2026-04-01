 <!-- Header-->
 <header class="bg-dark py-5" id="main-header">
    <div class="container px-4 px-lg-5 my-5">
        <div class="text-center text-white">
            <h1 class="display-4 fw-bolder">Looking for Catering Services for your Events ?</h1>
            <p class="lead fw-normal text-white-50 mb-0">Reserve Now!</p>
        </div>
    </div>
</header>

<section class="specialities" id="specialities">
    <h2 class="section-title">Our Specialities</h2>
    <p class="section-subtitle">Why Choose Us?</p>

    <div class="speciality-container">

        <div class="speciality-box fade-in">
            <img src="https://cdn-icons-png.flaticon.com/512/3075/3075977.png">
            <h3>Fresh & Hygienic Food</h3>
            <p>हम हर डिश को पूरी साफ-सफाई के साथ तैयार करते हैं।</p>
        </div>

        <div class="speciality-box fade-in">
            <img src="https://cdn-icons-png.flaticon.com/512/1046/1046857.png">
            <h3>Professional Chefs</h3>
            <p>Experienced chefs with top-class cooking expertise.</p>
        </div>

        <div class="speciality-box fade-in">
            <img src="https://cdn-icons-png.flaticon.com/512/1903/1903145.png">
            <h3>On-Time Service</h3>
            <p>हर इवेंट में punctual and premium catering experience.</p>
        </div>

        <div class="speciality-box fade-in">
            <img src="https://cdn-icons-png.flaticon.com/512/2910/2910791.png">
            <h3>Custom Menu Options</h3>
            <p>हर event के लिए आपके taste के अनुसार special menu.</p>
        </div>
    </div>
</section>
<style>/* Section Base */
.specialities {
    background: #fff;
    text-align: center;
}

.section-title {
    font-size: 38px;
    font-weight: 700;
    margin-bottom: 5px;
    color: #333;
}

.section-subtitle {
    font-size: 20px;
    color: #777;
    margin-bottom: 40px;
}

/* Container */
.speciality-container {
    max-width: 1100px;
    margin: auto;
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 25px;
}

/* Box Design */
.speciality-box {
    background: #fafafa;
    padding: 25px;
    border-radius: 15px;
    transition: 0.4s ease;
    border: 1px solid #eee;
}

.speciality-box img {
    width: 70px;
    margin-bottom: 15px;
    transition: transform .3s ease;
}

.speciality-box h3 {
    font-size: 22px;
    margin-bottom: 10px;
}

.speciality-box p {
    font-size: 15px;
    color: #666;
}

/* Hover Animation */
.speciality-box:hover {
    transform: translateY(-10px);
    box-shadow: 0 10px 25px rgba(0,0,0,0.1);
    background: #fff;
}

.speciality-box:hover img {
    transform: scale(1.15);
}

/* Fade-in Animation */
.fade-in {
    opacity: 0;
    transform: translateY(25px);
    animation: fadeInUp 1s forwards;
}

.fade-in:nth-child(1) { animation-delay: .3s; }
.fade-in:nth-child(2) { animation-delay: .5s; }
.fade-in:nth-child(3) { animation-delay: .7s; }
.fade-in:nth-child(4) { animation-delay: .9s; }

@keyframes fadeInUp {
    0% { opacity: 0; transform: translateY(25px); }
    100% { opacity: 1; transform: translateY(0); }
}

.menu-link {
    text-decoration: none !important;
    color: inherit !important;
    display: block;
}

.menu-link:hover {
    text-decoration: none !important;
    color: inherit !important;
}

.menu-link:hover .menu-box {
    transform: scale(1.05);
    transition: 0.3s;
}
</style>
<!--section--> 
<section class="menu-section" id="popular-menu">
    <h2 class="section-title">Popular Menu Items</h2>
    <p class="section-subtitle">Our Best Selling Dishes</p>

    <div class="menu-container">

            <a href="http://localhost/catering/?p=products&c=c4ca4238a0b923820dcc509a6f75849b" class="menu-link">

        <div class="menu-box menu-anim">
            
            <img src="https://smotiramsweets.ca/cdn/shop/collections/chaat_counter.jpg?v=1715062883" alt="">
            <h3>Chaat Counter</h3>
            <p>Pani Puri, Sev Puri, Bhel, Raj Kachori & more delicious chaat items.</p>
        </div>
</a>            <a href="http://localhost/catering/?p=products&c=c81e728d9d4c2f636f067f89cc14862c" class="menu-link">

        <div class="menu-box menu-anim">
            <img src="https://sukhis.com/app/uploads/2019/09/Indian-Breakfast.jpg" alt="">
            <h3>South Indian</h3>
            <p>Crispy Dosa, Idli, Vada, Uttapam served with chutney & sambar.

</p>
        </div>
</a>            <a href="http://localhost/catering/?p=products&c=eccbc87e4b5ce2fe28308fd9f2a7baf3" class="menu-link">

        <div class="menu-box menu-anim">
            <img src="https://assets.zeezest.com/blogs/PROD_Banner_1663162846668.jpg" alt="">
            <h3>Chinese (Veg)</h3>
            <p>Veg Noodles, Manchurian, Spring Roll & complete Chinese buffet.</p>
        </div>
</a>            <a href="http://localhost/catering/?p=products&c=a87ff679a2f3e71d9181a67b7542122c" class="menu-link">

        <div class="menu-box menu-anim">
            <img src="https://tb-static.uber.com/prod/image-proc/processed_images/12b3f60c1f609bf964f657e9b14689cf/1c3598e47c3a925b92664360b3dcd645.jpeg" alt="">
            <h3>Instant Food</h3>
            <p>Pasta, Maggie Live, Sandwich, Fries, Burgers & many more.</p>
        </div>
</a>
    </div>
</section>
<style>/* Section Styling */
.menu-section {
    padding: 3px ;
    background: #fdfdfd;
    text-align: center;
}

.section-title {
    font-size: 38px;
    font-weight: 700;
    margin-bottom: 5px;
    color: #333;
}

.section-subtitle {
    font-size: 18px;
    color: #777;
    margin-bottom: 40px;
}

/* Menu Grid */
.menu-container {
    max-width: 1150px;
    margin: auto;
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
    gap: 25px;
}

/* Menu Box */
.menu-box {
    background: #fff;
    border-radius: 15px;
    overflow: hidden;
    border: 1px solid #eee;
    transition: 0.3s ease;
    cursor: pointer;
}

.menu-box img {
    width: 100%;
    height: 180px;
    object-fit: cover;
    transition: transform .4s ease;
}

.menu-box h3 {
    font-size: 20px;
    margin: 15px 0 5px;
}

.menu-box p {
    font-size: 15px;
    color: #666;
    padding: 0 15px 20px;
}

/* Hover Effect */
.menu-box:hover {
    transform: translateY(-10px);
    box-shadow: 0 10px 25px rgba(0,0,0,0.12);
}

.menu-box:hover img {
    transform: scale(1.1);
}

/* Fade-in Animation */
.menu-anim {
    opacity: 0;
    transform: translateY(25px);
    animation: fadeMenu 1s forwards;
}

.menu-anim:nth-child(1) { animation-delay: .2s; }
.menu-anim:nth-child(2) { animation-delay: .4s; }
.menu-anim:nth-child(3) { animation-delay: .6s; }
.menu-anim:nth-child(4) { animation-delay: .8s; }
.menu-anim:nth-child(5) { animation-delay: 1s; }
.menu-anim:nth-child(6) { animation-delay: 1.2s; }

@keyframes fadeMenu {
    0% { opacity: 0; transform: translateY(25px); }
    100% { opacity: 1; transform: translateY(0); }
}

.menu-anim.active {
    opacity: 1 !important;
    transform: translateY(0) !important;
}

</style>
<script>
document.addEventListener("scroll", () => {
  document.querySelectorAll(".menu-anim").forEach((el) => {
    const position = el.getBoundingClientRect().top;
    const screen = window.innerHeight;
    if (position < screen - 50) {
      el.classList.add("active");
    }
  });
});
</script>
<!--section-->
<section class="services" id="catering-services">
    <h2 class="section-title">Catering Services We Offer</h2>
    <p class="section-subtitle">Perfect for Every Occasion</p>

    <div class="services-container">

        <div class="service-box service-anim">
            <img src="https://www.eternalweddingz.in/storage/vendor_images/tVxArZ5YoPDG9hYWTEQe2ggHOaGHbYRT6iwpM0yq.webp" alt="">
            <h3>Wedding Catering</h3>
            <p>Premium wedding buffet setup with elegant presentation.</p>
        </div>

        <div class="service-box service-anim">
            <img src="https://www.orangeclove.com.sg/app/uploads/2024/02/Food-Catering-for-Your-Birthday-Party.jpg" alt="">
            <h3>Birthday Party Catering</h3>
            <p>Fun & delicious food specially designed for birthday events.</p>
        </div>

        <div class="service-box service-anim">
            <img src="https://regale.io/wp-content/uploads/2022/08/what-to-look-out-for-in-corporate-catering-service.jpg" alt="">
            <h3>Corporate Catering</h3>
            <p>Professional catering for meetings, seminars & office events.</p>
        </div>

        <div class="service-box service-anim">
            <img src="https://images.stockcake.com/public/6/d/e/6de03c15-1d27-4be0-b977-c2f6f14084d2_large/outdoor-catering-event-stockcake.jpg" alt="">
            <h3>Outdoor Event Catering</h3>
            <p>Perfect catering for open-air events & celebrations.</p>
        </div>

    </div>
</section>
<style>.services {
    padding: 20px 0px;
    background: #fff;
    text-align: center;
}

.section-title {
    font-size: 38px;
    font-weight: 700;
    color: #333;
}

.section-subtitle {
    font-size: 18px;
    color: #777;
    margin-bottom: 40px;
}

.services-container {
    max-width: 1150px;
    margin: auto;
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
    gap: 25px;
}

.service-box {
    background: #fafafa;
    border-radius: 15px;
    overflow: hidden;
    border: 1px solid #eee;
    transition: .3s ease;
}

.service-box img {
    width: 100%;
    height: 180px;
    object-fit: cover;
    transition: transform .4s ease;
}

.service-box h3 {
    font-size: 20px;
    padding: 15px 10px 5px;
}

.service-box p {
    padding: 0 15px 20px;
    color: #666;
    font-size: 15px;
}

/* Hover Effect */
.service-box:hover {
    transform: translateY(-10px);
    box-shadow: 0 10px 25px rgba(0,0,0,0.15);
}

.service-box:hover img {
    transform: scale(1.1);
}

/* Fade-in Animations */
.service-anim {
    opacity: 0;
    transform: translateY(25px);
    animation: fadeService 1s forwards;
}

.service-anim:nth-child(1) { animation-delay: .2s; }
.service-anim:nth-child(2) { animation-delay: .4s; }
.service-anim:nth-child(3) { animation-delay: .6s; }
.service-anim:nth-child(4) { animation-delay: .8s; }
.service-anim:nth-child(5) { animation-delay: 1s; }
.service-anim:nth-child(6) { animation-delay: 1.2s; }

@keyframes fadeService {
    0% { opacity: 0; transform: translateY(25px); }
    100% { opacity: 1; transform: translateY(0); }
}
</style>
<!--section-->
<section class="testimonials" id="testimonials">
    <h2 class="section-title">What Our Customers Say</h2>
    <p class="section-subtitle">Real Feedback From Our Clients</p>

    <div class="testi-container">

        <div class="testi-box testi-anim">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDDeThtOw5CiFZGXmJ9Tz88HsZd9jL9F5gKA&s" alt="">
            <h3>Sanjay Puram</h3>
            <div class="stars">★★★★★</div>
            <p>“Event catering was absolutely amazing! Food quality and service both were top-notch.”</p>
        </div>

        <div class="testi-box testi-anim">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXyo1TNtvI_fRVFia1GgOLl2yVhlg_-tubng&s" alt="">
            <h3>Nitin Gadkari</h3>
            <div class="stars">★★★★★</div>
            <p>“Birthday event catering was perfectly organized. Highly professional and punctual team.”</p>
        </div>

        <div class="testi-box testi-anim">
            <img src="https://d3pc1xvrcw35tl.cloudfront.net/images/1200x900/24-vinod-agraval_201910316196.jpg" alt="">
            <h3>Vinod Agrawal</h3>
            <div class="stars">★★★★★</div>
            <p>“Party event catering was delicious! Peoples loved the food. Thank you for amazing service.”</p>
        </div>

    </div>
</section>
<style>.testimonials {
    text-align: center;
    background: #fafafa;
}

.section-title {
    font-size: 38px;
    font-weight: 700;
    color: #333;
}

.section-subtitle {
    font-size: 18px;
    color: #777;
    margin-bottom: 40px;
}

.testi-container {
    max-width: 1100px;
    margin: auto;
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
    gap: 25px;
}

/* Testimonial Box */
.testi-box {
    background: #fff;
    padding: 25px;
    border-radius: 15px;
    border: 1px solid #eee;
    text-align: center;
    transition: .3s ease;
    box-shadow: 0 10px 20px rgba(0,0,0,0.06);
}

.testi-box:hover {
    transform: translateY(-8px);
    box-shadow: 0 15px 30px rgba(0,0,0,0.16);
}

.testi-box img {
    width: 80px;
    height: 80px;
    object-fit: cover;
    border-radius: 50%;
    border: 3px solid #ff6b00;
    margin-bottom: 15px;
}

.testi-box h3 {
    font-size: 20px;
    margin-bottom: 5px;
    color: #222;
}

.stars {
    color: #ff9800;
    font-size: 18px;
    margin-bottom: 15px;
}

.testi-box p {
    font-size: 15px;
    color: #666;
}

/* Fade Animation */
.testi-anim {
    opacity: 0;
    transform: translateY(25px);
    animation: fadeTesti 1s forwards;
}

.testi-anim:nth-child(1) { animation-delay: .3s; }
.testi-anim:nth-child(2) { animation-delay: .5s; }
.testi-anim:nth-child(3) { animation-delay: .7s; }

@keyframes fadeTesti {
    0% { opacity: 0; transform: translateY(25px); }
    100% { opacity: 1; transform: translateY(0); }
}
</style>
