<#--  <div class="page-top animated fadeInDown">
    <div class="nav">
        <@menuTag method="list">
            <#list menus?sort_by('priority') as menu>
                <li>
                    <a href="${menu.url!}" target="${menu.target!}">${menu.name!} </a>
                </li>
            </#list>
        </@menuTag>
    </div>
    <div class="information">
        <div class="back_btn">
            <li>
                <a onclick="window.history.go(-1)" style="display: none" class="fa fa-chevron-left"></a>
            </li>
        </div>
        <div class="avatar">
            <img src="${settings.icon!'${user.avatar!}'}" />
        </div>
    </div>
</div>  -->


<header id="header" class="pc">

			<div class="btm-header container">
				<div class="header-logo fl">
					<a href="${blog_url!}" rel="home">
                <#if (settings.Light_Logo?? && settings.Light_Logo!='') ||( settings.Dark_Logo?? && settings.Dark_Logo!='')>
                    <img  src="${settings.Dark_Logo!}" alt="${blog_title!}" data-src="${settings.Dark_Logo!}"
                         data-nclazyload="true">
                    <img src="${settings.Light_Logo!}" alt="${blog_title!}" data-src="${settings.Light_Logo!}"
                         data-nclazyload="true" data-was-processed="true">
                <#else>
                    ${blog_title!}
                </#if>
            </a>
				</div>
				<div class="contact fr hidden-xs">
					<i class="fa fa-volume-control-phone fa4">
					</i>
					<p>
						服务热线：
						<a href="http://demo.zhihuibio.com/#" &#8203;="">400-88888888</a>
					</p>
				</div>
			</div>
			<div class="header-nav">
				<div class="container">
					<ul id="menu-header" class="header-menu-con">

                      <@menuTag method="tree">
                        <#list menus as menu>
                            <#if menu.children?? && menu.children?size gt 0>
                                <#--带子菜单的样式-->
                                <li class=" menu-item menu-item-type-taxonomy menu-item-object-products"><a href="${menu.url!}">
                               ${menu.name!}</a>
                                <#if menu.children?? && menu.children?size gt 0>
                                    <ul class="sub-menu">
                                        <#list menu.children as child>
                                            <li class="menu-item menu-item-type-taxonomy menu-item-object-products"><a href="${child.url!}">${child.name!}</a></li>
                                        </#list>
                                    </ul>
                                </#if>
                            </li>
                            <#else>
                                <#--不带子菜单的样式-->
                                <li class="menu-item menu-item-type-taxonomy menu-item-object-products "><a href="${menu.url!}">${menu.name!}</a></li>
                            </#if>
                        </#list>
                    </@menuTag>
					</ul>
				</div>
			</div>
		</header>
			<#--  <li class="menu-item menu-item-type-taxonomy menu-item-object-products current-menu-item">
							<a href="http://demo.zhihuibio.com/" &#8203;="">
								首页
							</a>
						</li>
						<li class="menu-item menu-item-type-taxonomy menu-item-object-products ">
							<a href="http://demo.zhihuibio.com/procenter" &#8203;="">
								产品中心
							</a>
						</li>
						<li class="menu-item menu-item-type-taxonomy menu-item-object-products ">
							<a href="http://demo.zhihuibio.com/#" &#8203;="">
								关于我们
							</a>
							<ul class="sub-menu" style="display: none;"><span class="arr_t"></span><span class="arr_t"></span>
								<li class="menu-item menu-item-type-taxonomy menu-item-object-products">
									<a href="http://demo.zhihuibio.com/article/corpmemo" &#8203;="">
										企业简介
									</a>
								</li>
								<li class="menu-item menu-item-type-taxonomy menu-item-object-products">
									<a href="http://demo.zhihuibio.com/article/development" &#8203;="">
										发展理念
									</a>
								</li>
							</ul>
						</li>	  -->