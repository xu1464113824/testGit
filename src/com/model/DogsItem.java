package com.model;
import java.io.Serializable;
public class DogsItem implements Serializable {
	 private Dog dog;    // 商品信息
     private int quantity;       // 商品数量
     
     public DogsItem(Dog dog) {
         this.dog = dog;
         quantity = 1;
     }
     public DogsItem(Dog dog, int quantity) {
        this.dog = dog;
        this.quantity = quantity;
     }
     // 属性的getter方法和setter方法
     public Dog getDog() {
		return dog;
	   }
     public void setDog(Dog dog) {
		 this.dog = dog;
	 }
	   public int getQuantity() {
		return quantity;
     }
    public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
}

