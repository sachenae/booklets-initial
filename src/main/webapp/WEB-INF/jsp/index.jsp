

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <style><%@include file="/WEB-INF/css/styles.css"%></style>
  
    <title>document</title>
</head>
 <body>
        <div class="bg">

            <div id= "frontpage">
                <p class = "centered"> Welcome to <strong>[ BookLets ]</strong>...</p>
                <p class = "centered_sub">A web book to record your finances</p>
                <button id="login_view_button" class="viewbutton" onclick="getModal()">Login to get started</button>
                <button id="new_user_button" class="viewbutton2" onclick="getInitialForm()">New User</button>
             </div>
            
    
            <div id="id01" class="modal">
  
                    <form class="modal-view animate" action="/main.jsp">
                      
                        <span onclick="closeModal()" class="close" title="Close Modal">&times;</span>
                       
                    
                  
                      <div class="container">
                        <label> <b>Username</b></label>
                        <input type="text" placeholder="Enter Username" required>
                  
                        <label><b>Password</b></label>
                        <input type="password" placeholder="Enter Password"  required>
                          
                        <button type="submit" id="login">Login</button>
                        <label>
                          <input type="checkbox" checked="checked" name="remember"> Remember me
                        </label>
                      </div>
                    </div>
                  </div>
        <script><%@include file="/WEB-INF/js/index.js"%></script>

</body>
</html>