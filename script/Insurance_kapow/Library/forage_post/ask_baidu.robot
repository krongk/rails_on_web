<?xml version="1.0" encoding="UTF-8" ?>
<object class="GenericRobot2" serializationversion="1">
  <prologue>
    <saved-by-versions>
      <version>8.2.1</version>
    </saved-by-versions>
    <referenced-types>
      <type name="ask_post"/>
    </referenced-types>
    <referenced-snippets/>
    <typed-variables>
      <typed-variable name="question" type-name="Short Text (simple)"/>
      <typed-variable name="flag" type-name="Short Text (simple)"/>
      <typed-variable name="tmp" type-name="Long Text (simple)"/>
      <typed-variable name="tmp_a" type-name="Short Text (simple)"/>
      <typed-variable name="matchs" type-name="Short Text (simple)"/>
      <typed-variable name="qihoo_docid" type-name="Integer (simple)"/>
      <typed-variable name="qihoo_hostid" type-name="Integer (simple)"/>
      <typed-variable name="ask_post" type-name="ask_post"/>
    </typed-variables>
    <global-variables>
      <variable name="flag"/>
      <variable name="tmp"/>
      <variable name="tmp_a"/>
    </global-variables>
    <parameters/>
    <return-variables/>
    <store-in-database-variables>
      <variable name="ask_post"/>
    </store-in-database-variables>
  </prologue>
  <property name="variables" class="Variables">
    <object class="Variable" serializationversion="0">
      <property name="name" class="String" id="0">question</property>
      <property name="initialValue" class="Value">
        <property name="type" class="SimpleTypeReference" id="1">
          <property name="simpleTypeId" class="Integer">12</property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="0">
      <property name="name" class="String">flag</property>
      <property name="global" class="Boolean">true</property>
      <property name="initialValue" class="Value">
        <property name="type" idref="1"/>
        <property name="value" class="String">f</property>
      </property>
    </object>
    <object class="Variable" serializationversion="0">
      <property name="name" class="String">tmp</property>
      <property name="global" class="Boolean">true</property>
      <property name="initialValue" class="Value">
        <property name="type" class="SimpleTypeReference">
          <property name="simpleTypeId" class="Integer">13</property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="0">
      <property name="name" class="String">tmp_a</property>
      <property name="global" class="Boolean">true</property>
      <property name="initialValue" class="Value">
        <property name="type" idref="1"/>
      </property>
    </object>
    <object class="Variable" serializationversion="0">
      <property name="name" class="String" id="2">matchs</property>
      <property name="initialValue" class="Value">
        <property name="type" idref="1"/>
      </property>
    </object>
    <object class="Variable" serializationversion="0">
      <property name="name" class="String">qihoo_docid</property>
      <property name="initialValue" class="Value">
        <property name="type" class="SimpleTypeReference" id="3">
          <property name="simpleTypeId" class="Integer">7</property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="0">
      <property name="name" class="String">qihoo_hostid</property>
      <property name="initialValue" class="Value">
        <property name="type" idref="3"/>
      </property>
    </object>
    <object class="Variable" serializationversion="0">
      <property name="name" class="String">ask_post</property>
      <property name="initialValue" class="Value">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">ask_post</property>
        </property>
      </property>
    </object>
  </property>
  <property name="proxyServerConfiguration" class="kapow.util.net.ProxyServerConfiguration" serializationversion="0">
    <property name="useProxyServer" class="Boolean">true</property>
    <property name="hostName" class="String">localhost</property>
    <property name="portNumber" class="Integer">8118</property>
  </property>
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
      <object class="Transition" serializationversion="0" id="6">
        <property name="name" class="String">Query Database</property>
        <property name="stepAction" class="QueryDatabase2" serializationversion="0">
          <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameValueStringExpression">
            <property name="value" class="kapow.util.db.DBName">
              <property name="name" class="String">insurance</property>
            </property>
          </property>
          <property name="sql" class="String">"SELECT * FROM ask_run_key where is_baidu_processed = 'n' "</property>
          <property name="columnAttributeMappings" class="kapow.robot.plugin.common.support.database.ColumnAttributeMappings">
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">id</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">ask_post.ask_run_key_id</property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">question</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" idref="0"/>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">root</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" idref="2"/>
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
      <object class="Transition" serializationversion="0" id="7">
        <property name="name" class="String">category=baidu</property>
        <property name="stepAction" class="AssignVariable" serializationversion="1">
          <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">baidu</property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">ask_post.category</property>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="4"/>
      </object>
      <object class="Group" id="8">
        <name class="String">baidu</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="9"/>
        <steps class="ArrayList">
          <object class="Transition" serializationversion="0" id="10">
            <property name="name" class="String">flag = c</property>
            <property name="stepAction" class="AssignVariable" serializationversion="1">
              <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">c</property>
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
          <object class="Transition" serializationversion="0" id="11">
            <property name="name" class="String">Enter Question</property>
            <property name="stepAction" class="EnterText">
              <property name="textExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">question</property>
                </property>
              </property>
              <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="11">
                <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
              </property>
            </property>
            <property name="nodeFinderList" class="NodeFinderList">
              <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.input</property>
                </property>
                <property name="attributeName" class="String">id</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">kw</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="4"/>
          </object>
          <object class="Transition" serializationversion="0" id="12">
            <property name="name" class="String">Click</property>
            <property name="stepAction" class="Click">
              <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="11">
                <property name="numOfAttempts" class="Integer">3</property>
                <property name="timeout" class="Double">160.0</property>
                <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String">numOfAttempts</element>
                  <element class="String">timeout</element>
                </property>
              </property>
            </property>
            <property name="nodeFinderList" class="NodeFinderList">
              <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.input</property>
                </property>
                <property name="attributeName" class="String">id</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">top-search-btn</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="4"/>
          </object>
          <object class="Transition" serializationversion="0" id="13">
            <property name="name" class="String">Load Page</property>
            <property name="stepAction" class="LoadPage2">
              <property name="urlProvider" class="kapow.robot.plugin.common.stepaction.urlprovider2.ValueURLProvider2">
                <property name="URL" class="String">http://zhidao.baidu.com</property>
              </property>
              <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="11">
                <property name="numOfAttempts" class="Integer">3</property>
                <property name="timeout" class="Double">160.0</property>
                <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String">numOfAttempts</element>
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
          <object class="Transition" serializationversion="0" id="14">
            <property name="name" class="String">Set Current Tag</property>
            <property name="stepAction" class="SetCurrentTag">
              <property name="tagName" class="kapow.robot.plugin.common.stepaction.currenttag.CurrentTagName">
                <property name="name" class="String">main</property>
              </property>
            </property>
            <property name="nodeFinderList" class="NodeFinderList">
              <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.div.div</property>
                </property>
                <property name="attributeName" class="String">class</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">results</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="4"/>
          </object>
          <object class="Transition" serializationversion="0" id="15">
            <property name="name" class="String">For Each Tag Path</property>
            <property name="stepAction" class="ForEachTagPath">
              <property name="nodePath" class="String">DL</property>
              <property name="classes" class="String">result-item</property>
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
          <object class="Transition" serializationversion="0" id="16">
            <property name="name" class="String">Set Current Tag</property>
            <property name="stepAction" class="SetCurrentTag">
              <property name="tagName" class="kapow.robot.plugin.common.stepaction.currenttag.CurrentTagName">
                <property name="name" class="String">title</property>
              </property>
            </property>
            <property name="nodeFinderList" class="NodeFinderList">
              <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
                <property name="referenceNodeRelation" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.relation.InReferenceNodeRelation">
                  <property name="referenceNodeIndex" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.ReferenceNodeIndex"/>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.dl[0].dt</property>
                </property>
                <property name="attributeName" class="String">class</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">result-title</property>
                </property>
                <property name="nodeNumber" class="Integer">9999</property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="4"/>
          </object>
          <object class="Transition" serializationversion="0" id="17">
            <property name="name" class="String">Extract URL</property>
            <property name="stepAction" class="ExtractURL">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">ask_post.url</property>
              </property>
              <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="11">
                <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
              </property>
            </property>
            <property name="nodeFinderList" class="NodeFinderList">
              <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
                <property name="referenceNodeRelation" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.relation.InReferenceNodeRelation">
                  <property name="referenceNodeIndex" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.ReferenceNodeName">
                    <property name="name" class="String">title</property>
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
          <object class="Transition" serializationversion="0" id="18">
            <property name="name" class="String">Extract Title</property>
            <property name="stepAction" class="Extract" serializationversion="1">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">ask_post.title</property>
              </property>
            </property>
            <property name="nodeFinderList" class="NodeFinderList">
              <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
                <property name="referenceNodeRelation" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.relation.InReferenceNodeRelation">
                  <property name="referenceNodeIndex" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.ReferenceNodeName">
                    <property name="name" class="String">title</property>
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
          <object class="Transition" serializationversion="0" id="19">
            <property name="name" class="String">match?</property>
            <property name="stepAction" class="TestValue" serializationversion="0">
              <property name="condition" class="Expression" serializationversion="1">
                <property name="text" class="String">contains(ask_post.title, matchs)</property>
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
          <object class="End" id="20"/>
          <object class="BranchPoint" id="21"/>
          <object class="Transition" serializationversion="0" id="22">
            <property name="name" class="String">match?</property>
            <property name="stepAction" class="TestValue" serializationversion="0">
              <property name="condition" class="Expression" serializationversion="1">
                <property name="text" class="String">contains(ask_post.title, matchs)</property>
              </property>
              <property name="mode" class="Integer">1</property>
              <property name="generateErrorWhenStopping" class="Boolean">false</property>
            </property>
            <property name="nodeFinderList" class="NodeFinderList"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="4"/>
          </object>
          <object class="Transition" serializationversion="0" id="23">
            <property name="name" class="String">Click</property>
            <property name="stepAction" class="Click">
              <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="11">
                <property name="numOfAttempts" class="Integer">3</property>
                <property name="timeout" class="Double">160.0</property>
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
                  <property name="referenceNodeIndex" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.ReferenceNodeName">
                    <property name="name" class="String">title</property>
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
          <object class="Transition" serializationversion="0" id="24">
            <property name="name" class="String">Extract Question</property>
            <property name="stepAction" class="Extract" serializationversion="1">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">ask_post.question</property>
              </property>
            </property>
            <property name="nodeFinderList" class="NodeFinderList">
              <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.pre</property>
                </property>
                <property name="attributeName" class="String">id</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">question-content</property>
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
          <object class="Transition" serializationversion="0" id="25">
            <property name="name" class="String">Extract Best_answer</property>
            <property name="stepAction" class="Extract" serializationversion="1">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">ask_post.best_answer</property>
              </property>
            </property>
            <property name="nodeFinderList" class="NodeFinderList">
              <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.div.div.div.div.div.div.div.div.div.pre</property>
                </property>
                <property name="attributeName" class="String">class</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">reply-text mb10</property>
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
          <object class="Transition" serializationversion="0" id="26">
            <property name="name" class="String">Remove Tags</property>
            <property name="stepAction" class="RemoveTags2">
              <property name="removeTagMatcherRules" class="BeanList">
                <object class="RemoveTags2$TagMatcherRule">
                  <property name="tagMatcher" class="RemoveTags2$TagNameTagMatcher">
                    <property name="tagName" class="String">div</property>
                  </property>
                </object>
              </property>
              <property name="exceptTagMatcherRules" class="BeanList">
                <object class="RemoveTags2$TagMatcherRule">
                  <property name="tagMatcher" class="RemoveTags2$TagNameTagMatcher">
                    <property name="tagName" class="String">pre</property>
                  </property>
                </object>
              </property>
            </property>
            <property name="nodeFinderList" class="NodeFinderList">
              <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
                <property name="referenceNodeRelation" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.relation.InReferenceNodeRelation">
                  <property name="referenceNodeIndex" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.ReferenceNodeName">
                    <property name="name" class="String">all_answers</property>
                  </property>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.div</property>
                </property>
                <property name="attributeName" class="String">id</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">reply-panel</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="4"/>
          </object>
          <object class="Transition" serializationversion="0" id="27">
            <property name="name" class="String">Set Current Tag</property>
            <property name="stepAction" class="SetCurrentTag">
              <property name="tagName" class="kapow.robot.plugin.common.stepaction.currenttag.CurrentTagName">
                <property name="name" class="String">all_answers</property>
              </property>
            </property>
            <property name="nodeFinderList" class="NodeFinderList">
              <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.div</property>
                </property>
                <property name="attributeName" class="String">id</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">reply-panel</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextIteration"/>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="4"/>
          </object>
          <object class="Transition" serializationversion="0" id="28">
            <property name="name" class="String">Extract HTML</property>
            <property name="stepAction" class="Extract" serializationversion="1">
              <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">ask_post.original_content</property>
              </property>
            </property>
            <property name="nodeFinderList" class="NodeFinderList">
              <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.div</property>
                </property>
                <property name="attributeName" class="String">id</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">reply-panel</property>
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
          <object class="Transition" serializationversion="0" id="29">
            <property name="name" class="String">Create Page</property>
            <property name="stepAction" class="CreatePage2">
              <property name="contents" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">ask_post.original_content</property>
                </property>
              </property>
              <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="11">
                <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
              </property>
            </property>
            <property name="nodeFinderList" class="NodeFinderList"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="4"/>
          </object>
          <object class="Transition" serializationversion="0" id="30">
            <property name="name" class="String">flag = f</property>
            <property name="stepAction" class="AssignVariable" serializationversion="1">
              <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">f</property>
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
          <object class="Transition" serializationversion="0" id="31">
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
          <object class="Transition" serializationversion="0" id="32">
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
          <object class="Transition" serializationversion="0" id="33">
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
          <object class="Transition" serializationversion="0" id="34">
            <property name="name" class="String">For Each Tag Path</property>
            <property name="stepAction" class="ForEachTagPath">
              <property name="nodePath" class="String">pre</property>
            </property>
            <property name="nodeFinderList" class="NodeFinderList">
              <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="changedProperties" class="java.util.HashSet">
                <element class="String">reportingViaLog</element>
                <element class="String">reportingViaAPI</element>
              </property>
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="4"/>
          </object>
          <object class="Transition" serializationversion="0" id="35">
            <property name="name" class="String">tmp =''</property>
            <property name="stepAction" class="AssignVariable" serializationversion="1">
              <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String"> </property>
              </property>
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">tmp</property>
              </property>
            </property>
            <property name="nodeFinderList" class="NodeFinderList"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="4"/>
          </object>
          <object class="Transition" serializationversion="0" id="36">
            <property name="name" class="String">tmp_a = ''</property>
            <property name="stepAction" class="AssignVariable" serializationversion="1">
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">tmp_a</property>
              </property>
            </property>
            <property name="nodeFinderList" class="NodeFinderList"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="4"/>
          </object>
          <object class="Transition" serializationversion="0" id="37">
            <property name="name" class="String">Extract Tmp_a</property>
            <property name="stepAction" class="Extract" serializationversion="1">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">tmp_a</property>
              </property>
            </property>
            <property name="nodeFinderList" class="NodeFinderList">
              <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
                <property name="referenceNodeRelation" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.relation.InReferenceNodeRelation">
                  <property name="referenceNodeIndex" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.ReferenceNodeIndex"/>
                </property>
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
          <object class="Transition" serializationversion="0" id="38">
            <property name="name" class="String">tmp ++</property>
            <property name="stepAction" class="AssignVariable" serializationversion="1">
              <property name="stringExpr" class="Expression" serializationversion="1">
                <property name="text" class="String">tmp  + "\n&lt;hr/&gt;\n" + tmp_a</property>
              </property>
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">tmp</property>
              </property>
            </property>
            <property name="nodeFinderList" class="NodeFinderList"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="4"/>
          </object>
          <object class="End" id="39"/>
          <object class="BranchPoint" id="40"/>
          <object class="Transition" serializationversion="0" id="41">
            <property name="name" class="String">Store in Database</property>
            <property name="stepAction" class="StoreInDatabase" serializationversion="0">
              <property name="db" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameValueStringExpression">
                <property name="value" class="kapow.util.db.DBName">
                  <property name="name" class="String">insurance</property>
                </property>
              </property>
              <property name="variableName" class="kapow.robot.plugin.common.support.VariableName">
                <property name="name" class="String">ask_post</property>
              </property>
            </property>
            <property name="nodeFinderList" class="NodeFinderList"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="4"/>
          </object>
          <object class="Transition" serializationversion="0" id="42">
            <property name="name" class="String">Assign Variable</property>
            <property name="stepAction" class="AssignVariable" serializationversion="1">
              <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">tmp</property>
                </property>
              </property>
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">ask_post.all_answer</property>
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
            <property name="name" class="String">Extract HTML</property>
            <property name="stepAction" class="Extract" serializationversion="1">
              <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">ask_post.original_content</property>
              </property>
            </property>
            <property name="nodeFinderList" class="NodeFinderList">
              <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.body</property>
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
          <object class="End" id="45"/>
          <object class="BranchPoint" id="46"/>
          <object class="Transition" serializationversion="0" id="47">
            <property name="name" class="String">Execute SQL</property>
            <property name="stepAction" class="ExecuteSQL2" serializationversion="0">
              <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameValueStringExpression">
                <property name="value" class="kapow.util.db.DBName">
                  <property name="name" class="String">insurance</property>
                </property>
              </property>
              <property name="sql" class="Expression" serializationversion="1">
                <property name="text" class="String">"update ask_run_key set is_baidu_processed = '" + flag + "' where id = " + ask_post.ask_run_key_id</property>
              </property>
              <property name="executeInDesignMode" class="Boolean">true</property>
            </property>
            <property name="nodeFinderList" class="NodeFinderList"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="4"/>
          </object>
          <object class="Try" id="48"/>
          <object class="End" id="49"/>
        </steps>
        <blockEndStep class="BlockEndStep" id="50"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="9"/>
            <to idref="46"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="10"/>
            <to idref="13"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="11"/>
            <to idref="12"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="12"/>
            <to idref="14"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="13"/>
            <to idref="11"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="14"/>
            <to idref="33"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="15"/>
            <to idref="31"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="16"/>
            <to idref="17"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="17"/>
            <to idref="18"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="18"/>
            <to idref="21"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="19"/>
            <to idref="23"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="21"/>
            <to idref="19"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="21"/>
            <to idref="22"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="22"/>
            <to idref="32"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="23"/>
            <to idref="24"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="24"/>
            <to idref="25"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="25"/>
            <to idref="28"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="26"/>
            <to idref="40"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="27"/>
            <to idref="26"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="28"/>
            <to idref="29"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="29"/>
            <to idref="27"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="30"/>
            <to idref="16"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="31"/>
            <to idref="30"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="32"/>
            <to idref="20"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="33"/>
            <to idref="15"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="34"/>
            <to idref="36"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="35"/>
            <to idref="48"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="36"/>
            <to idref="37"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="37"/>
            <to idref="38"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="38"/>
            <to idref="50"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="40"/>
            <to idref="35"/>
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
            <from idref="41"/>
            <to idref="44"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="42"/>
            <to idref="43"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="43"/>
            <to idref="41"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="44"/>
            <to idref="39"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="46"/>
            <to idref="10"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="46"/>
            <to idref="47"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="47"/>
            <to idref="45"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="48"/>
            <to idref="34"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="48"/>
            <to idref="49"/>
            <attachment>
              <null/>
            </attachment>
          </object>
        </edges>
      </object>
      <object class="End" id="51"/>
    </steps>
    <blockEndStep class="BlockEndStep"/>
    <edges class="ArrayList">
      <object class="TransitionEdge">
        <from idref="5"/>
        <to idref="6"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="6"/>
        <to idref="7"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="7"/>
        <to idref="8"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="8"/>
        <to idref="51"/>
        <attachment>
          <null/>
        </attachment>
      </object>
    </edges>
  </property>
  <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="11">
    <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.RobotDefaultBrowserConfigurationSpecificationAncestorProvider"/>
  </property>
</object>
