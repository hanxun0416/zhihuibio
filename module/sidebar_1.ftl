<div id="flexslider">
   <div id="ban">
    <div class="jiantou_box">
     <div class="jiantou" >
      <div class="jiantou_left"></div>
      <div class="jiantou_right"></div>
     </div>
    </div>
    <ul class="ban_bj">
     <#--  <li style="background: url(&quot;/attachment/20200503/9b9f230cd65d4e6180286254f3453627.jpg&quot;) center top / cover no-repeat; left: -1901px;" class=""></li> 
     <li style="background: url(&quot;/attachment/20200503/74778b2bf4974e019c189e574ecdbc56.jpg&quot;) center top / cover no-repeat; left: 0px;" class="on"></li> 
     <li style="background: url(&quot;/attachment/20200503/9b9f230cd65d4e6180286254f3453627.jpg&quot;) center top / cover no-repeat; left: -1901px;" class=""></li>   -->
       <@postTag method="indexCarousel" top="5">
                            <#list indexCarousel as item>
                                <li>
                                        <img src="${(item.thumbnail == '') ?string('/source/images/mycred-alipay-1.png',item.thumbnail)}"
                                             alt="${item.title!}"
                                             title="${item.title!}">
                                </li>

                            </#list>
                        </@postTag>
    </ul>
    <div class="dian">
     <ul class="ul_dian">
     <#--  <li class=""></li><li class=""></li><li class=""></li>  -->
     </ul> 
    </div>
   </div>
  </div>
      <#--  <ul class="bxslider">

                    </ul>  -->