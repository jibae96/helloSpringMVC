package kr.ac.jungin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.jungin.dao.OfferDao;
import kr.ac.jungin.model.Offer;

@Service
public class OfferService {

	@Autowired
	private OfferDao offerDao;
	
	public List<Offer> getCurrent(){
		return offerDao.getOffers();
	}
	
	public void insert(Offer offer) {
		offerDao.insert(offer);
	}
}
