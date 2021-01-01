package com.model;
import java.util.*;
public class ShoppingCart {
	// 这里Map的键是商品号
    HashMap<Integer,DogsItem> items = null;				
    
    public ShoppingCart() {        // 购物车的构造方法
        items = new HashMap<Integer,DogsItem>();			//商品号和dog..
    }
    // 向购物车中添加商品方法
    public void add(DogsItem goodsItem) {
    	    // 返回添加的商品号 
         int id = goodsItem.getDog().getId();
         // 如果购物车中包含指定的商品，返回该商品并增加数量
        if(items.containsKey(id)) {
        	DogsItem scitem = (DogsItem) items.get(id);
            // 修改该商品的数量
            scitem.setQuantity(scitem.getQuantity()+goodsItem.getQuantity());
        } else {
            // 否则将该商品添加到购物车中
            items.put(id, goodsItem);
        }
    }
    // 从购物车中删除一件商品
    public void remove(Integer id) {
        if(items.containsKey(id)) {
        	DogsItem scitem = (DogsItem) items.get(id);
            scitem.setQuantity(scitem.getQuantity()-1);
            if(scitem.getQuantity() <= 0)
                items.remove(id);
        }
    }
    // 返回购物车中GoodsItem的集合
    public Collection<DogsItem> getItems() {
        return items.values();
    }
    // 计算购物车所有商品价格
    public int getTotal() {
        int amount = 0;
        for(Iterator<DogsItem> i = getItems().iterator(); i.hasNext(); ) {
            DogsItem item = (DogsItem) i.next();
            Dog dog = (Dog) item.getDog();
            amount += item.getQuantity() * dog.getPrice();
        }
        return amount;
    }
    // 清空购物车方法
    public void clear() {
        items.clear();
    }
}

