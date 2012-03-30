<?xml version="1.0" encoding="UTF-8" ?>
<object class="kapow.robot.robomaker.robot.type.GenericRobot2" serializationversion="1">
  <property name="roboTechVersion" class="String">8.0</property>
  <property name="startModelObjects" class="kapow.robot.robomaker.state.ModelObjects"/>
  <property name="queryParameters" class="kapow.robot.robomaker.state.ModelObjects">
    <element class="kapow.robot.common.domain.Entity">
      <property name="entityModel" class="kapow.robot.common.domain.EntityModelReference">
        <property name="entityModelName" class="String">blog_input</property>
      </property>
    </element>
  </property>
  <property name="proxyServerConfiguration" class="kapow.util.net.ProxyServerConfiguration" serializationversion="0"/>
  <property name="httpClientType" class="kapow.util.net.httpclient.HttpClientType">
    <property name="enum-name" class="String">APACHE</property>
  </property>
  <property name="privateHTTPCacheEnabled" class="Boolean">true</property>
  <property name="privateHTTPCacheSize" class="Integer">2048</property>
  <property name="comment">
    <null/>
  </property>
  <property name="id" class="Integer">-1</property>
  <property name="transitionGraph" class="Body">
    <blockBeginStep class="BlockBeginStep" id="0"/>
    <steps class="ArrayList">
      <object class="Transition" id="1">
        <property name="name" class="String">start</property>
        <property name="stateProcessor" class="WriteLog">
          <property name="expression" class="String">"blog all"</property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">*</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">0</property>
      </object>
      <object class="End" id="2">
        <property name="id" class="Integer">1</property>
      </object>
      <object class="Transition" id="3">
        <property name="name" class="String">create flag</property>
        <property name="stateProcessor" class="CreateGlobalVariable">
          <property name="variableName" class="String" id="4">flag</property>
          <property name="defaultValue" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">y</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList" id="5"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">2</property>
      </object>
      <object class="Transition" id="6">
        <property name="name" class="String">baidu</property>
        <property name="stateProcessor" class="WriteLog">
          <property name="expression" class="String">"baidu..."</property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">*</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">5</property>
      </object>
      <object class="Transition" id="7">
        <property name="name" class="String">flag=y?</property>
        <property name="stateProcessor" class="TestValue" serializationversion="0">
          <property name="condition" class="Expression" serializationversion="0">
            <property name="text" class="String">flag == "y"</property>
          </property>
        </property>
        <property name="nodeFinderList" idref="5"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">9</property>
      </object>
      <object class="Transition" id="8">
        <property name="name" class="String">flag=baidu_n</property>
        <property name="stateProcessor" class="AssignGlobalVariable">
          <property name="value" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">baidu_n</property>
          </property>
          <property name="variableName" idref="4"/>
        </property>
        <property name="nodeFinderList" idref="5"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">10</property>
      </object>
      <object class="Group" id="9">
        <id class="Integer">23</id>
        <name class="String">logon</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="10"/>
        <steps class="ArrayList">
          <object class="Transition" id="11">
            <property name="name" class="String">Load Page</property>
            <property name="stateProcessor" class="LoadPage2">
              <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
                <property name="numOfAttempts" class="Integer">3</property>
                <property name="timeout" class="Double">80.0</property>
                <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String">numOfAttempts</element>
                  <element class="String">timeout</element>
                </property>
              </property>
              <property name="urlProvider" class="kapow.robot.plugin.common.stepaction.urlprovider2.ValueURLProvider2">
                <property name="URL" class="String">http://hi.baidu.com/baoxian028w</property>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">24</property>
          </object>
          <object class="Transition" id="12">
            <property name="name" class="String">Enter name</property>
            <property name="stateProcessor" class="EnterText">
              <property name="textExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">baoxian028w</property>
              </property>
              <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
                <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
              <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.input</property>
                </property>
                <property name="attributeName" class="String">name</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">username</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">25</property>
          </object>
          <object class="Transition" id="13">
            <property name="name" class="String">Enter Password</property>
            <property name="stateProcessor" class="EnterPassword">
              <property name="passwordExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.PasswordValueStringExpression">
                <property name="value" encryption-type="1" class="String">qjdjQqwJfl6vpg==</property>
              </property>
              <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
                <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
              <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.input</property>
                </property>
                <property name="attributeName" class="String">name</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">password</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">26</property>
          </object>
          <object class="Transition" id="14">
            <property name="name" class="String">Click 登录</property>
            <property name="stateProcessor" class="Click">
              <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
                <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
              <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.div.div.div.form.a</property>
                </property>
                <property name="attributeName" class="String">class</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">loginlink</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">27</property>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="15"/>
        <edges class="ArrayList">
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="10"/>
            <to idref="11"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="11"/>
            <to idref="12"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="12"/>
            <to idref="13"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="13"/>
            <to idref="14"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="14"/>
            <to idref="15"/>
            <attachment>
              <null/>
            </attachment>
          </object>
        </edges>
      </object>
      <object class="Transition" id="16">
        <property name="name" class="String">flag=y</property>
        <property name="stateProcessor" class="AssignGlobalVariable">
          <property name="value" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">y</property>
          </property>
          <property name="variableName" class="String">flag</property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">32</property>
      </object>
      <object class="Group" id="17">
        <id class="Integer">34</id>
        <name class="String">create blog</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="18"/>
        <steps class="ArrayList">
          <object class="Transition" id="19">
            <property name="name" class="String">Create Page</property>
            <property name="stateProcessor" class="CreatePage2">
              <property name="contents" class="kapow.robot.plugin.common.stateprocessor.callwebservice3.MultilineValueStringExpression">
                <property name="value" class="String">&lt;html lang="zh_CN"&gt;
    &lt;head&gt;
        &lt;meta http-equiv="Content-Type" content="text/html;charset=GBK"&gt;
        &lt;meta http-equiv="content-language" content="zh-cn" /&gt;
    &lt;/head&gt;
    &lt;body&gt;
