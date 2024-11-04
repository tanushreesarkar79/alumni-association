<?php
    include './navigationbar.php'; 
    session_start();
    if(!(isset($_SESSION['logged_in']))){
        header("Location: alumnilogin.php");  
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="./assets/css/stylesheetalumni.css" />
</head>
<body>
    <div class="alumnimain">
        <div class="head">
           <b> ABOUT US </b>
        </div>
        <div class="subheading">
            <b>VISION</b>
        </div>
        <div class="content">
        To establish a robust, globally connected alumni community that exemplifies the values and achievements of Pondicherry University.<br>
        </div>
        <div class="subheading">
            <b>MISSION</b>
        </div>
        <div class="content">
        To build a thriving alumni network, promote student-alumni engagement, and provide avenues for interaction that benefit both alumni and the Pondicherry University community.
        </div><div class="subheading">
            <b>LETTER FROM ALUMNI COUNCIL</b>
        </div>
        <div class="content">
            <p>
            Dear Alumni,
            <br><br>
            Warm greetings from your alma mater!
            <br><br>
            The impact of alumni on an institution's legacy is invaluable. Across the globe, the most renowned universities are testament to the vital contributions made by their alumni communities. You, too, are an essential ambassador of Pondicherry University, representing our values and achievements in the broader world. We hope you are thriving, succeeding in your personal and professional life, and continuing to make us proud.
             <br><br>
             Our Vice-Chancellor often refers to our alumni as “our torch-bearers and ambassadors.” This sentiment captures the importance of your role in embodying and advancing the values of Pondicherry University. The Alumni Council is dedicated to serving this remarkable community, guided by the spirit of "for the alumni, by the alumni, and through the alumni." We are deeply grateful for your continued support and encouragement. We also welcome your thoughts and feedback as we work together to reach new heights.
            <br><br>
            We encourage you to participate actively in our Alumni Office and Chapter activities. These events present valuable opportunities for professional development, knowledge sharing, and networking with fellow alumni.
            <br><br>
            Thank you for visiting our alumni page. We hope you will return often to stay updated on news and events from the university and among our alumni network. We warmly invite you to connect, collaborate, and explore the opportunities offered by our alumni community.
            <br><br>
            With best wishes,
            <br><br>
            Director. <br>
            Alumni Association. <br>
            Pondicherry University. <br>
        
            </p>
        </div>
</div>
</body>
</html>