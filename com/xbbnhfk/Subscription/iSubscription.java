package com.xbbnhfk.Subscription;

import java.util.ArrayList;

import com.xbbnhfk.DeliveryStatus.CourierBean;

public interface iSubscription {
	public void subscribe(SubscriptionBean subscriptionBean);
	public  ArrayList<SubscriptionBean> viewSubscriptionIndi(String email);
	
}
