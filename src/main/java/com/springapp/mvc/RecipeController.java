package com.springapp.mvc;

import org.json.JSONException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

/**
 * Created by janco on 26.11.2015.
 */
@Controller
public class RecipeController {
    @Autowired
    private RecipeRepository recipeRepository;

    @RequestMapping(value = "/", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
    public String listRecipe(ModelMap model) {
        model.addAttribute("recipe", new RecipeEntity());
        model.addAttribute("recipes", recipeRepository.findAll());
        return "recipes";
    }

    @ResponseBody
    @RequestMapping(value = "/api/tactics/{level}", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
    public Object[] listRecipeJson(ModelMap model, @PathVariable("level") String ID) throws JSONException {
        return recipeRepository.findById(ID).toArray();
    }


}
