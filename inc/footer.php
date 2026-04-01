<script>
  $(document).ready(function(){
    $('#p_use').click(function(){
      uni_modal("Privacy Policy","policy.php","mid-large")
    })
     window.viewer_modal = function($src = ''){
      start_loader()
      var t = $src.split('.')
      t = t[1]
      if(t =='mp4'){
        var view = $("<video src='"+$src+"' controls autoplay></video>")
      }else{
        var view = $("<img src='"+$src+"' />")
      }
      $('#viewer_modal .modal-content video,#viewer_modal .modal-content img').remove()
      $('#viewer_modal .modal-content').append(view)
      $('#viewer_modal').modal({
              show:true,
              backdrop:'static',
              keyboard:false,
              focus:true
            })
            end_loader()  

  }
    window.uni_modal = function($title = '' , $url='',$size=""){
        start_loader()
        $.ajax({
            url:$url,
            error:err=>{
                console.log()
                alert("An error occured")
            },
            success:function(resp){
                if(resp){
                    $('#uni_modal .modal-title').html($title)
                    $('#uni_modal .modal-body').html(resp)
                    if($size != ''){
                        $('#uni_modal .modal-dialog').addClass($size+'  modal-dialog-centered')
                    }else{
                        $('#uni_modal .modal-dialog').removeAttr("class").addClass("modal-dialog modal-md modal-dialog-centered")
                    }
                    $('#uni_modal').modal({
                      show:true,
                      backdrop:'static',
                      keyboard:false,
                      focus:true
                    })
                    end_loader()
                }
            }
        })
    }
    window._conf = function($msg='',$func='',$params = []){
       $('#confirm_modal #confirm').attr('onclick',$func+"("+$params.join(',')+")")
       $('#confirm_modal .modal-body').html($msg)
       $('#confirm_modal').modal('show')
    }
  })
</script>
<!-- Footer-->
<footer class="footer" id="footer">
    <div class="footer-container">

        <!-- About -->
        <div class="footer-box">
            <h3>About Us</h3>
            <p>We provide premium catering services for weddings, parties, corporate events, and festivals with delicious food & professional service.</p>
        </div>

        <!-- Quick Links -->
        <div class="footer-box">
            <h3>Quick Links</h3>
            <ul>
                <li><a href="#home">Home</a></li>
                <li><a href="#popular-menu">Menu</a></li>
                <li><a href="#catering-services">Services</a></li>
                <li><a href="#reservation">Reservation</a></li>
                <li><a href="#gallery">Gallery</a></li>
            </ul>
        </div>

        <!-- Contact -->
        <div class="footer-box">
            <h3>Contact Us</h3>
            <p><strong>Phone:</strong> +91 98765 43210</p>
            <p><strong>Email:</strong> cateringfood@gmail.com</p>
            <p><strong>Address:</strong> Deori, Gondia MH India</p>
        </div>

        <!-- Social Media -->
        <div class="footer-box">
            <h3>Follow Us</h3>
            <div class="social-links">
                <a href="#"><img src="https://cdn-icons-png.flaticon.com/512/733/733547.png"></a>
                <a href="#"><img src="https://cdn-icons-png.flaticon.com/512/2111/2111463.png"></a>
                <a href="#"><img src="https://cdn-icons-png.flaticon.com/512/174/174855.png"></a>
                <a href="#"><img src="https://cdn-icons-png.flaticon.com/512/1384/1384060.png"></a>
            </div>
        </div>

    </div>

    <div class="footer-bottom">
        <p>© 2026 Catering Services | All Rights Reserved.</p>
    </div>
</footer>
<style>.footer {
    background: #111;
    color: #ddd;
    padding: 60px 20px 20px;
}

.footer-container {
    max-width: 1200px;
    margin: auto;
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 30px;
}

.footer-box h3 {
    margin-bottom: 20px;
    font-size: 22px;
    color: #fff;
}

.footer-box p {
    line-height: 1.6;
    font-size: 15px;
}

.footer-box ul {
    list-style: none;
    padding: 0;
}

.footer-box ul li {
    margin-bottom: 10px;
}

