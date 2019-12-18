<#include "header.ftl">
        <section id="join" class="bg-on navbar-fixed-top"></section>
        <div class="container" id="login_page">
            <div class="panel login-panel test">
                <div class="test-heading">
                    <div class="logo">
                        <img src="${url.resourcesPath}/img/login-logo.png">
                    </div>
                    <#--<h3 class="panel-title">${msg("formTitle")}</h3>-->
                </div>
                <div class="content-area" id="tab-content">
                            <#if message?has_content>
                                <div class="alert alert-${message.type}">
                                    <#if message.type=='success' ><span class="pficon pficon-ok"></span></#if>
                                    <#if message.type=='error' >
                                        <span class="pficon pficon-error-octagon"></span>
                                        <span class="pficon pficon-error-exclamation"></span>
                                    </#if>
                                    ${message.summary}
                                </div>
                            </#if>
                </div>
                <div class="panel-body">
                    <form id="kc-register-form" class="${properties.kcFormClass!}" action="${url.registrationAction}" method="post">
                        <fieldset>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-envelope "></i></span>
                                <#--<div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('email',properties.kcFormGroupErrorClass!)}">-->
                                <#--<div class="${properties.kcInputWrapperClass!}">-->
                                <input type="text" id="email" class="form-control" name="email" value="${(register.formData.email!'')}" placeholder=${msg("email")} />
                            </div>

                            <#if !realm.registrationEmailAsUsername>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user "></i></span>
                                    <#--<div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('username',properties.kcFormGroupErrorClass!)}">-->
                                    <#--<div class="${properties.kcInputWrapperClass!}">-->
                                    <input type="text" id="username" class="form-control" name="username" value="${(register.formData.username!'')}" placeholder="${msg("username")}" />
                                </div>
                            </#if>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user "></i></span>
                               <#-- <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('firstName',properties.kcFormGroupErrorClass!)}">-->
                                    <#--<div class="${properties.kcInputWrapperClass!}">-->
                                <input type="text" id="firstName" class="form-control" name="firstName" value="${(register.formData.firstName!'')}" placeholder="${msg("firstName")}" />
                            </div>

                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user "></i></span>
                                <#--<div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('lastName',properties.kcFormGroupErrorClass!)}">-->
                                    <#--<div class="${properties.kcInputWrapperClass!}">-->
                                <input type="text" id="lastName" class="form-control" name="lastName" value="${(register.formData.lastName!'')}" placeholder="${msg("lastName")}" />
                            </div>


                            <#if passwordRequired>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock "></i></span>
                                    <#--<div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('password',properties.kcFormGroupErrorClass!)}">-->
                                        <#--<div class="${properties.kcInputWrapperClass!}">-->
                                    <input type="password" id="password" class="form-control" name="password" placeholder="${msg("password")}" />
                                </div>

                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-ok-sign"></i></span>
                                    <#--<div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('password-confirm',properties.kcFormGroupErrorClass!)}">-->
                                        <#--<div class="${properties.kcInputWrapperClass!}">-->
                                    <input type="password" id="password-confirm" class="form-control" name="password-confirm" placeholder="${msg("passwordConfirm")}" />
                                </div>
                            </#if>
                          
                                
                            <div class="input-group">
                              <#--
                              <div class="${properties.kcLabelWrapperClass!}">
                                <label for="user.attributes.mobile" class="${properties.kcLabelClass!}">Mobile number</label>
                              </div>-->
                              <span class="input-group-addon"><i class="glyphicon glyphicon-ok-sign"></i></span>
                                <input type="text" id="user.attributes.company" name="user.attributes.company" class="form-control" placeholder="${msg("company")}"/>
                            </div>


                            <#if recaptchaRequired??>
                                <div class="form-group">
                                    <div class="${properties.kcInputWrapperClass!}">
                                        <div class="g-recaptcha" data-size="compact" data-sitekey="${recaptchaSiteKey}"></div>
                                    </div>
                                </div>
                            </#if>
                            <br>
                            <div class="${properties.kcFormGroupClass!}">
                                <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                                    <#--<div class="${properties.kcFormOptionsWrapperClass!}">-->
                                    <div class="input-group">
                                        <span><a href="${url.loginUrl}">${msg("backToLogin")?no_esc}</a></span>
                                    </div>
                                </div>
                                <br>
                                <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
                                    <input class="btn btn-lg btn-block loginbutton" id="kc-register" type="submit" value="${msg("doRegister")}"/>
                                </div>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
 <#include "footer.ftl">
        <#--<#include "logo.ftl">
        <form id="kc-register-form" class="${properties.kcFormClass!}" action="${url.registrationAction}" method="post">
          <input type="text" readonly value="this is not a login form" style="display: none;">
          <input type="password" readonly value="this is not a login form" style="display: none;">

          <div class="kc-form-title">${msg("formRegister")}</div>

          <#if !realm.registrationEmailAsUsername>
            <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('username',properties.kcFormGroupErrorClass!)}">                
                <div class="${properties.kcInputWrapperClass!}">
                    <input type="text" id="username" class="${properties.kcInputClass!}" name="username" value="${(register.formData.username!'')?html}" placeholder="${msg("username")}" />
                </div>
            </div>
          </#if>
            <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('firstName',properties.kcFormGroupErrorClass!)}">
                <div class="${properties.kcInputWrapperClass!}">
                    <input type="text" id="firstName" class="${properties.kcInputClass!}" name="firstName" value="${(register.formData.firstName!'')?html}" placeholder="${msg("firstName")}" />
                </div>
            </div>

            <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('lastName',properties.kcFormGroupErrorClass!)}">
                <div class="${properties.kcInputWrapperClass!}">
                    <input type="text" id="lastName" class="${properties.kcInputClass!}" name="lastName" value="${(register.formData.lastName!'')?html}" placeholder="${msg("lastName")}" />
                </div>
            </div>

            <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('email',properties.kcFormGroupErrorClass!)}">
                <div class="${properties.kcInputWrapperClass!}">
                    <input type="text" id="email" class="${properties.kcInputClass!}" name="email" value="${(register.formData.email!'')?html}" placeholder=${msg("email")} />
                </div>
            </div>

            <#if passwordRequired>
            <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('password',properties.kcFormGroupErrorClass!)}">
                <div class="${properties.kcInputWrapperClass!}">
                    <input type="password" id="password" class="${properties.kcInputClass!}" name="password" placeholder="${msg("password")}" />
                </div>
            </div>

            <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('password-confirm',properties.kcFormGroupErrorClass!)}">
                <div class="${properties.kcInputWrapperClass!}">
                    <input type="password" id="password-confirm" class="${properties.kcInputClass!}" name="password-confirm" placeholder="${msg("passwordConfirm")}" />
                </div>
            </div>
            </#if>

            <#if recaptchaRequired??>
            <div class="form-group">
                <div class="${properties.kcInputWrapperClass!}">
                    <div class="g-recaptcha" data-size="compact" data-sitekey="${recaptchaSiteKey}"></div>
                </div>
            </div>
            </#if>

            <div class="${properties.kcFormGroupClass!}">
                <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                    <div class="${properties.kcFormOptionsWrapperClass!}">
                        <span><a href="${url.loginUrl}">${msg("backToLogin")}</a></span>
                    </div>
                </div>

                <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
                    <input class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}" type="submit" value="${msg("doRegister")}"/>
                </div>
            </div>
        </form>-->
