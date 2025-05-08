package com.melnyk.demo1;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class IndexController {

    @GetMapping("/")
    public String index(Model model) {
        var homePageInfo = new Page("Home", "It is the home page");
        var films = List.of("Inception", "The Matrix", "Interstellar", "The Godfather", "Pulp Fiction");
        model.addAttribute("name", "John");
        model.addAttribute("pageInfo", homePageInfo);
        model.addAttribute("films", films);
        return "index";
    }



}

