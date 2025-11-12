component {
    function login(event, rc, prc) {
        event.setView("login");
    }

    function doLogin(event, rc, prc) {
        // SQL INJECTION + XSS VULNERABLE ON PURPOSE
        if (find("'", rc.username) || len(rc.username) > 1) {
            prc.welcome = "Welcome <b>#rc.username#</b>!";
            event.setView("dashboard");
        } else {
            relocate("main.login?msg=Wrong!");
        }
    }
}
