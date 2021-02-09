<footer class="site-footer" id="siteFooter">
    <#if settings.Aplayer?? && settings.Aplayer != ''>
        <meting-js
                server="netease"
                type="playlist"
                fixed="true"
                id="${settings.Aplayer}">
        </meting-js>
    </#if>

    <div class="inner">
        <#-- 社交信息 begin -->
        <div class="offsite-links">
            <#if settings.sina??>
                <a href="${settings.sina!}" class="circle" target="_blank" rel="noopener">
                    <#include "icon/weibo.ftl">
                </a>
            </#if>
            <#if settings.qq??>
                <a href="//wpa.qq.com/msgrd?v=3&uin=${settings.qq!}&site=qq&menu=yes" class="circle" target="_blank" rel="noopener" title="QQ Chat">
                    <#include "icon/qq.ftl">
                </a>
            </#if>
            <#if settings.telegram??>
                <a href="https://t.me/${settings.telegram!}" class="circle" target="_blank" rel="noopener" title="Telegram Chat">
                    <#include "icon/telegram.ftl">
                </a>
            </#if>
            <#if settings.twitter??>
                <a href="${settings.twitter!}" class="circle" target="_blank" rel="noopener" title="Twitter">
                    <#include "icon/twitter.ftl">
                </a>
            </#if>
            <#if settings.github??>
                <a href="${settings.github!}" class="circle" target="_blank" rel="noopener" title="Github">
                    <#include "icon/github.ftl">
                </a>
            </#if>
            <#if settings.zhihu??>
                <a href="${settings.zhihu!}" class="circle" target="_blank" rel="noopener" title="知乎">
                    <#include "icon/zhihu.ftl">
                </a>
            </#if>
            <#if settings.mail??>
                <a href="mailto:${settings.mail!}" class="circle" target="_blank" rel="noopener" title="邮箱">
                    <#include "icon/mail.ftl">
                </a>
            </#if>
             <#if settings.rss!true>
                <a href="${atom_url!}" class="circle" target="_blank" rel="noopener" title="RSS">
                    <#include "icon/rss.ftl">
                </a>
            </#if>
        </div>

        <#-- 社交信息 end -->

        <div class="site-info">
            <#if settings.PublicSecurityRecord??>
                <div style="display: inline-block;background-image: url(${theme_base!}/assets/images/beian.png);background-repeat: no-repeat;background-position: top left;background-size: contain;padding-left: 20px;">
                    <a href="http://www.beian.gov.cn" target="_blank">${settings.PublicSecurityRecord!}</a>
                </div><br>
            </#if>
            <@global.footer />
            <p>Copyright &copy; ${.now?string('yyyy')}
                <a href="${blog_url!}">⎛⎝${blog_title!}⎠⎞<#if settings.SiteSubtitle??> - ${settings.SiteSubtitle!}</#if></a>
            </p>
            <!-- 请尊重作者，请务必保留版权 -->
            <p>Powered by <a target="_blank" href="http://halo.run">Halo</a> •
                Theme by <a target="_blank" href="https://github.com/GalaxySuze/gridea-theme-subtle-galaxy">Subtle Galaxy</a> •
                REFERENCE FROM <a href="https://github.com/hshanx/halo-theme-hshan.git">寒山</a></p>
            <#if settings.TimeStatistics??>
                <p>本站运行：<span id="span_dt_dt"></span></p>
            </#if>
            <#if settings.visit_statistics!false>
                <p>
                    <span id="busuanzi_container_site_uv">感谢<span id="busuanzi_value_site_uv"></span>位小伙伴的</span>
                    <span id="busuanzi_container_site_pv"><span id="busuanzi_value_site_pv"></span>次访问</span>
                </p>
            </#if>
            <#if settings.Icp??>
                <a href="http://beian.miit.gov.cn" target="_blank">${settings.Icp!}</a><br>
            </#if>
              
            <script>
			    var _czc = _czc || [];  //声明_czc对象
			</script>
            <script type="text/javascript" src="https://s4.cnzz.com/z_stat.php?id=1278835601&web_id=1278835601"></script>
            |
            <a href="https://console.upyun.com/register/?invite=rkwHIdY_L" target="_blank" data-pjax-state=""><img src="https://yingserver.cn/upload/2020/04/upyun_logo5-6a1e7e0690844288ba3425c6c1ecbc02.png" style="width:48px"></a>
            |
            <a href="https://travellings.now.sh/" target="blank" title="开往-友链接力"><img src="https://cdn.jsdelivr.net/gh/volfclub/travellings/assets/logo.gif" alt="开往-友链接力" width="80"></a>
            
        </div>
        <a href="#page" class="arrow-up" data-scroll><span class="screen-reader-text">Back to the top</span></a>
    </div>
</footer>
<#include "search-box.ftl"/>