&lt;form name="form1" id="popFormSubmit" action="http://hi.baidu.com/baoxian028w/commit" method="post" &gt;







&lt;input type="hidden" name="bdstoken" value="77a294a2392a3a210f17dabc58b5f756"&gt;







&lt;input type="hidden" name="ct" value="1"&gt;








&lt;input type="hidden" name="cm" value="1"&gt;







&lt;input type="hidden" name="spBlogID" &gt;






&lt;input type="hidden" name="spBlogCatName_o"  rel="旧的分类名"&gt;







&lt;input id="edithid" name="edithid" type="hidden"&gt;


    &lt;span&gt;标题：&lt;/span&gt;






&lt;input type="text" name="spBlogTitle" id="spBlogTitle" class="grid-54 title" value="" maxlength="100" style="border:1px solid #CCC;padding:3px;line-height:20px"&gt;


		&lt;select id="spBlogCatName" name="spBlogCatName" style="width:130px;height:20px;font-size:12px;" class="grid-9"&gt;
        &lt;option value="默认分类"&gt;默认分类&lt;/option&gt;
    &lt;/select&gt;
    &lt;div class="set-box"&gt;

				查看权限：
				&lt;label style="padding-right:3px;" for="spBlogPower0"&gt;





&lt;input type="radio" name="spBlogPower" id="spBlogPower0" value="0" onclick="SpaceBlog.operation.check_allow_share(this.value)"  checked="checked" /&gt;任何人&lt;/label&gt;
				&lt;label style="padding:0 3px 0 12px;padding:0 3px 0 10px \9;_padding:0 3px 0 12px;" for="spBlogPower1"&gt;





&lt;input type="radio" name="spBlogPower" id="spBlogPower1" value="1" onclick="SpaceBlog.operation.check_allow_share(this.value)" /&gt;仅好友&lt;/label&gt;
				&lt;label style="padding:0 3px 0 12px;" for="spBlogPower3"&gt;





