package org.example.webjsp;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.webjsp.models.User;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "usersServlet", value = "/users-servlet")
public class UsersServlet extends HttpServlet {

    private List<User> users;

    @Override
    public void init() throws ServletException {
        users = new ArrayList<>();
        users.add(new User(1, "Robert", 3));
        users.add(new User(2, "Michael", 4));
        users.add(new User(3, "Daniel", 5));
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setAttribute("usersList", users);
        req.getRequestDispatcher("/users.jsp").forward(req, resp);
    }
}