.footer-box ul li a {
    color: #ccc;
    text-decoration: none;
    transition: .3s ease;
}

.footer-box ul li a:hover {
    color: #ff6b00;
}

/* Social Icons */
.social-links a img {
    width: 32px;
    margin-right: 10px;
    filter: brightness(0.9);
    transition: .3s;
}

.social-links a img:hover {
    transform: scale(1.15);
    filter: brightness(1.2);
}

/* Footer Bottom */
.footer-bottom {
    text-align: center;
    padding-top: 25px;
    border-top: 1px solid #333;
    margin-top: 20px;
}

.footer-bottom p {
    color: #aaa;
    font-size: 14px;
}

/* Animation */
.footer-box {
    opacity: 0;
    transform: translateY(30px);
    animation: fadeFooter 1s forwards;
}

.footer-box:nth-child(1) { animation-delay: .2s; }
.footer-box:nth-child(2) { animation-delay: .4s; }
.footer-box:nth-child(3) { animation-delay: .6s; }
.footer-box:nth-child(4) { animation-delay: .8s; }

@keyframes fadeFooter {
    0% { opacity: 0; transform: translateY(30px); }
    100% { opacity: 1; transform: translateY(0); }
}
</style>

   
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
      $.widget.bridge('uibutton', $.ui.button)
    </script>
    <!-- Bootstrap 4 -->
    <script src="<?php echo base_url ?>plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- ChartJS -->
    <script src="<?php echo base_url ?>plugins/chart.js/Chart.min.js"></script>
    <!-- Sparkline -->
    <script src="<?php echo base_url ?>plugins/sparklines/sparkline.js"></script>
    <!-- Select2 -->
    <script src="<?php echo base_url ?>plugins/select2/js/select2.full.min.js"></script>
    <!-- JQVMap -->
    <script src="<?php echo base_url ?>plugins/jqvmap/jquery.vmap.min.js"></script>
    <script src="<?php echo base_url ?>plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
    <!-- jQuery Knob Chart -->
    <script src="<?php echo base_url ?>plugins/jquery-knob/jquery.knob.min.js"></script>
    <!-- daterangepicker -->
    <script src="<?php echo base_url ?>plugins/moment/moment.min.js"></script>
    <script src="<?php echo base_url ?>plugins/daterangepicker/daterangepicker.js"></script>
    <!-- Tempusdominus Bootstrap 4 -->
    <script src="<?php echo base_url ?>plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
    <!-- Summernote -->
    <script src="<?php echo base_url ?>plugins/summernote/summernote-bs4.min.js"></script>
    <script src="<?php echo base_url ?>plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="<?php echo base_url ?>plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
    <script src="<?php echo base_url ?>plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
    <script src="<?php echo base_url ?>plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
    <!-- overlayScrollbars -->
    <!-- <script src="<?php echo base_url ?>plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script> -->
    <!-- AdminLTE App -->
    <script src="<?php echo base_url ?>dist/js/adminlte.js"></script>
    <div class="daterangepicker ltr show-ranges opensright">
      <div class="ranges">
        <ul>
          <li data-range-key="Today">Today</li>
          <li data-range-key="Yesterday">Yesterday</li>
          <li data-range-key="Last 7 Days">Last 7 Days</li>
          <li data-range-key="Last 30 Days">Last 30 Days</li>
          <li data-range-key="This Month">This Month</li>
          <li data-range-key="Last Month">Last Month</li>
          <li data-range-key="Custom Range">Custom Range</li>
        </ul>
      </div>
      <div class="drp-calendar left">
        <div class="calendar-table"></div>
        <div class="calendar-time" style="display: none;"></div>
      </div>
      <div class="drp-calendar right">
        <div class="calendar-table"></div>
        <div class="calendar-time" style="display: none;"></div>
      </div>
      <div class="drp-buttons"><span class="drp-selected"></span><button class="cancelBtn btn btn-sm btn-default" type="button">Cancel</button><button class="applyBtn btn btn-sm btn-primary" disabled="disabled" type="button">Apply</button> </div>
    </div>
    <div class="jqvmap-label" style="display: none; left: 1093.83px; top: 394.361px;">Idaho</div>