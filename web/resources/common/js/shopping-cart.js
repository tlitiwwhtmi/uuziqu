/**
 * Created by administrator on 17/3/20.
 */

function ShoppingCart(){

    this.resetCart = function(){
        var initCart = {'content':[]};
        this.setCart(initCart);
        return initCart;
    };

    this.updateCart = function (sn, num) {
        var cart = this.getCart();
        for(var i=0;i<cart.content.length;i++){
            var goods = cart.content[i];
            if(goods.sn == sn){
                cart.content[i].num = num;
                this.setCart(cart);
                return;
            }
        }
    };

    this.addToCart = function (sn) {
        var cart = this.getCart();
        for(var i=0;i<cart.content.length;i++){
            var goods = cart.content[i];
            if(goods.sn == sn){
                cart.content[i].num = new Number(goods.num)+1;
                this.setCart(cart);
                return;
            }
        }

        cart.content.push({
            "sn": sn,
            "num": 1
        });
        this.setCart(cart)
    };

    this.deleteFromCart = function(sn){
        var cart =this.getCart();
        for(var i=0;i<cart.content.length;i++){
            var goods = cart.content[i];
            if(goods.sn == sn && goods.num == 1){
                cart.content.splice(i,1);
            }else{
                cart.content[i].num = goods.num - 1;
            }
        }
        this.setCart(cart);
    };

    this.listCart = function () {
        return this.getCart();
    };

    this.setCart = function (cart) {
        this.setCookie("_cart", JSON.stringify(cart), 7);
    }

    this.getCart = function(){
        var cart = this.getCookie("_cart");
        if(!cart){
            cart = this.resetCart();
        }else{
            cart = JSON.parse(cart);
        }
        return cart;
    };

    this.setCookie = function (c_name,value,expiredays) {
        var exdate=new Date()
        exdate.setDate(exdate.getDate()+expiredays);
        document.cookie=c_name+ "=" +escape(value)+
            ((expiredays==null) ? "" : ";expires="+exdate.toGMTString())
    };

    this.getCookie = function(c_name) {
        if (document.cookie.length>0)
        {
            var c_start=document.cookie.indexOf(c_name + "=");
            if (c_start!=-1)
            {
                c_start=c_start + c_name.length+1;
                var c_end=document.cookie.indexOf(";",c_start);
                if (c_end==-1) c_end=document.cookie.length;
                return unescape(document.cookie.substring(c_start,c_end))
            }
        }
        return ""
    }
}
