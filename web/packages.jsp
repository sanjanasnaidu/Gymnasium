<%-- 
    Document   : packages.jsp
    Created on : 08-Apr-2020, 7:09:56 PM
    Author     : Harry Poter
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Packages</title>
        <link rel="icon" type="image/png" href="package/images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="package/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="package/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="package/vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="package/vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="package/vendor/perfect-scrollbar/perfect-scrollbar.css">
	<link rel="stylesheet" type="text/css" href="package/css/util.css">
	<link rel="stylesheet" type="text/css" href="package/css/main.css">
        <style>
            .button {
                display: block;
                width: 200px;
                height: 50px;
                background: green ;
                padding: 10px;
                text-align: center;
                border-radius: 5px;
                color: white;
                font-weight: bold;
            }
        </style>
</head>
<body>
    <div class="limiter">
        <div class="container-table100">
        <div class="wrap-table100">
            <center><h1>PACKAGES</h1></center><br><br>
        <div class="table100 ver1">
        <div class="table100-firstcol">
            <table>
                <thead>
                    <tr class="row100 head">
                    <th class="cell100 column1">Plans</th>
                </tr>
                </thead>
                <tbody>
                    <tr class="row100 head">
                    <td class="cell100 column1">Basic</td>
                    </tr>
                    <tr class="row100 body">
                    <td class="cell100 column1">Standard</td>
                </tr>
                <tr class="row100 body">
                    <td class="cell100 column1">Premium</td>
                </tr>
            </tbody>
        </table>
        </div>
        <div class="wrap-table100-nextcols js-pscroll">
            <div class="table100-nextcols">
                <table>
                    <thead>
                        <tr class="row100 head">
                            <th class="cell100 column2">Price</th>
                            <th class="cell100 column3">Package</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="row100 head">
                            <td class="cell100 column2">Rs 2,500/- per month(s)</td>
                            <td class="cell100 column3">Includes gym, aerobics, yoga </td>
                        </tr>
                        <tr class="row100 body">
                            <td class="cell100 column2">Rs 5,000/- per month(s))</td>
                            <td class="cell100 column3">Includes gym, yoga, aerobics, zumba </td>
                        </tr>
                        <tr class="row100 body">
                            <td class="cell100 column2">Rs 10,000/- per month(s)</td>
                            <td class="cell100 column3">Includes gym, yoga, aerobics, cross-,zumba </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            </div>
            
        </div>
        </div>
            <a href="register.jsp" class="button">REGISTER HERE!!!</a>
        </div>
        
        </div>
    
        <script src="package/vendor/bootstrap/js/popper.js"></script>
            <script src="package/vendor/bootstrap/js/bootstrap.min.js"></script>
            <script src="package/vendor/select2/select2.min.js"></script>
            <script src="package/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
            <script>
                    $('.js-pscroll').each(function(){
                            var ps = new PerfectScrollbar(this);

                            $(window).on('resize', function(){
                                    ps.update();
                            })

                            $(this).on('ps-x-reach-start', function(){
                                    $(this).parent().find('.table100-firstcol').removeClass('shadow-table100-firstcol');
                            });

                            $(this).on('ps-scroll-x', function(){
                                    $(this).parent().find('.table100-firstcol').addClass('shadow-table100-firstcol');
                            });

                    });




            </script>
    <!--===============================================================================================-->
            <script src="js/main.js"></script>

</body>
</html>