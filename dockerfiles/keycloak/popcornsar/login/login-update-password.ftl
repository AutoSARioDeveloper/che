<#include "header.ftl">
<body class="page-template-default page page-id-809 page-child parent-pageid-11 wpb-js-composer js-comp-ver-5.5.5 vc_responsive"
      itemscope="itemscope" itemtype="https://schema.org/WebPage" data-adminbar="">


<!-- Target for scroll anchors to achieve native browser bahaviour + possible enhancements like smooth scrolling -->
<div id="top-of-page"></div>

<div id="mk-boxed-layout">

    <div id="mk-theme-container">


        <header data-height='90'
                data-sticky-height='55'
                data-responsive-height='90'
                data-transparent-skin=''
                data-header-style='1'
                data-sticky-style='fixed'
                data-sticky-offset='header' id="mk-header-1"
                class="mk-header header-style-1 header-align-left  toolbar-false menu-hover-2 sticky-style-fixed mk-background-stretch full-header "
                role="banner" itemscope="itemscope" itemtype="https://schema.org/WPHeader">
            <div class="mk-header-holder">
                <div class="mk-header-inner add-header-height">
                    <div class="mk-header-bg "></div>
                    <div class="mk-header-nav-container one-row-style menu-hover-style-2" role="navigation"
                         itemscope="itemscope" itemtype="https://schema.org/SiteNavigationElement">
                 </div>

                    <div class=" header-logo fit-logo-img add-header-height logo-is-responsive logo-has-sticky">
                        <a href="${url.loginUrl}" title="POPCORNSAR">
                            <img class="mk-desktop-logo dark-logo "
                                 title="PopcornSAR"
                                 alt="PopcornSAR"
                                 src="${url.resourcesPath}/wp-content/uploads/2019/03/logo01.png"/>

                            <img class="mk-desktop-logo light-logo "
                                 title="PopcornSAR"
                                 alt="PopcornSAR"
                                 src="${url.resourcesPath}/wp-content/uploads/2019/03/logo01.png"/>

                            <img class="mk-resposnive-logo "
                                 title="PopcornSAR"
                                 alt="PopcornSAR"
                                 src="${url.resourcesPath}/wp-content/uploads/2019/03/logo01.png"/>

                            <img class="mk-sticky-logo "
                                 title="PopcornSAR"
                                 alt="PopcornSAR"
                                 src="${url.resourcesPath}/wp-content/uploads/2019/03/logo01.png"/>
                        </a>
                    </div>
                    <div class="mk-header-right">
                    </div>
                </div>
            </div>
            <div class="mk-header-padding-wrapper"></div>
        </header>

        <div id="theme-page" class="master-holder  clearfix" itemscope=&quot;itemscope&quot;
             itemtype=&quot;https://schema.org/Blog&quot;>
            <div class="master-holder-bg-holder">
                <div id="theme-page-bg" class="master-holder-bg js-el"></div>
            </div>
            <div class="mk-main-wrapper-holder">
                <div id="mk-page-id-809" class="theme-page-wrapper mk-main-wrapper mk-grid full-layout no-padding">
                    <div class="theme-content no-padding" itemprop="mainEntityOfPage">

                        <div class="mk-page-section-wrapper" data-mk-full-width="true" data-mk-full-width-init="true"
                             data-mk-stretch-content="true">
                            <div id="1"
                                 class="mk-page-section self-hosted   full_layout full-width-2 js-el js-master-row    "
                                 data-intro-effect="false">
                                <div class="mk-page-section-inner">
                                    <div class="mk-video-color-mask"></div>
                                </div>
                                <div class="page-section-content vc_row-fluid mk-grid ">
                                    <div class="mk-padding-wrapper wpb_row">
                                        <div class="vc_col-sm-3 wpb_column column_container   _ height-full">
                                        </div>
                                        <div class="vc_col-sm-6 wpb_column column_container   _ height-full">
                                            <div id="padding-5" class="mk-padding-divider   clearfix"></div>
                                            <div class=" vc_custom_1553501797778">
                                                <div id="text-block-6" class="mk-text-block   ">
                                                    <div class="sun_title00">Log in</div>
                                                    <div class="clearboth"></div>
                                                </div>
                                            </div>
                                            <div id="divider-7" class="mk-divider    custom-width center thin_solid  ">
                                                <div class="divider-inner"></div>
                                            </div>
                                            <div class="clearboth"></div>
                                            <div id="padding-8" class="mk-padding-divider   clearfix"></div>
                                            <div class="content-area" id="tab-content">
                                                        <#if message?has_content>
                                                            <div class="alert alert-${message.type}">
                                                                <#if message.type=='success' ><span
                                                                        class="pficon pficon-ok"></span></#if>
                                                                <#if message.type=='error' >
                                                                    <span class="pficon pficon-error-octagon"></span>
                                                                    <span class="pficon pficon-error-exclamation"></span>
                                                                </#if>
                                                                ${message.summary}
                                                            </div>
                                                        </#if>
                                            </div>
                                            <div class="wpb_row vc_inner vc_row vc_row-fluid    attched-false   ">
                                                <div class="wpb_column vc_column_container vc_col-sm-8 vc_col-has-fill">
                                                    <div class="vc_column-inner vc_custom_1553503740950">
                                                        <div class="wpb_wrapper">
                                                            <div class=" vc_custom_1553525678944">
                                                                <form id="kc-passwd-update-form"
                                                                      class="${properties.kcFormClass!}"
                                                                      action="${url.loginAction}" method="post">
                                                                    <div id="text-block-9" class="mk-text-block   ">
                                                                        <div class=""><input class="input318"
                                                                                             maxlength="12"
                                                                                             id="password-new"
                                                                                             name="password-new"
                                                                                             type="password"
                                                                                             autocomplete="off"
                                                                                             placeholder="${msg("passwordNew")}"/>
                                                                        </div>
                                                                        <div class="clearboth"></div>
                                                                    </div>
                                                            </div>
                                                            <div class=" vc_custom_1553525673376">
                                                                <div id="text-block-10" class="mk-text-block   ">
                                                                    <div class=""><input class="input318" maxlength="12"
                                                                                         id="password-confirm"
                                                                                         name="password-confirm"
                                                                                         type="password"
                                                                                         autocomplete="off"
                                                                                         placeholder="${msg("passwordConfirm")}"/>
                                                                    </div>
                                                                    <div class="clearboth"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="wpb_column vc_column_container vc_col-sm-4 vc_col-has-fill">
                                                    <div class="vc_column-inner vc_custom_1553503756723">
                                                        <div class="wpb_wrapper">
                                                            <div class=" vc_custom_1553503037514">

                                                                <div id="text-block-11" class="mk-text-block   ">
                                                                    <p>
                                                                        <button id="loginBtn"
                                                                                class="hcbtn_xxlarge type1" name="login"
                                                                                type="submit">${msg("doSubmit")}</button>
                                                                    </p>
                                                                    <div class="clearboth"></div>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            </form>

                                            <div id="padding-15" class="mk-padding-divider   clearfix"></div>

                                        </div>

                                        <div class="vc_col-sm-3 wpb_column column_container   _ height-full">
                                        </div>
                                    </div>
                                    <div class="clearboth"></div>
                                </div>
                                <div class="clearboth"></div>
                            </div>
                        </div>
                        <div class="vc_row-full-width vc_clearfix"></div>
                        <div class="mk-page-section-wrapper" data-mk-full-width="true" data-mk-full-width-init="true"
                             data-mk-stretch-content="true">
                            <div id="1"
                                 class="mk-page-section self-hosted   full_layout full-width-17 js-el js-master-row hidden-sm   "
                                 data-intro-effect="false">
                                <div class="mk-page-section-inner">
                                    <div class="mk-video-color-mask"></div>
                                </div>


                                <div class="page-section-content vc_row-fluid mk-grid ">
                                    <div class="mk-padding-wrapper wpb_row">
                                        <div class="vc_col-sm-12 wpb_column column_container vc_custom_1532016701430  _ height-full">

                                            <div id="padding-19" class="mk-padding-divider   clearfix"></div>

                                        </div>
                                    </div>
                                    <div class="clearboth"></div>
                                </div>
                                <div class="clearboth"></div>
                            </div>
                        </div>
                        <div class="vc_row-full-width vc_clearfix"></div>
                        <div class="clearboth"></div>
                        <div class="clearboth"></div>
                    </div>
                    <div class="clearboth"></div>
                </div>
            </div>
        </div>

<#include "footer.ftl">