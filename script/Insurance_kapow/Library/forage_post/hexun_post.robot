<?xml version="1.0" encoding="UTF-8" ?>
<object class="kapow.robot.robomaker.robot.type.GenericRobot2" serializationversion="1">
  <property name="roboTechVersion" class="String">8.0</property>
  <property name="startModelObjects" class="kapow.robot.robomaker.state.ModelObjects">
    <element class="kapow.robot.common.domain.Entity">
      <property name="entityModel" class="kapow.robot.common.domain.EntityModelReference">
        <property name="entityModelName" class="String">hexun_post</property>
      </property>
    </element>
  </property>
  <property name="queryParameters" class="kapow.robot.robomaker.state.ModelObjects">
    <element class="kapow.robot.common.domain.Entity">
      <property name="entityModel" class="kapow.robot.common.domain.EntityModelReference">
        <property name="entityModelName" class="String">hexun_post_input</property>
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
        <property name="name" class="String">Query Database</property>
        <property name="stateProcessor" class="QueryDatabase2" serializationversion="0">
          <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameStringExpression">
            <property name="value" class="kapow.util.db.DBName">
              <property name="name" class="String" id="2">insurance</property>
            </property>
          </property>
          <property name="sql" class="String">"SELECT * FROM hexun_run_key where is_processed = 'n'"</property>
          <property name="columnAttributeMappings" class="kapow.robot.plugin.common.support.database.ColumnAttributeMappings">
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">id</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">hexun_post_input.run_key_id</property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">id</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">hexun_post.hexun_run_key_id</property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">url</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String" id="3">hexun_post_input.url</property>
              </property>
            </object>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList" id="4"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">0</property>
      </object>
      <object class="End" id="5">
        <property name="id" class="Integer">1</property>
      </object>
      <object class="Transition" id="6">
        <property name="name" class="String">Load Page</property>
        <property name="stateProcessor" class="LoadPage2">
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="userAgentProvider" class="kapow.robot.plugin.common.support.browser2.PredefinedUserAgentProvider">
              <property name="userAgent" class="com.kapowtech.net.UserAgent">
                <property name="appCodeName" class="String">Mozilla</property>
                <property name="appMinorVersion" class="String">0</property>
                <property name="appName" class="String">Microsoft Internet Explorer</property>
                <property name="appVersion" class="String">4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0)</property>
                <property name="displayName" class="String">Internet Explorer 8.0 on Windows 7</property>
                <property name="name" class="String">IE_80_WinVista</property>
                <property name="platform" class="String">Win32</property>
                <property name="userAgentHeaderValue" class="String">Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0)</property>
              </property>
            </property>
            <property name="useCookies" class="Boolean">false</property>
            <property name="enableHTTPCache" class="Boolean">false</property>
            <property name="formEncoding" class="com.kapowtech.net.Encoding">
              <property name="encoding" class="String" id="7">GB2312</property>
            </property>
            <property name="language" class="String">zh_CN</property>
            <property name="numOfAttempts" class="Integer">3</property>
            <property name="overrideEncodingProvider" class="kapow.robot.plugin.common.support.encoding.provider.urlbased.AllURLBasedEncodingProvider">
              <property name="encoding" class="com.kapowtech.net.Encoding">
                <property name="encoding" idref="7"/>
              </property>
            </property>
            <property name="overrideMimeTypeProvider" class="kapow.robot.plugin.common.support.mimetype.provider.urlbased.AllURLBasedMIMETypeProvider"/>
            <property name="screenSize" class="kapow.robot.plugin.common.support.browser2.ScreenSize">
              <property name="height" class="Integer">768</property>
              <property name="width" class="Integer">1280</property>
            </property>
            <property name="timeout" class="Double">80.0</property>
            <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">screenSize</element>
              <element class="String">overrideEncodingProvider</element>
              <element class="String">numOfAttempts</element>
              <element class="String">enableHTTPCache</element>
              <element class="String">formEncoding</element>
              <element class="String">useCookies</element>
              <element class="String">overrideMimeTypeProvider</element>
              <element class="String">language</element>
              <element class="String">userAgentProvider</element>
              <element class="String">timeout</element>
            </property>
          </property>
          <property name="urlProvider" class="kapow.robot.plugin.common.stepaction.urlprovider2.AttributeURLProvider2">
            <property name="attribute" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" idref="3"/>
            </property>
          </property>
        </property>
        <property name="nodeFinderList" idref="4"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">2</property>
      </object>
      <object class="Transition" id="8">
        <property name="name" class="String">Store</property>
        <property name="stateProcessor" class="StoreInDatabase">
          <property name="db" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameStringExpression">
            <property name="value" class="kapow.util.db.DBName">
              <property name="name" idref="2"/>
            </property>
          </property>
          <property name="object" class="kapow.robot.plugin.common.support.ModelName">
            <property name="name" class="String">hexun_post</property>
          </property>
        </property>
        <property name="nodeFinderList" idref="4"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" class="Boolean">false</property>
          <property name="reportingViaLog" class="Boolean">false</property>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">4</property>
      </object>
      <object class="Transition" id="9">
        <property name="name" class="String">For Each Tag Path</property>
        <property name="stateProcessor" class="ForEachTagPath">
          <property name="nodePath" class="String">li</property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="referenceNodeRelation" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.relation.InReferenceNodeRelation">
              <property name="referenceNodeIndex" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.ReferenceNodeIndex"/>
            </property>
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.div</property>
            </property>
            <property name="attributeName" class="String" id="10">class</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">temp01</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">6</property>
      </object>
      <object class="Transition" id="11">
        <property name="name" class="String">Set Current Tag</property>
        <property name="stateProcessor" class="SetCurrentTag"/>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.div</property>
            </property>
            <property name="attributeName" idref="10"/>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">mainboxcontent</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">7</property>
      </object>
      <object class="Transition" id="12">
        <property name="name" class="String">Extract URL</property>
        <property name="stateProcessor" class="ExtractURL">
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">hexun_post.url</property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider" id="13"/>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="referenceNodeRelation" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.relation.InReferenceNodeRelation">
              <property name="referenceNodeIndex" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.ReferenceNodeIndex">
                <property name="index" class="Integer">1</property>
              </property>
            </property>
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.li.a</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" class="Boolean">false</property>
          <property name="reportingViaLog" class="Boolean">false</property>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">8</property>
      </object>
      <object class="Transition" id="14">
        <property name="name" class="String">Extract Title</property>
        <property name="stateProcessor" class="Extract" serializationversion="0">
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">hexun_post.title</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="referenceNodeRelation" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.relation.InReferenceNodeRelation">
              <property name="referenceNodeIndex" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.ReferenceNodeIndex">
                <property name="index" class="Integer">1</property>
              </property>
            </property>
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.li.a</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" class="Boolean">false</property>
          <property name="reportingViaLog" class="Boolean">false</property>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">9</property>
      </object>
      <object class="Transition" id="15">
        <property name="name" class="String">Click</property>
        <property name="stateProcessor" class="Click">
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" idref="13"/>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="referenceNodeRelation" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.relation.InReferenceNodeRelation">
              <property name="referenceNodeIndex" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.ReferenceNodeIndex">
                <property name="index" class="Integer">1</property>
              </property>
            </property>
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.li.a</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" class="Boolean">false</property>
          <property name="reportingViaLog" class="Boolean">false</property>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">10</property>
      </object>
      <object class="Transition" id="16">
        <property name="name" class="String">Extract Clip</property>
        <property name="stateProcessor" class="ExtractClip">
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">hexun_post.original_content</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.div</property>
            </property>
            <property name="attributeName" class="String" id="17">id</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String" id="18">artibody</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" class="Boolean">false</property>
          <property name="reportingViaLog" class="Boolean">false</property>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">11</property>
      </object>
      <object class="Transition" id="19">
        <property name="name" class="String">Extract Content</property>
        <property name="stateProcessor" class="Extract" serializationversion="0">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="stringProcessors" class="DataConverters">
            <element class="ConvertHTMLToText"/>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">hexun_post.content</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.div</property>
            </property>
            <property name="attributeName" idref="17"/>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" idref="18"/>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" class="Boolean">false</property>
          <property name="reportingViaLog" class="Boolean">false</property>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">12</property>
      </object>
      <object class="End" id="20">
        <property name="id" class="Integer">13</property>
      </object>
      <object class="BranchPoint" id="21">
        <property name="id" class="Integer">14</property>
      </object>
      <object class="Transition" id="22">
        <property name="name" class="String">Execute SQL</property>
        <property name="stateProcessor" class="ExecuteSQL2" serializationversion="0">
          <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameStringExpression">
            <property name="value" class="kapow.util.db.DBName">
              <property name="name" idref="2"/>
            </property>
          </property>
          <property name="sql" class="Expression" serializationversion="0">
            <property name="text" class="String">"update hexun_run_key set is_processed = '" + flag + "' where id = " + hexun_post_input.run_key_id</property>
          </property>
        </property>
        <property name="nodeFinderList" idref="4"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">16</property>
      </object>
      <object class="Transition" id="23">
        <property name="name" class="String">Create flag</property>
        <property name="stateProcessor" class="CreateGlobalVariable">
          <property name="variableName" class="String">flag</property>
          <property name="defaultValue" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">n</property>
          </property>
        </property>
        <property name="nodeFinderList" idref="4"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">17</property>
      </object>
      <object class="Transition" id="24">
        <property name="name" class="String">flag = f</property>
        <property name="stateProcessor" class="AssignGlobalVariable">
          <property name="value" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">f</property>
          </property>
          <property name="variableName" class="String">flag</property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">19</property>
      </object>
      <object class="Transition" id="25">
        <property name="name" class="String">flag=y?</property>
        <property name="stateProcessor" class="TestValue" serializationversion="0">
          <property name="condition" class="Expression" serializationversion="0">
            <property name="text" class="String">flag == "y"</property>
          </property>
          <property name="generateErrorWhenStopping" class="Boolean">false</property>
        </property>
        <property name="nodeFinderList" idref="4"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">20</property>
      </object>
      <object class="Transition" id="26">
        <property name="name" class="String">flag = y</property>
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
        <property name="id" class="Integer">21</property>
      </object>
      <object class="Transition" id="27">
        <property name="name" class="String">flag = y</property>
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
        <property name="id" class="Integer">22</property>
      </object>
      <object class="Try" id="28">
        <property name="id" class="Integer">24</property>
      </object>
      <object class="End" id="29">
        <property name="id" class="Integer">25</property>
      </object>
      <object class="Transition" id="30">
        <property name="name" class="String">Wait</property>
        <property name="stateProcessor" class="Wait" serializationversion="0">
          <property name="seconds" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">10.0</property>
          </property>
        </property>
        <property name="nodeFinderList" idref="4"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">26</property>
      </object>
      <object class="Transition" id="31">
        <property name="name" class="String">flag = c</property>
        <property name="stateProcessor" class="AssignGlobalVariable">
          <property name="value" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">c</property>
          </property>
          <property name="variableName" class="String">flag</property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">28</property>
      </object>
      <object class="Transition" id="32">
        <property name="name" class="String">flag =x</property>
        <property name="stateProcessor" class="AssignGlobalVariable">
          <property name="value" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">x</property>
          </property>
          <property name="variableName" class="String">flag</property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">30</property>
      </object>
      <object class="Transition" id="33">
        <property name="name" class="String">Wait</property>
        <property name="stateProcessor" class="Wait" serializationversion="0">
          <property name="seconds" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">8.0</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">31</property>
      </object>
      <object class="Transition" id="34">
        <property name="name" class="String">Write Log</property>
        <property name="stateProcessor" class="WriteLog">
          <property name="expression" class="String">hexun_post_input.run_key_id</property>
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
        <property name="id" class="Integer">33</property>
      </object>
      <object class="Transition" id="35">
        <property name="name" class="String">Write Log</property>
        <property name="stateProcessor" class="WriteLog">
          <property name="expression" class="String">hexun_post.url</property>
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
        <property name="id" class="Integer">34</property>
      </object>
      <object class="Try" id="36">
        <property name="id" class="Integer">35</property>
      </object>
      <object class="End" id="37">
        <property name="id" class="Integer">36</property>
      </object>
      <object class="Transition" id="38">
        <property name="name" class="String">flag =c</property>
        <property name="stateProcessor" class="AssignGlobalVariable">
          <property name="value" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">c</property>
          </property>
          <property name="variableName" class="String">flag</property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">37</property>
      </object>
    </steps>
    <blockEndStep class="BlockEndStep"/>
    <edges class="ArrayList">
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="0"/>
        <to idref="23"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="1"/>
        <to idref="21"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="6"/>
        <to idref="33"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="8"/>
        <to idref="27"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="9"/>
        <to idref="25"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="11"/>
        <to idref="26"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="12"/>
        <to idref="35"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="14"/>
        <to idref="36"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="15"/>
        <to idref="30"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="16"/>
        <to idref="19"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="19"/>
        <to idref="8"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="21"/>
        <to idref="34"/>
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
        <to idref="20"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="23"/>
        <to idref="1"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="24"/>
        <to idref="28"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="25"/>
        <to idref="24"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="26"/>
        <to idref="9"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="27"/>
        <to idref="5"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="28"/>
        <to idref="12"/>
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
        <to idref="16"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="31"/>
        <to idref="6"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="32"/>
        <to idref="29"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="33"/>
        <to idref="11"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="34"/>
        <to idref="31"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="35"/>
        <to idref="14"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="36"/>
        <to idref="15"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="36"/>
        <to idref="38"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="38"/>
        <to idref="37"/>
        <attachment>
          <null/>
        </attachment>
      </object>
    </edges>
  </property>
  <property name="nextTransitionId" class="Integer">38</property>
  <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
    <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.RobotDefaultBrowserConfigurationSpecificationAncestorProvider"/>
  </property>
</object>
