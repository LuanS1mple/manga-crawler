/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.luan.manga_crawler.controller;

import jakarta.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import lombok.extern.slf4j.Slf4j;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
/**
 *
 * @author thanh
 */
@Controller
@Slf4j
@RequestMapping("/chapter")
public class MangaController {
    @GetMapping
    String chapter(@RequestParam String chapter, Model model, HttpServletRequest request){
        String url ="https://nettruyen3q.com/read/dao-hai-tac/vn/chapter-"+chapter;
        log.info(url);
        try {
            Document document = Jsoup.connect(url).get();
            Elements elements = document.select("img.lozad");
            List<String> allUrl = new ArrayList<>();
           
            for (Element img : elements) {
                allUrl.add(img.attr("data-src"));
            } for (int i = 0; i < allUrl.size(); i++) {
                log.info(allUrl.get(i));
            }
            model.addAttribute("allImg",allUrl);
            request.setAttribute("currChapter", Integer.parseInt(chapter));
        } catch (IOException ex) {
            log.info("cannot connect");
        }
        return "read";
    }
}
