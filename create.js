class Auth { 
      constructor(validUsername, validPassword) { 
         this.validUsername = validUsername; 
         this.validPassword = validPassword; 
       } 
       
       login(username, password) { 
         return username === this.validUsername && password === this.validPassword; 
       } 
    } 
      
    document.getElementById('loginForm').addEventListener('submit', function(event) { 
      event.preventDefault(); 
      
      const usernameInput = document.getElementById('username').value; 
      const passwordInput = document.getElementById('password').value; 
      
      const auth = new Auth('falentino', '123'); 
      
      if (auth.login(usernameInput, passwordInput)) { 
        window.location.href = 'dashboard.html'; 
      } else { 
        alert('Incorrect username or password!'); 
        window.location.reload(); // Reloads the login page 
      } 
    });