&lt;input type="radio" name="spBlogPower" id="spBlogPower3" value="3" onclick="SpaceBlog.operation.check_allow_share(this.value)" /&gt;仅自己&lt;/label&gt;
			&lt;/div&gt;

			&lt;div class="set-box"&gt;
			    其他设置：





&lt;input id="spIsCmtAllowRObj" name="spIsCmtAllow" type="hidden" value="1"/&gt;





&lt;input id="spShareNotAllowRObj" name="spShareNotAllow" type="hidden" value="0"/&gt;
			    &lt;label style="padding-right:3px;" for="spIsCmtAllowObj"&gt;





&lt;input name="spIsCmtAllowObj" id="spIsCmtAllowObj" type="checkbox"   &gt;禁止评论&lt;/label&gt;
			    &lt;label id="spShareNotAllowLabel" style="padding-right:3px;" for="spShareNotAllowObj"&gt;





&lt;input name="spShareNotAllowObj" id="spShareNotAllowObj" type="checkbox"  &gt;禁止转载&lt;/label&gt;

			&lt;/div&gt;
文章：&lt;br/&gt;
  &lt;textarea name="spBlogText" id="spBlogText" rows="8" cols="60"&gt;&lt;/textarea&gt;
&lt;br/&gt;






&lt;input id="a" name="submit" type="submit" value ="submit"/&gt;
&lt;/form&gt;
&lt;/body&gt;&lt;/html&gt;</property>
              </property>
              <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
                <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">35</property>
          </object>
          <object class="Transition" id="20">
            <property name="name" class="String">Enter Title</property>
            <property name="stateProcessor" class="EnterText">
              <property name="textExpression" class="kapow.robot.plugin.common.support.expression.multipletype.AttributeValueExpression">
                <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName">
                  <property name="name" class="String">blog_input.title</property>
                </property>
              </property>
              <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
                <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
              <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.input</property>
                </property>
                <property name="attributeName" class="String">id</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">spBlogTitle</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">36</property>
          </object>
          <object class="Transition" id="21">
            <property name="name" class="String">Enter Content</property>
            <property name="stateProcessor" class="EnterText">
              <property name="textExpression" class="kapow.robot.plugin.common.support.expression.multipletype.AttributeValueExpression">
                <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName">
                  <property name="name" class="String">blog_input.content</property>
                </property>
              </property>
              <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
                <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
              <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.textarea</property>
                </property>
                <property name="attributeName" class="String">id</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">spBlogText</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">37</property>
          </object>
          <object class="Transition" id="22">
            <property name="name" class="String">Click Submit</property>
            <property name="stateProcessor" class="Click">
              <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
                <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
              <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.input</property>
                </property>
                <property name="attributeName" class="String">id</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">a</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">38</property>
          </object>
          <object class="Transition" id="23">
            <property name="name" class="String">Assign Attribute</property>
            <property name="stateProcessor" class="AssignAttribute">
              <property name="stringExpr" class="Expression" serializationversion="0">
                <property name="text" class="String"> replacePattern(blog_input.content, "\n", "&lt;br&gt;")</property>
              </property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String" id="24">blog_input.content</property>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList" id="25"/>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">97</property>
          </object>
          <object class="Transition" id="26">
            <property name="name" class="String">Assign Attribute</property>
            <property name="stateProcessor" class="AssignAttribute">
              <property name="stringExpr" class="Expression" serializationversion="0">
                <property name="text" class="String">"&lt;a href='http://www.baoxian028.com'&gt;&lt;b&gt;" + blog_input.title + ":&lt;/b&gt;&lt;/a&gt;" +
