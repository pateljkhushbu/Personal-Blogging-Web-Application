<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="/Style/Master.html"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
	integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

	<script type="text/javascript"
	src="https://cdn.datatables.net/1.11.4/js/dataTables.bootstrap5.min.js"></script>
</head>
<style>
#contact .card:hover i,#contact .card:hover h4{
	color: #87d37c;
}
</style>
<body>
<br>
<br>
<br>
    <section id="contact">
       <div class="container">
           <h3 class="text-center text-uppercase">Do you wish to contact us?</h3>
           <p class="text-center w-75 m-auto">If want to know more about us, or have any query or feedback. Please contact us through our email, contact number or post us on the details given below!</p>
           <p class="text-center w-75 m-auto"></p>
           <div class="row">
             <div class="col-sm-12 col-md-6 col-lg-4 my-5">
               <div class="card border-0">
                  <div class="card-body text-center">
                  <i class="fa-solid fa-phone-volume fa-5x mb-3" aria-hidden="true"></i>
                    <h4 class="text-uppercase mb-5">call us</h4>
                    <p>+8801683615582,+8801750603409</p>
                  </div>
                </div>
             </div>
             <div class="col-sm-12 col-md-6 col-lg-4 my-5">
               <div class="card border-0">
                  <div class="card-body text-center">
                  <i class="fa-solid fa-location-dot fa-5x mb-3" aria-hidden="true"></i>
                    <h4 class="text-uppercase mb-5">Address</h4>
                    <address>Suite 02, Level 12, Sahera Tropical Center ,Dadar</address>
                  </div>
                </div>
             </div>
             <div class="col-sm-12 col-md-6 col-lg-4 my-5">
               <div class="card border-0">
                  <div class="card-body text-center">
                  <i class="fa-solid fa-envelope fa-5x mb-3" aria-hidden="true""></i>
                    <h4 class="text-uppercase mb-5">email</h4>
                    <p>blogging@gmail.com</p>
                  </div>
                </div>
             </div>
           </div>
       </div>
    </section>
    </body>
<br>
<br>
<br>
<br>
<br>
<br>
</html>
<jsp:include page="/Style/footer.html"></jsp:include>