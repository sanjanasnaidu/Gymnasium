<%-- 
    Document   : register
    Created on : 07-Apr-2020, 2:57:12 PM
    Author     : Harry Poter
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">
    <link href="register/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="register/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">
    <link href="register/css/main.css" rel="stylesheet" media="all">
</head>

<body>
    <div class="page-wrapper bg-red p-t-180 p-b-100 font-robo">
        <div class="wrapper wrapper--w960">
            <div class="card card-2">
                <div class="card-heading"></div>
                <div class="card-body">
                    <h2 class="title">Registration</h2>
                    <form method="POST" action="Finalregisterservlet">
                        <div class="input-group">
                            <input class="input--style-2" type="text" placeholder="First Name" name="fname"  id="fname" required>
                        </div>
                        <div class="input-group">
                            <input class="input--style-2" type="text" placeholder="Last Name" name="lname" id="lname" required>
                        </div>
                      
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <select name="gender" id="gender" required>
                                            <option disabled="disabled" selected="selected">Gender</option>
                                            <option>Male</option>
                                            <option>Female</option>
                                            <option>Other</option>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                           
                        <div class="input-group">
                            <input class="input--style-2" type="text" placeholder="Contact no" name="contact" id="contact" required>
                        </div>
                        <div class="input-group">
                            <input class="input--style-2" type="text" placeholder="Email" name="email" id="email" required>
                        </div>
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search" >
                                        <select name="slot" id="slot" required>
                                            <option disabled="disabled" selected="selected">Time Slot</option>
                                            <option value="morning">Morning: 6:00-8:00am</option>
                                            <option value="evening">Evening: 5:00-7:00pm</option>
                                            <option value="night">Night: 9:30-11:30pm</option>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                        <div class="input-group">
                            <div class="rs-select2 js-select-simple select--no-search">
                                <select name="packages" id="packages" onchange="setValue();" required>
                                    <option disabled="disabled" selected="selected">Packages</option>
                                    <option value="basic">Basic</option>
                                        <option value="standard">Standard</option>
                                        <option value="premium">Premium</option>
                                </select>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>
                        <div class="input-group">
                            <input class="input--style-2" type="text" placeholder="Price" name="price" id="price" required readonly>
                        </div>
                        <div class="input-group">
                            <input class="input--style-2" type="text" placeholder="Instructor" name="instructor" id="instructor" required readonly>
                        </div>
                        <label>NOTE:</label><br>
                        <label>Membership is valid for one academic year and will be renewed every year</label><br>
                        <label>Membership is not transferable</label><br>
                        <label>Membership that is paid in advance is not refundable</label><br>
                        
                        <div class="p-t-30">
                            <center><button type="submit" class="btn btn--radius btn--green">Register</button></center>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
<script>
        function setValue(){
            var val = document.getElementById("packages").value;
            if(val === 'basic'){
                document.getElementById("price").value = '2,500';
                document.getElementById("instructor").value = 'James cullin';
            }else if(val === 'standard'){
                document.getElementById("price").value = '5,000';
                document.getElementById("instructor").value = 'Brad Pit';
            }else if(val === 'premium'){
                document.getElementById("price").value = '10,000';
                document.getElementById("instructor").value = 'Geetha Ramesh';
            }
            else{
                document.getElementById("price").value = '';
                document.getElementById("instructor").value = '';
            }
        }
        
    </script>
    <script src="register/vendor/jquery/jquery.min.js"></script>
    <script src="register/vendor/select2/select2.min.js"></script>
    <script src="register/vendor/datepicker/moment.min.js"></script>
    <script src="register/vendor/datepicker/daterangepicker.js"></script>
<script src="register/js/global.js"></script>

</body>

</html>

