package com.cognizant.truyum.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cognizant.truyum.service.CartService;

@Controller
public class CartController {
    
    @Autowired
    CartService cartService;

    private static final Logger LOGGER = LoggerFactory.getLogger(MenuItemController.class);
    
    @GetMapping("/add-to-cart")
    public String addToCart(@RequestParam long menuItemId, ModelMap model) {
        LOGGER.info("Start - addToCart");
        cartService.addCartItem(1, menuItemId);
        model.addAttribute("addCartStatus", true);
        
        LOGGER.info("End - addToCart");
        return "redirect:/show-menu-list-customer";
    }
}
