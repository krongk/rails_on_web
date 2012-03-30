<?xml version="1.0" encoding="UTF-8" ?>
<object class="kapow.robot.robomaker.robot.type.GenericRobot2" serializationversion="1">
  <property name="roboTechVersion" class="String">8.0</property>
  <property name="startModelObjects" class="kapow.robot.robomaker.state.ModelObjects">
    <element class="kapow.robot.common.domain.Entity">
      <property name="entityModel" class="kapow.robot.common.domain.EntityModelReference">
        <property name="entityModelName" class="String" id="0">talk</property>
      </property>
    </element>
  </property>
  <property name="queryParameters" class="kapow.robot.robomaker.state.ModelObjects">
    <element class="kapow.robot.common.domain.Entity">
      <property name="entityModel" class="kapow.robot.common.domain.EntityModelReference">
        <property name="entityModelName" class="String">account_input</property>
      </property>
    </element>
    <element class="kapow.robot.common.domain.Entity">
      <property name="entityModel" class="kapow.robot.common.domain.EntityModelReference">
        <property name="entityModelName" class="String">talk_input</property>
      </property>
    </element>
  </property>
  <property name="proxyServerConfiguration" class="kapow.util.net.ProxyServerConfiguration" serializationversion="0">
    <property name="useProxyServer" class="Boolean">true</property>
    <property name="hostName" class="String">127.0.0.1</property>
    <property name="portNumber" class="Integer">8118</property>
  </property>
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
    <blockBeginStep class="BlockBeginStep" id="1"/>
    <steps class="ArrayList">
      <object class="End" id="2">
        <property name="id" class="Integer">1</property>
      </object>
      <object class="Transition" id="3">
        <property name="name" class="String">Do Nothing</property>
        <property name="stateProcessor" class="DoNothing"/>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList" id="4"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">3</property>
      </object>
      <object class="Transition" id="5">
        <property name="name" class="String">Create flag</property>
        <property name="stateProcessor" class="CreateGlobalVariable">
          <property name="variableName" class="String">FLAG</property>
          <property name="defaultValue" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">0</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">4</property>
      </object>
      <object class="Transition" id="6">
        <property name="name" class="String"> PAGE_INDEX</property>
        <property name="stateProcessor" class="CreateGlobalVariable">
          <property name="variableName" class="String">PAGE_INDEX</property>
          <property name="defaultValue" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">0</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">5</property>
      </object>
      <object class="Transition" id="7">
        <property name="name" class="String">Query Account</property>
        <property name="stateProcessor" class="QueryDatabase2" serializationversion="0">
          <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameStringExpression">
            <property name="value" class="kapow.util.db.DBName">
              <property name="name" class="String">xuejiang_test</property>
            </property>
          </property>
          <property name="sql" class="String">"SELECT * FROM account where is_inited = 'n'"</property>
          <property name="columnAttributeMappings" class="kapow.robot.plugin.common.support.database.ColumnAttributeMappings">
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">login</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">account_input.login</property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">password</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">account_input.password</property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">id</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">account_input.account_id</property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">id</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">talk.account_id</property>
              </property>
            </object>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">6</property>
      </object>
      <object class="Transition" id="8">
        <property name="name" class="String">flag=f</property>
        <property name="stateProcessor" class="AssignGlobalVariable">
          <property name="value" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">f</property>
          </property>
          <property name="variableName" class="String">FLAG</property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">7</property>
      </object>
      <object class="End" id="9">
        <property name="id" class="Integer">8</property>
      </object>
      <object class="BranchPoint" id="10">
        <property name="id" class="Integer">9</property>
      </object>
      <object class="Transition" id="11">
        <property name="name" class="String">Ext flag</property>
        <property name="stateProcessor" class="ExecuteSQL2" serializationversion="0">
          <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameStringExpression">
            <property name="value" class="kapow.util.db.DBName">
              <property name="name" class="String">xuejiang_test</property>
            </property>
          </property>
          <property name="sql" class="Expression" serializationversion="0">
            <property name="text" class="String">"UPDATE account SET is_processed = '" + FLAG + "' WHERE id = " +account_input.account_id</property>
          </property>
          <property name="executeInDesignMode" class="Boolean">true</property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">10</property>
      </object>
      <object class="BranchPoint" id="12">
        <property name="id" class="Integer">11</property>
      </object>
      <object class="End" id="13">
        <property name="id" class="Integer">12</property>
      </object>
      <object class="End" id="14">
        <property name="id" class="Integer">13</property>
      </object>
      <object class="End" id="15">
        <property name="id" class="Integer">14</property>
      </object>
      <object class="Transition" id="16">
        <property name="name" class="String">Hot News</property>
        <property name="stateProcessor" class="WriteLog">
          <property name="expression" class="String">"daily hot news"</property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String" id="17">*</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">15</property>
      </object>
      <object class="Transition" id="18">
        <property name="name" class="String">Hot News</property>
        <property name="stateProcessor" class="WriteLog">
          <property name="expression" class="String">"daily hot news"</property>
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
        <property name="id" class="Integer">16</property>
      </object>
      <object class="Transition" id="19">
        <property name="name" class="String">Load Page</property>
        <property name="stateProcessor" class="LoadPage2">
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider" id="20"/>
          </property>
          <property name="urlProvider" class="kapow.robot.plugin.common.stepaction.urlprovider2.ValueURLProvider2">
            <property name="URL" class="String">http://news.sina.com.cn/hotnews/</property>
          </property>
        </property>
        <property name="nodeFinderList" idref="4"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">17</property>
      </object>
      <object class="Transition" id="21">
        <property name="name" class="String">Assign Content</property>
        <property name="stateProcessor" class="AssignAttribute">
          <property name="stringExpr" class="Expression" serializationversion="0">
            <property name="text" class="String">"[话筒]    " + talk.content + "  " +  talk_input.content_url</property>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">talk.content</property>
          </property>
        </property>
        <property name="nodeFinderList" idref="4"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">18</property>
      </object>
      <object class="Transition" id="22">
        <property name="name" class="String">For Each Tag Path</property>
        <property name="stateProcessor" class="ForEachTagPath">
          <property name="nodePath" class="String">.table.thead|tbody|tfoot.tr</property>
          <property name="firstIndex" class="Integer">1</property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.div.div.div.table</property>
            </property>
            <property name="attributeName" class="String">cellspacing</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">0</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">19</property>
      </object>
      <object class="Transition" id="23">
        <property name="name" class="String">Extract Content</property>
        <property name="stateProcessor" class="Extract" serializationversion="0">
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">talk.content</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="referenceNodeRelation" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.relation.InReferenceNodeRelation">
              <property name="referenceNodeIndex" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.ReferenceNodeIndex"/>
            </property>
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.a</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">20</property>
      </object>
      <object class="Transition" id="24">
        <property name="name" class="String">Extract URL</property>
        <property name="stateProcessor" class="ExtractURL">
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">talk_input.content_url</property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" idref="20"/>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="referenceNodeRelation" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.relation.InReferenceNodeRelation">
              <property name="referenceNodeIndex" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.ReferenceNodeIndex"/>
            </property>
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.a</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">21</property>
      </object>
      <object class="Transition" id="25">
        <property name="name" class="String">Find Object in Database</property>
        <property name="stateProcessor" class="FindInDatabase">
          <property name="db" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameStringExpression">
            <property name="value" class="kapow.util.db.DBName">
              <property name="name" class="String" id="26">xuejiang_test</property>
            </property>
          </property>
          <property name="object" class="kapow.robot.plugin.common.support.ModelName">
            <property name="name" idref="0"/>
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
        <property name="id" class="Integer">22</property>
      </object>
      <object class="Try" id="27">
        <property name="id" class="Integer">24</property>
      </object>
      <object class="Transition" id="28">
        <property name="name" class="String">Store Object in Database</property>
        <property name="stateProcessor" class="StoreInDatabase">
          <property name="db" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameStringExpression">
            <property name="value" class="kapow.util.db.DBName">
              <property name="name" idref="26"/>
            </property>
          </property>
          <property name="object" class="kapow.robot.plugin.common.support.ModelName">
            <property name="name" idref="0"/>
          </property>
        </property>
        <property name="nodeFinderList" idref="4"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">26</property>
      </object>
      <object class="Transition" id="29">
        <property name="name" class="String">flag=y</property>
        <property name="stateProcessor" class="AssignGlobalVariable">
          <property name="value" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">y</property>
          </property>
          <property name="variableName" class="String">FLAG</property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">28</property>
      </object>
      <object class="Transition" id="30">
        <property name="name" class="String">PAGE_INDEX++</property>
        <property name="stateProcessor" class="IncreaseGlobalVariable">
          <property name="variableName" class="String">PAGE_INDEX</property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">30</property>
      </object>
      <object class="Transition" id="31">
        <property name="name" class="String">PAGE_INDEX=0</property>
        <property name="stateProcessor" class="AssignGlobalVariable">
          <property name="value" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">0</property>
          </property>
          <property name="variableName" class="String">PAGE_INDEX</property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">31</property>
      </object>
      <object class="End" id="32">
        <property name="id" class="Integer">33</property>
      </object>
      <object class="BranchPoint" id="33">
        <property name="id" class="Integer">34</property>
      </object>
      <object class="Transition" id="34">
        <property name="name" class="String">PAGE_INDEX &gt; 5?</property>
        <property name="stateProcessor" class="TestValue" serializationversion="0">
          <property name="condition" class="Expression" serializationversion="0">
            <property name="text" class="String">PAGE_INDEX &lt; 5</property>
          </property>
          <property name="mode" class="Integer">1</property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" class="Boolean">false</property>
          <property name="reportingViaLog" class="Boolean">false</property>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextIteration"/>
        </property>
        <property name="comment" class="String">only extract 5 news.</property>
        <property name="id" class="Integer">35</property>
      </object>
      <object class="Transition" id="35">
        <property name="name" class="String">Break Loop</property>
        <property name="stateProcessor" class="TestTag" serializationversion="0">
          <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
            <property name="value" class="String">.*</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" idref="17"/>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" class="Boolean">false</property>
          <property name="reportingViaLog" class="Boolean">false</property>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$BreakLoop"/>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">37</property>
      </object>
    </steps>
    <blockEndStep class="BlockEndStep"/>
    <edges class="ArrayList">
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="1"/>
        <to idref="5"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="3"/>
        <to idref="12"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="5"/>
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
        <to idref="10"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="8"/>
        <to idref="3"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="10"/>
        <to idref="8"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="10"/>
        <to idref="11"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="11"/>
        <to idref="9"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="12"/>
        <to idref="16"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="12"/>
        <to idref="18"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="12"/>
        <to idref="14"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="12"/>
        <to idref="15"/>
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
        <from idref="18"/>
        <to idref="13"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="19"/>
        <to idref="31"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="21"/>
        <to idref="27"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="22"/>
        <to idref="33"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="23"/>
        <to idref="24"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="24"/>
        <to idref="21"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="25"/>
        <to idref="29"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="27"/>
        <to idref="25"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="27"/>
        <to idref="28"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="28"/>
        <to idref="29"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="29"/>
        <to idref="2"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="30"/>
        <to idref="23"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="31"/>
        <to idref="22"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="33"/>
        <to idref="30"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="33"/>
        <to idref="34"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="34"/>
        <to idref="35"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="35"/>
        <to idref="32"/>
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
