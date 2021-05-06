package kr.ac.jungin.controller;

import java.util.List;
import java.util.Locale;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ac.jungin.model.Offer;
import kr.ac.jungin.service.OfferService;

@Controller
public class OfferController {
	
	@Autowired
	private OfferService offerService;
	
	@RequestMapping(value = "/offers", method = RequestMethod.GET)
	public String showOffers(Locale locale, Model model) {
		List<Offer> offers = offerService.getCurrent();
		model.addAttribute("offers", offers);
		
		return "offers";
	}
	
	@RequestMapping(value = "/createoffer", method = RequestMethod.GET)
	public String createOffer(Locale locale, Model model) {
		
		model.addAttribute("offer", new Offer());
		
		return "createoffer";
	}
	
	@RequestMapping(value = "/docreate")
	public String docreate(Model model, @Valid Offer offer, BindingResult result) {
		System.out.println("here");
		if(result.hasErrors()) {
			System.out.println("=== Web Form data does not validated ===");
			List<ObjectError> errors = result.getAllErrors();
			
			for(ObjectError error : errors) {
				System.out.println(error.getDefaultMessage());
			}
			
			return "createoffer";
		}
		
		offerService.insert(offer);
		
		return "offercreated";
	}
	
}