blog_input.content + "
&lt;p&gt;
&lt;a href='http://www.baoxian028.com'&gt;&lt;b&gt;成都保险咨询网&lt;/b&gt;&lt;/a&gt;提供专业的保险咨询、投保、理财、车险、医疗、意外、人寿等保险服务。 经验丰富的专家团队不单纯地提供保险产品,其严谨的设计和内含的愿望已经超越了险种本身。
&lt;/p&gt;&lt;p&gt; 它带给每位客户专业、贴心的保险体验，满足投保者幸福生活的愿望&lt;/p&gt;
&lt;p&gt;&lt;h3&gt;&lt;a  href='http://www.baoxian028.com'&gt;点次进入成都保险咨询网&lt;/a&gt;&lt;/h3&gt;&lt;/p&gt;
"</property>
              </property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">blog_input.content</property>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">98</property>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="27"/>
        <edges class="ArrayList">
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="18"/>
            <to idref="19"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="19"/>
            <to idref="20"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="20"/>
            <to idref="23"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="21"/>
            <to idref="22"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="22"/>
            <to idref="27"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="23"/>
            <to idref="26"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="26"/>
            <to idref="21"/>
            <attachment>
              <null/>
            </attachment>
          </object>
        </edges>
      </object>
      <object class="Transition" id="28">
        <property name="name" class="String">Query Database</property>
        <property name="stateProcessor" class="QueryDatabase2" serializationversion="0">
          <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameStringExpression">
            <property name="value" class="kapow.util.db.DBName">
              <property name="name" class="String" id="29">insurance</property>
            </property>
          </property>
          <property name="sql" class="String">"SELECT * FROM post where is_posted = 'n' limit 50"</property>
          <property name="columnAttributeMappings" class="kapow.robot.plugin.common.support.database.ColumnAttributeMappings">
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">id</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">blog_input.post_id</property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">title</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">blog_input.title</property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">content</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" idref="24"/>
              </property>
            </object>
          </property>
        </property>
        <property name="nodeFinderList" idref="25"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">95</property>
      </object>
      <object class="Transition" id="30">
        <property name="name" class="String">flag=y</property>
        <property name="stateProcessor" class="AssignGlobalVariable">
          <property name="value" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">y</property>
          </property>
          <property name="variableName" class="String">flag</property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">96</property>
      </object>
      <object class="End" id="31">
        <property name="id" class="Integer">100</property>
      </object>
      <object class="BranchPoint" id="32">
        <property name="id" class="Integer">101</property>
      </object>
      <object class="Transition" id="33">
        <property name="name" class="String">Execute SQL</property>
        <property name="stateProcessor" class="ExecuteSQL2" serializationversion="0">
          <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameStringExpression">
            <property name="value" class="kapow.util.db.DBName">
              <property name="name" idref="29"/>
            </property>
          </property>
          <property name="sql" class="Expression" serializationversion="0">
            <property name="text" class="String">"update post set is_posted = '" + flag + "' where id = " + blog_input.post_id</property>
          </property>
          <property name="executeInDesignMode" class="Boolean">true</property>
        </property>
        <property name="nodeFinderList" idref="25"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">102</property>
      </object>
      <object class="Transition" id="34">
        <property name="name" class="String">Wait</property>
        <property name="stateProcessor" class="Wait" serializationversion="0">
          <property name="seconds" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">120.0</property>
          </property>
        </property>
        <property name="nodeFinderList" idref="25"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">103</property>
      </object>
    </steps>
    <blockEndStep class="BlockEndStep"/>
    <edges class="ArrayList">
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="0"/>
        <to idref="1"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="1"/>
        <to idref="3"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="3"/>
        <to idref="6"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="6"/>
        <to idref="7"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="7"/>
        <to idref="8"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="8"/>
        <to idref="9"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="9"/>
        <to idref="30"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="16"/>
        <to idref="2"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="17"/>
        <to idref="34"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="28"/>
        <to idref="32"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="30"/>
        <to idref="28"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="32"/>
        <to idref="17"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="32"/>
        <to idref="33"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="33"/>
        <to idref="31"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="34"/>
        <to idref="16"/>
        <attachment>
          <null/>
        </attachment>
      </object>
    </edges>
  </property>
  <property name="nextTransitionId" class="Integer">104</property>
  <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
    <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.RobotDefaultBrowserConfigurationSpecificationAncestorProvider"/>
  </property>
</object>
