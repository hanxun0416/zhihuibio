<section id="header-mo">
			<div class="mot mo">
				<a href="" class="molo"><img src="${theme_base!}/source/images/6afd7aa686c14452a85d2e620caf041a.png"></a>
				<img src="${theme_base!}/source/images/bg37.png" class="momenuicon openicon">
				<img src="${theme_base!}/source/images/bg36.png" class="momenuicon cloesicon">
			</div>
			<div class="moxl">
				<div class="moxl_box">
                      <@menuTag method="tree">
                        <#list menus as menu>
                            <#if menu.children?? && menu.children?size gt 0>
                                <#--带子菜单的样式-->
                                <div class="moxl_xun">
                                 <div class="moxl_xun_icon">
                                    <img src="${theme_base!}/source/images/bg39.png" class="moxl_xun_img1">
                                    <img src="${theme_base!}/source/images/bg40.png" class="moxl_xun_img2">
                                </div>
						  <a  class="moxl_xun_title">${menu.name!}</a>
                                <#if menu.children?? && menu.children?size gt 0>
						<div class="moxl_erji">
                           <#list menu.children as child>
						<a href="${child.url!}" class="moxl_xun_title">${child.name!}</a>
							   </#list>
						</div>
                        <div class="clear"></div>
                                </#if>
                            </div>
                            <#else>
                                <#--不带子菜单的样式-->
                        <div class="moxl_xun">
						   <a href="${menu.url!}" class="moxl_xun_title">${menu.name!}</a>
						    <div class="clear"></div>
					    </div>
                              
                            </#if>
                        </#list>
                    </@menuTag>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
			</div>
		</section>