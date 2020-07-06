<#include "module/macro.ftl">
<@head title="${blog_title!}"/>
<#--  <#include "module/sidebar.ftl">  -->
 <#include "module/page-top.ftl">
 <#include "module/header-mo.ftl">
<section id="main">
    <section id="main-content">
     <#include "module/sidebar_1.ftl">
     <#include "module/pic_center.ftl">
    </section>
    <#--  <div class="autopagerize_page_element">
        <div class="content">
            <#include "module/post_entry.ftl">
            <#if posts.totalPages gt 1>
                <@paginationTag method="index" page="${posts.number}" total="${posts.totalPages}" display="3">
                    <div class="pagination">
                        <ul class="clearfix">
                            <#if pagination.hasPrev>
                                <li class="pre pagbuttons">
                                    <a class="btn" role="navigation" href="${pagination.prevPageFullPath!}">上一页</a>
                                </li>
                            </#if>
                            <#if pagination.hasNext>
                                <li class="next pagbuttons">
                                    <a class="btn" role="navigation" href="${pagination.nextPageFullPath!}">下一页</a>
                                </li>
                            </#if>
                        </ul>
                    </div>
                </@paginationTag>
            </#if>
        </div>
    </div>  -->
</section>
<@footer></@footer>
