package com.melnyk.demo1;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class PageController {
    @GetMapping("/series")
    public String series(Model model) {
        var seriesPageInfo = new Page("Series", "It is the series page");
        var series= List.of("jdjjd", "The Matrix", "Interstellar", "The Godfather");
        model.addAttribute("name", "John");
        model.addAttribute("pageInfo", seriesPageInfo);
        model.addAttribute("series", series);
        return "seriesList";
    }

    @GetMapping("/films")
    public String films(Model model) {
        var homePageInfo = new Page("FILMS", "It is the FILMS page");
        var films = List.of("Inception", "The Matrix", "Interstellar", "The Godfather", "Pulp Fiction");
        model.addAttribute("name", "John");
        model.addAttribute("pageInfo", homePageInfo);
        model.addAttribute("films", films);
        return "filmList";
    }
}
