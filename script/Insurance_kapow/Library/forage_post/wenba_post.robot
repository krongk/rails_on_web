<?xml version="1.0" encoding="UTF-8" ?>
<object class="GenericRobot2" serializationversion="1">
  <prologue>
    <saved-by-versions>
      <version>8.0</version>
      <version>8.2.1</version>
    </saved-by-versions>
    <referenced-types>
      <type name="post_input"/>
      <type name="wenba_post"/>
    </referenced-types>
    <referenced-snippets/>
    <typed-variables>
      <typed-variable name="post_input" type-name="post_input"/>
      <typed-variable name="all_ans" type-name="Long Text (simple)"/>
      <typed-variable name="best_ans" type-name="Long Text (simple)"/>
      <typed-variable name="wenba_post" type-name="wenba_post"/>
      <typed-variable name="flag" type-name="Short Text (simple)"/>
    </typed-variables>
    <global-variables>
      <variable name="all_ans"/>
      <variable name="best_ans"/>
      <variable name="flag"/>
    </global-variables>
    <parameters>
      <parameter name="post_input" type-name="post_input"/>
    </parameters>
    <return-variables/>
    <store-in-database-variables>
      <variable name="wenba_post"/>
    </store-in-database-variables>
  </prologue>
  <property name="variables" class="Variables">
    <object class="Variable" serializationversion="0">
      <property name="name" class="String">post_input</property>
      <property name="parameter" class="Boolean">true</property>
      <property name="initialValue" class="Value">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">post_input</property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="0">
      <property name="name" class="String" id="0">all_ans</property>
      <property name="global" class="Boolean">true</property>
      <property name="initialValue" class="Value">
        <property name="type" class="SimpleTypeReference" id="1">
          <property name="simpleTypeId" class="Integer">13</property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="0">
      <property name="name" class="String" id="2">best_ans</property>
      <property name="global" class="Boolean">true</property>
      <property name="initialValue" class="Value">
        <property name="type" idref="1"/>
      </property>
    </object>
    <object class="Variable" serializationversion="0">
      <property name="name" class="String">wenba_post</property>
      <property name="initialValue" class="Value">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">wenba_post</property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="0">
      <property name="name" class="String" id="3">flag</property>
      <property name="global" class="Boolean">true</property>
      <property name="initialValue" class="Value">
        <property name="type" class="SimpleTypeReference">
          <property name="simpleTypeId" class="Integer">12</property>
        </property>
      </property>
    </object>
  </property>
  <property name="proxyServerConfiguration" class="kapow.util.net.ProxyServerConfiguration" serializationversion="0"/>
  <property name="httpClientType" class="HttpClientType">
    <property name="enum-name" class="String">APACHE</property>
  </property>
  <property name="ntlmAuthentication" class="NTLMAuthenticationType">
    <property name="enum-name" class="String">STANDARD</property>
  </property>
  <property name="privateHTTPCacheEnabled" class="Boolean" id="4">true</property>
  <property name="privateHTTPCacheSize" class="Integer">2048</property>
  <property name="comment">
    <null/>
  </property>
  <property name="id" class="Integer">-1</property>
  <property name="transitionGraph" class="Body">
    <blockBeginStep class="BlockBeginStep" id="5"/>
    <steps class="ArrayList">
      <object class="End" id="6"/>
      <object class="Transition" serializationversion="0" id="7">
        <property name="name" class="String">Query Database</property>
        <property name="stepAction" class="QueryDatabase2" serializationversion="0">
          <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameValueStringExpression">
            <property name="value" class="kapow.util.db.DBName">
              <property name="name" class="String">insurance</property>
            </property>
          </property>
          <property name="sql" class="String">"SELECT * FROM wenba_run_key where is_processed = 'n' AND batch_id = " + post_input.batch_id</property>
          <property name="columnAttributeMappings" class="kapow.robot.plugin.common.support.database.ColumnAttributeMappings">
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">id</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">post_input.run_key_id</property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">id</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">wenba_post.wenba_run_key_id</property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">url</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String" id="8">post_input.url</property>
              </property>
            </object>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="4"/>
      </object>
      <object class="Transition" serializationversion="0" id="9">
        <property name="name" class="String">Load Page</property>
        <property name="stepAction" class="LoadPage2">
          <property name="urlProvider" class="kapow.robot.plugin.common.stepaction.urlprovider2.AttributeURLProvider2" serializationversion="1">
            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" idref="8"/>
            </property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="11">
            <property name="language" class="String">zh_CN</property>
            <property name="screenSize" class="kapow.robot.plugin.common.support.browser2.ScreenSize">
              <property name="height" class="Integer">768</property>
              <property name="width" class="Integer">1280</property>
            </property>
            <property name="useCookies" class="Boolean">false</property>
            <property name="httpCacheModeString" class="String">DISABLED</property>
            <property name="numOfAttempts" class="Integer">3</property>
            <property name="timeout" class="Double">80.0</property>
            <property name="overrideMimeTypeProvider" class="kapow.robot.plugin.common.support.mimetype.provider.urlbased.AllURLBasedMIMETypeProvider"/>
            <property name="overrideEncodingProvider" class="kapow.robot.plugin.common.support.encoding.provider.urlbased.AllURLBasedEncodingProvider">
              <property name="encoding" class="com.kapowtech.net.Encoding">
                <property name="encoding" class="String" id="10">GB2312</property>
              </property>
            </property>
            <property name="formEncoding" class="com.kapowtech.net.Encoding">
              <property name="encoding" idref="10"/>
            </property>
            <property name="maxWindowDepth">
              <null/>
            </property>
            <property name="absolutePositioningEnabled" class="Boolean">true</property>
            <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">screenSize</element>
              <element class="String">overrideEncodingProvider</element>
              <element class="String">numOfAttempts</element>
              <element class="String">formEncoding</element>
              <element class="String">httpCacheModeString</element>
              <element class="String">useCookies</element>
              <element class="String">overrideMimeTypeProvider</element>
              <element class="String">language</element>
              <element class="String">userAgentProvider</element>
              <element class="String">timeout</element>
            </property>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="4"/>
      </object>
      <object class="Transition" serializationversion="0" id="11">
        <property name="name" class="String">Set Current Tag</property>
        <property name="stepAction" class="SetCurrentTag"/>
        <property name="nodeFinderList" class="NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.div</property>
            </property>
            <property name="attributeName" class="String">class</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">wenba_question_list</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="4"/>
      </object>
      <object class="End" id="12"/>
      <object class="BranchPoint" id="13"/>
      <object class="Transition" serializationversion="0" id="14">
        <property name="name" class="String">Execute SQL</property>
        <property name="stepAction" class="ExecuteSQL2" serializationversion="0">
          <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameValueStringExpression">
            <property name="value" class="kapow.util.db.DBName">
              <property name="name" class="String">insurance</property>
            </property>
          </property>
          <property name="sql" class="Expression" serializationversion="1">
            <property name="text" class="String">"update wenba_run_key set is_processed = '" + flag + "' where id = " + post_input.run_key_id</property>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="4"/>
      </object>
      <object class="Transition" serializationversion="0" id="15">
        <property name="name" class="String">flag = y</property>
        <property name="stepAction" class="AssignVariable" serializationversion="1">
          <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">y</property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" idref="3"/>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="4"/>
      </object>
      <object class="Transition" serializationversion="0" id="16">
        <property name="name" class="String">flag = c</property>
        <property name="stepAction" class="AssignVariable" serializationversion="1">
          <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">c</property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" idref="3"/>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="4"/>
      </object>
      <object class="Transition" serializationversion="0" id="17">
        <property name="name" class="String">For Each Tag Path</property>
        <property name="stepAction" class="ForEachTagPath">
          <property name="nodePath" class="String">div</property>
          <property name="firstIndex" class="Integer">10</property>
          <property name="increment" class="Integer">6</property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="referenceNodeRelation" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.relation.InReferenceNodeRelation">
              <property name="referenceNodeIndex" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.ReferenceNodeIndex"/>
            </property>
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="4"/>
      </object>
      <object class="Transition" serializationversion="0" id="18">
        <property name="name" class="String">flag = f</property>
        <property name="stepAction" class="AssignVariable" serializationversion="1">
          <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">f</property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" idref="3"/>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="4"/>
      </object>
      <object class="Try" id="19"/>
      <object class="End" id="20"/>
      <object class="Transition" serializationversion="0" id="21">
        <property name="name" class="String">Wait</property>
        <property name="stepAction" class="Wait" serializationversion="0">
          <property name="seconds" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">2.0</property>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="4"/>
      </object>
      <object class="Transition" serializationversion="0" id="22">
        <property name="name" class="String">Extract URL</property>
        <property name="stepAction" class="ExtractURL">
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">wenba_post.url</property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="11">
            <property name="userAgentProvider" class="kapow.robot.plugin.common.support.browser2.PredefinedUserAgentProvider">
              <property name="userAgent" class="com.kapowtech.net.UserAgent">
                <property name="appCodeName" class="String" id="23">Mozilla</property>
                <property name="appMinorVersion" class="String" id="24">0</property>
                <property name="appName" class="String" id="25">Microsoft Internet Explorer</property>
                <property name="appVersion" class="String" id="26">4.0 (compatible; MSIE 7.0; Windows NT 6.0)</property>
                <property name="displayName" class="String" id="27">Internet Explorer 7.0 on Windows Vista</property>
                <property name="name" class="String" id="28">IE_70_WinVista</property>
                <property name="platform" class="String" id="29">Win32</property>
                <property name="userAgentHeaderValue" class="String" id="30">Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0)</property>
              </property>
            </property>
            <property name="numOfAttempts" class="Integer">4</property>
            <property name="timeout" class="Double">160.0</property>
            <property name="maxWindowDepth">
              <null/>
            </property>
            <property name="absolutePositioningEnabled" class="Boolean">true</property>
            <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">numOfAttempts</element>
              <element class="String">timeout</element>
            </property>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="referenceNodeRelation" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.relation.InReferenceNodeRelation">
              <property name="referenceNodeIndex" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.ReferenceNodeIndex">
                <property name="index" class="Integer">1</property>
              </property>
            </property>
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.a</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" class="Boolean">false</property>
          <property name="reportingViaLog" class="Boolean">false</property>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="4"/>
      </object>
      <object class="Transition" serializationversion="0" id="31">
        <property name="name" class="String">Extract Title</property>
        <property name="stepAction" class="Extract" serializationversion="1">
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">wenba_post.title</property>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="referenceNodeRelation" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.relation.InReferenceNodeRelation">
              <property name="referenceNodeIndex" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.ReferenceNodeIndex">
                <property name="index" class="Integer">1</property>
              </property>
            </property>
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.a</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="4"/>
      </object>
      <object class="Transition" serializationversion="0" id="32">
        <property name="name" class="String">Click Link</property>
        <property name="stepAction" class="Click">
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="11">
            <property name="userAgentProvider" class="kapow.robot.plugin.common.support.browser2.PredefinedUserAgentProvider" id="33">
              <property name="userAgent" class="com.kapowtech.net.UserAgent">
                <property name="appCodeName" idref="23"/>
                <property name="appMinorVersion" idref="24"/>
                <property name="appName" idref="25"/>
                <property name="appVersion" idref="26"/>
                <property name="displayName" idref="27"/>
                <property name="name" idref="28"/>
                <property name="platform" idref="29"/>
                <property name="userAgentHeaderValue" idref="30"/>
              </property>
            </property>
            <property name="maxWindowDepth">
              <null/>
            </property>
            <property name="absolutePositioningEnabled" class="Boolean">true</property>
            <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="referenceNodeRelation" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.relation.InReferenceNodeRelation">
              <property name="referenceNodeIndex" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.ReferenceNodeIndex">
                <property name="index" class="Integer">1</property>
              </property>
            </property>
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.a</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" class="Boolean">false</property>
          <property name="reportingViaLog" class="Boolean">false</property>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="4"/>
      </object>
      <object class="Transition" serializationversion="0" id="34">
        <property name="name" class="String">Extract Question</property>
        <property name="stepAction" class="Extract" serializationversion="1">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.StructuredTextOutputtingHTMLDOMToTextConverter"/>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">wenba_post.question</property>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="referenceNodeRelation" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.relation.InReferenceNodeRelation">
              <property name="referenceNodeIndex" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.ReferenceNodeIndex"/>
            </property>
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.div</property>
            </property>
            <property name="attributeName" class="String">class</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">wtxi</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="4"/>
      </object>
      <object class="Transition" serializationversion="0" id="35">
        <property name="name" class="String" id="36">Assign Variable</property>
        <property name="stepAction" class="AssignVariable" serializationversion="1">
          <property name="stringExpr" class="Expression" serializationversion="1">
            <property name="text" class="String">all_ans + "&lt;hr/&gt;\n" + best_ans</property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" idref="0"/>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList" id="37"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="4"/>
      </object>
      <object class="Transition" serializationversion="0" id="38">
        <property name="name" class="String">no answer?</property>
        <property name="stepAction" class="TestTag" serializationversion="1">
          <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
            <property name="value" class="String">.*class="answer".*</property>
          </property>
          <property name="include" class="Boolean">true</property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">*</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" class="Boolean">false</property>
          <property name="reportingViaLog" class="Boolean">false</property>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="4"/>
      </object>
      <object class="Transition" serializationversion="0" id="39">
        <property name="name" class="String">flag=y?</property>
        <property name="stepAction" class="TestValue" serializationversion="0">
          <property name="condition" class="Expression" serializationversion="1">
            <property name="text" class="String">flag == "y"</property>
          </property>
          <property name="generateErrorWhenStopping" class="Boolean">false</property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="4"/>
      </object>
      <object class="Try" id="40"/>
      <object class="End" id="41"/>
      <object class="Transition" serializationversion="0" id="42">
        <property name="name" class="String">flag = y</property>
        <property name="stepAction" class="AssignVariable" serializationversion="1">
          <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">y</property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" idref="3"/>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="4"/>
      </object>
      <object class="Transition" serializationversion="0" id="43">
        <property name="name" class="String">Set Current Tag</property>
        <property name="stepAction" class="SetCurrentTag"/>
        <property name="nodeFinderList" class="NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.div.div.div</property>
            </property>
            <property name="attributeName" class="String">class</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">ask</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="4"/>
      </object>
      <object class="Transition" serializationversion="0" id="44">
        <property name="name" class="String">For Each Tag Path</property>
        <property name="stepAction" class="ForEachTagPath">
          <property name="nodePath" class="String">DIV</property>
          <property name="classes" class="String">answer</property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">*</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="4"/>
      </object>
      <object class="Transition" serializationversion="0" id="45">
        <property name="name" class="String">Extract Clip</property>
        <property name="stepAction" class="ExtractClip" serializationversion="2">
          <property name="storeClipIn" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">wenba_post.original_content</property>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.div</property>
            </property>
            <property name="attributeName" class="String">class</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">main_left</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="4"/>
      </object>
      <object class="Transition" serializationversion="0" id="46">
        <property name="name" class="String">Extract Best_answer</property>
        <property name="stepAction" class="Extract" serializationversion="1">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.StructuredTextOutputtingHTMLDOMToTextConverter"/>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" idref="2"/>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="referenceNodeRelation" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.relation.InReferenceNodeRelation">
              <property name="referenceNodeIndex" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.ReferenceNodeIndex">
                <property name="index" class="Integer">1</property>
              </property>
            </property>
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.div</property>
            </property>
            <property name="attributeName" class="String">class</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">youtiwen</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" class="Boolean">false</property>
          <property name="reportingViaLog" class="Boolean">false</property>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$IgnoreAndContinue"/>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="4"/>
      </object>
      <object class="End" id="47"/>
      <object class="BranchPoint" id="48"/>
      <object class="Transition" serializationversion="0" id="49">
        <property name="name" class="String">flag = y</property>
        <property name="stepAction" class="AssignVariable" serializationversion="1">
          <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">y</property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">flag</property>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="4"/>
      </object>
      <object class="Transition" serializationversion="0" id="50">
        <property name="name" class="String">Store</property>
        <property name="stepAction" class="StoreInDatabase" serializationversion="0">
          <property name="db" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameValueStringExpression">
            <property name="value" class="kapow.util.db.DBName">
              <property name="name" class="String">insurance</property>
            </property>
          </property>
          <property name="variableName" class="kapow.robot.plugin.common.support.VariableName">
            <property name="name" class="String">wenba_post</property>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="4"/>
      </object>
      <object class="Transition" serializationversion="0" id="51">
        <property name="name" idref="36"/>
        <property name="stepAction" class="AssignVariable" serializationversion="1">
          <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" idref="0"/>
            </property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">wenba_post.all_answer</property>
          </property>
        </property>
        <property name="nodeFinderList" idref="37"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="4"/>
      </object>
      <object class="Transition" serializationversion="0" id="52">
        <property name="name" class="String">Assign Variable</property>
        <property name="stepAction" class="AssignVariable" serializationversion="1">
          <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" class="String">best_ans</property>
            </property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">wenba_post.best_answer</property>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="4"/>
      </object>
      <object class="Transition" serializationversion="0" id="53">
        <property name="name" idref="36"/>
        <property name="stepAction" class="AssignVariable" serializationversion="1">
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" idref="0"/>
          </property>
        </property>
        <property name="nodeFinderList" idref="37"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="4"/>
      </object>
      <object class="Transition" serializationversion="0" id="54">
        <property name="name" class="String">Assign Variable</property>
        <property name="stepAction" class="AssignVariable" serializationversion="1">
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">best_ans</property>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="4"/>
      </object>
      <object class="End" id="55"/>
    </steps>
    <blockEndStep class="BlockEndStep"/>
    <edges class="ArrayList">
      <object class="TransitionEdge">
        <from idref="5"/>
        <to idref="7"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="7"/>
        <to idref="13"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="9"/>
        <to idref="11"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="11"/>
        <to idref="15"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="13"/>
        <to idref="16"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="13"/>
        <to idref="14"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="13"/>
        <to idref="55"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="14"/>
        <to idref="12"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="15"/>
        <to idref="17"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="16"/>
        <to idref="9"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="17"/>
        <to idref="39"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="18"/>
        <to idref="19"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="19"/>
        <to idref="22"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="19"/>
        <to idref="20"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="21"/>
        <to idref="40"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="22"/>
        <to idref="31"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="31"/>
        <to idref="32"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="32"/>
        <to idref="21"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="34"/>
        <to idref="45"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="35"/>
        <to idref="6"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="38"/>
        <to idref="54"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="39"/>
        <to idref="18"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="40"/>
        <to idref="38"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="40"/>
        <to idref="42"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="42"/>
        <to idref="41"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="43"/>
        <to idref="34"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="44"/>
        <to idref="46"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="45"/>
        <to idref="48"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="46"/>
        <to idref="35"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="48"/>
        <to idref="44"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="48"/>
        <to idref="52"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="49"/>
        <to idref="47"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="50"/>
        <to idref="49"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="51"/>
        <to idref="50"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="52"/>
        <to idref="51"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="53"/>
        <to idref="43"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="54"/>
        <to idref="53"/>
        <attachment>
          <null/>
        </attachment>
      </object>
    </edges>
  </property>
  <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="11">
    <property name="userAgentProvider" idref="33"/>
    <property name="maxWindowDepth">
      <null/>
    </property>
    <property name="absolutePositioningEnabled" class="Boolean">true</property>
    <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.RobotDefaultBrowserConfigurationSpecificationAncestorProvider"/>
  </property>
</object>
