<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity "sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">


<script>
    function submitForm() { 
   // **NOTE** set form values first
   document.getElementById('myForm').submit();
}
window.onload = submitForm;
</script>
    </head>
    <body>
        <?php
        if((isset($_GET['Amount'])) && (isset($_GET['Phone'])) && (isset($_GET['Email'])) && (isset($_GET['Orderid'])) && (isset($_GET['description'])) && (isset($_GET['customername']))){
        // $merchantid = "102";
        // $secret = "zWHjBp2AlttNu1sK";
        
    //       Merchant ID: 4034

    // Secured Key: fjfUd4h5o3ypU_P4vm19
    
    
    $curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://ipguat.apps.net.pk/Ecommerce/api/Transaction/GetAccessToken?MERCHANT_ID=6162&SECURED_KEY=n2hTuFE1_PMDsJCC9ALb',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'GET',
));

$contents = curl_exec($curl);

curl_close($curl);
///echo $response;

        $merchantid = "6162";
        $secret = "n2hTuFE1_PMDsJCC9ALb";
       
$token_info = json_decode($contents);



        $amount = $_GET['Amount'];
        $phone = $_GET['Phone'];
        $email = $_GET['Email'];
        $orderid = $_GET['Orderid'];
        $description = $_GET['description'];
        $customername = $_GET['customername'];
        $date = date("Y-m-d");
        
        if (isset($token_info->ACCESS_TOKEN)) {
             $token= $token_info->ACCESS_TOKEN;
        }
        //echo $token;
        ?>
        <div class="container" style=" visibility: hidden;" >
            <div class ="alert alert-success"> Reload page to get new token</div>
            <div class="card">
                <div class="card-body">
                    <div class="card-header">
                        PayFasy Checkout
                    </div>
                    <form id="myForm" method="post" action = "https://ipguat.apps.net.pk/Ecommerce/api/Transaction/PostTransaction"> 
                        <div hidden class="form-group">
                            <label>Merchant ID</label>
                            <INPUT hidden class="form-control" TYPE="TEXT" NAME="MERCHANT_ID"  VALUE="<?php echo $merchantid; ?>"> 
                        </div>

                        <div hidden class="form-group">
                            <label>Merchant Name</label>
                            <INPUT hidden class="form-control" TYPE="TEXT" NAME="MERCHANT_NAME" value='sha'> 
                        </div>
                        <div hidden class="form-group">
                            <label>Token</label>
                            <INPUT hidden class="form-control"  TYPE="TEXT" NAME="TOKEN" VALUE="<?php echo $token; ?>"> 
                        </div>
                        <div hidden class="form-group">
                            <label>Proccode</label>
                            <INPUT hidden class="form-control" TYPE="TEXT" NAME="PROCCODE" VALUE="00"> 
                        </div>
                        <div  class="form-group">
                            <label>Amount</label>
                            <INPUT  class="form-control" TYPE="TEXT" NAME="TXNAMT" VALUE = "<?php echo $amount; ?>"> 
                        </div>
                        <div class="form-group">
                            <label>Customer Mobile Number</label>
                            <INPUT  class="form-control" TYPE="TEXT" NAME="CUSTOMER_MOBILE_NO" VALUE="<?php echo $phone; ?>"> 
                        </div>
                        <div class="form-group">
                            <label>Customer Email</label>
                            <INPUT class="form-control"  TYPE="TEXT" NAME="CUSTOMER_EMAIL_ADDRESS" VALUE="<?php echo $email; ?>"> 
                        </div>
                        <div class="form-group">
                            <label>Signature</label>
                            <INPUT  class="form-control" TYPE="TEXT" NAME="SIGNATURE" VALUE="<?php echo $customername; ?>"> 
                        </div>
                        <div hidden class="form-group">
                            <label>Version</label>
                            <INPUT hidden class="form-control" TYPE="TEXT" NAME="VERSION" VALUE="MY_VER_1.0"> 
                        </div>
                        <div class="form-group">
                            <label>Transaction Description</label>
                            <INPUT  class="form-control" TYPE="TEXT" NAME="TXNDESC" VALUE="<?php echo $description; ?>"> 
                        </div>
                        <div hidden class="form-group">
                            <label>Success CallBack URL</label>
                            <INPUT hidden class="form-control" TYPE="TEXT" NAME="SUCCESS_URL" VALUE="http://localhost/stdnt/public_html/?res=Success"> 
                        </div>
                        <div hidden class="form-group">
                            <label>Failure CallBack URL</label>
                            <INPUT hidden class="form-control" TYPE="TEXT" NAME="FAILURE_URL" VALUE="http://localhost/stdnt/public_html/?res=Unsuccess"> 
                        </div>
                        <div hidden class="form-group">
                            <label>Basket ID/Order ID</label>
                            <INPUT hidden class="form-control"  TYPE="TEXT" NAME="BASKET_ID" VALUE="<?php echo $orderid; ?>"> 
                        </div>
                        <div hidden class="form-group">
                            <label>Order Date</label>
                            <INPUT hidden class="form-control" TYPE="TEXT" NAME="ORDER_DATE" VALUE="<?php echo $date; ?>"> 
                        </div>
                        <div hidden class="form-group">
                            <label>Checkout URL</label>
                            <INPUT hidden class="form-control" TYPE="TEXT" NAME="CHECKOUT_URL" VALUE="http://merchant-site.com/order/backend/confirm"> 
                        </div>
                        <div class="form-group">
                            <INPUT  class="btn btn-primary" TYPE="SUBMIT" value="Confirm Transaction">

                    </form> 
                </div>
            </div>

            <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        </div>
        </div>
        <?php }else { echo "Can not proceed";}?>
              
     
    </body>
</html>
