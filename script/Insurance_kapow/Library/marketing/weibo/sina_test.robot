<?xml version="1.0" encoding="UTF-8" ?>
<object class="kapow.robot.robomaker.robot.type.GenericRobot2" serializationversion="1">
  <property name="roboTechVersion" class="String">8.0</property>
  <property name="startModelObjects" class="kapow.robot.robomaker.state.ModelObjects">
    <element class="kapow.robot.common.domain.Entity">
      <property name="entityModel" class="kapow.robot.common.domain.EntityModelReference">
        <property name="entityModelName" class="String">quora_result</property>
      </property>
    </element>
  </property>
  <property name="queryParameters" class="kapow.robot.robomaker.state.ModelObjects">
    <element class="kapow.robot.common.domain.Entity">
      <property name="entityModel" class="kapow.robot.common.domain.EntityModelReference">
        <property name="entityModelName" class="String">comment_input</property>
      </property>
    </element>
    <element class="kapow.robot.common.domain.Entity">
      <property name="entityModel" class="kapow.robot.common.domain.EntityModelReference">
        <property name="entityModelName" class="String">quora_input</property>
      </property>
    </element>
    <element class="kapow.robot.common.domain.Entity">
      <property name="entityModel" class="kapow.robot.common.domain.EntityModelReference">
        <property name="entityModelName" class="String">tag_input</property>
      </property>
    </element>
    <element class="kapow.robot.common.domain.Entity">
      <property name="entityModel" class="kapow.robot.common.domain.EntityModelReference">
        <property name="entityModelName" class="String">talk_input</property>
      </property>
    </element>
    <element class="kapow.robot.common.domain.Entity">
      <property name="entityModel" class="kapow.robot.common.domain.EntityModelReference">
        <property name="entityModelName" class="String">the_account_input</property>
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
    <blockBeginStep class="BlockBeginStep" id="0"/>
    <steps class="ArrayList">
      <object class="End" id="1">
        <property name="id" class="Integer">1</property>
      </object>
      <object class="Group" id="2">
        <id class="Integer">56</id>
        <name class="String">tag关注</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="3"/>
        <steps class="ArrayList">
          <object class="Transition" id="4">
            <property name="name" class="String">Enter tag</property>
            <property name="stateProcessor" class="EnterText">
              <property name="textExpression" class="kapow.robot.plugin.common.support.expression.multipletype.AttributeValueExpression">
                <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName">
                  <property name="name" class="String" id="5">tag_input.tag_name</property>
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
                  <property name="text" class="String">hobby_input</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">59</property>
          </object>
          <object class="Transition" id="6">
            <property name="name" class="String">Click 查找</property>
            <property name="stateProcessor" class="Click">
              <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
                <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
              <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.a</property>
                </property>
                <property name="attributeName" class="String">id</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">hobby_btn</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">60</property>
          </object>
          <object class="Transition" id="7">
            <property name="name" class="String">For Each Tag</property>
            <property name="stateProcessor" class="ForEachTag">
              <property name="tag" class="String">li</property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
              <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.ul</property>
                </property>
                <property name="attributeName" class="String">id</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">feed_list</property>
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
            <property name="id" class="Integer">62</property>
          </object>
          <object class="Transition" id="8">
            <property name="name" class="String">Test Tag</property>
            <property name="stateProcessor" class="TestTag" serializationversion="0">
              <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                <property name="value" class="String">.*&lt;span class="addnew"&gt;\+&lt;\/span&gt;.*</property>
              </property>
              <property name="include" class="Boolean">true</property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
              <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
                <property name="referenceNodeRelation" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.relation.InReferenceNodeRelation">
                  <property name="referenceNodeIndex" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.ReferenceNodeIndex"/>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">*</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextIteration"/>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">63</property>
          </object>
          <object class="Transition" id="9">
            <property name="name" class="String">Click +加关注</property>
            <property name="stateProcessor" class="Click">
              <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
                <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
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
                <property name="attributeName" class="String">class</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">addFollow</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">64</property>
          </object>
          <object class="Transition" id="10">
            <property name="name" class="String">Query Tag</property>
            <property name="stateProcessor" class="QueryDatabase2" serializationversion="0">
              <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameStringExpression">
                <property name="value" class="kapow.util.db.DBName">
                  <property name="name" class="String" id="11">xuejiang_test</property>
                </property>
              </property>
              <property name="sql" class="String">"SELECT * FROM tag where is_processed = 'n' and account_id = " + the_account_input.account_id</property>
              <property name="columnAttributeMappings" class="kapow.robot.plugin.common.support.database.ColumnAttributeMappings">
                <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
                  <property name="columnName" class="String">id</property>
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">tag_input.tag_id</property>
                  </property>
                </object>
                <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
                  <property name="columnName" class="String">tag_name</property>
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" idref="5"/>
                  </property>
                </object>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList" id="12"/>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">108</property>
          </object>
          <object class="End" id="13">
            <property name="id" class="Integer">109</property>
          </object>
          <object class="BranchPoint" id="14">
            <property name="id" class="Integer">110</property>
          </object>
          <object class="Transition" id="15">
            <property name="name" class="String">Ext flag</property>
            <property name="stateProcessor" class="ExecuteSQL2" serializationversion="0">
              <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameStringExpression">
                <property name="value" class="kapow.util.db.DBName">
                  <property name="name" idref="11"/>
                </property>
              </property>
              <property name="sql" class="Expression" serializationversion="0">
                <property name="text" class="String">"UPDATE tag SET is_processed = '" + FLAG + "' WHERE id = " + tag_input.tag_id</property>
              </property>
            </property>
            <property name="nodeFinderList" idref="12"/>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">111</property>
          </object>
          <object class="Transition" id="16">
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
            <property name="id" class="Integer">121</property>
          </object>
          <object class="Transition" id="17">
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
            <property name="id" class="Integer">122</property>
          </object>
          <object class="Transition" id="18">
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
            <property name="id" class="Integer">178</property>
          </object>
          <object class="Transition" id="19">
            <property name="name" class="String">do?</property>
            <property name="stateProcessor" class="TestAttributes" serializationversion="0">
              <property name="conditions" class="kapow.robot.plugin.common.stateprocessor.attributefilter.AttributeFilterConditions">
                <object class="kapow.robot.plugin.common.stateprocessor.attributefilter.AttributeFilterCondition">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName">
                    <property name="name" class="String">the_account_input.is_tag</property>
                  </property>
                  <property name="expression" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                    <property name="value" class="String">y</property>
                  </property>
                  <property name="ignoreCase" class="Boolean">true</property>
                </object>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">211</property>
          </object>
          <object class="Try" id="20">
            <property name="id" class="Integer">215</property>
          </object>
          <object class="End" id="21">
            <property name="id" class="Integer">216</property>
          </object>
          <object class="Try" id="22">
            <property name="id" class="Integer">265</property>
          </object>
          <object class="End" id="23">
            <property name="id" class="Integer">266</property>
          </object>
          <object class="Transition" id="24">
            <property name="name" class="String">flag=a</property>
            <property name="stateProcessor" class="AssignGlobalVariable">
              <property name="value" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">a</property>
              </property>
              <property name="variableName" class="String">FLAG</property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">267</property>
          </object>
          <object class="Transition" id="25">
            <property name="name" class="String">Write Log</property>
            <property name="stateProcessor" class="WriteLog">
              <property name="expression" class="String">"tag....."</property>
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
            <property name="id" class="Integer">321</property>
          </object>
          <object class="Transition" id="26">
            <property name="name" class="String">Click 找人</property>
            <property name="stateProcessor" class="Click">
              <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
                <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
              <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.div.div.div.div.ul.li[6].a</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">336</property>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="27"/>
        <edges class="ArrayList">
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="3"/>
            <to idref="25"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="4"/>
            <to idref="6"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="6"/>
            <to idref="22"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="7"/>
            <to idref="16"/>
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
            <to idref="17"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="10"/>
            <to idref="14"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="14"/>
            <to idref="26"/>
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
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="15"/>
            <to idref="13"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="16"/>
            <to idref="8"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="17"/>
            <to idref="27"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="18"/>
            <to idref="10"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="19"/>
            <to idref="18"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="20"/>
            <to idref="19"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="20"/>
            <to idref="21"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="22"/>
            <to idref="7"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="22"/>
            <to idref="24"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="24"/>
            <to idref="23"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="25"/>
            <to idref="20"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="26"/>
            <to idref="4"/>
            <attachment>
              <null/>
            </attachment>
          </object>
        </edges>
      </object>
      <object class="BranchPoint" id="28">
        <property name="id" class="Integer">72</property>
      </object>
      <object class="Group" id="29">
        <id class="Integer">77</id>
        <name class="String">发言</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="30"/>
        <steps class="ArrayList">
          <object class="Transition" id="31">
            <property name="name" class="String">Enter Text</property>
            <property name="stateProcessor" class="EnterText">
              <property name="textExpression" class="kapow.robot.plugin.common.support.expression.multipletype.AttributeValueExpression">
                <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName">
                  <property name="name" class="String" id="32">talk_input.content</property>
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
                  <property name="text" class="String">publish_editor</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">78</property>
          </object>
          <object class="Transition" id="33">
            <property name="name" class="String">Click Link</property>
            <property name="stateProcessor" class="Click">
              <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
                <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
              <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.a</property>
                </property>
                <property name="attributeName" class="String">id</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">publisher_submit</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">79</property>
          </object>
          <object class="Transition" id="34">
            <property name="name" class="String">Query Tag</property>
            <property name="stateProcessor" class="QueryDatabase2" serializationversion="0">
              <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameStringExpression">
                <property name="value" class="kapow.util.db.DBName">
                  <property name="name" class="String">xuejiang_test</property>
                </property>
              </property>
              <property name="sql" class="String">"SELECT * FROM talk where is_processed = 'n' and account_id = " +the_account_input.account_id</property>
              <property name="columnAttributeMappings" class="kapow.robot.plugin.common.support.database.ColumnAttributeMappings">
                <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
                  <property name="columnName" class="String">id</property>
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">talk_input.talk_id</property>
                  </property>
                </object>
                <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
                  <property name="columnName" class="String">content</property>
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" idref="32"/>
                  </property>
                </object>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">114</property>
          </object>
          <object class="End" id="35">
            <property name="id" class="Integer">116</property>
          </object>
          <object class="BranchPoint" id="36">
            <property name="id" class="Integer">117</property>
          </object>
          <object class="Transition" id="37">
            <property name="name" class="String">Ext flag</property>
            <property name="stateProcessor" class="ExecuteSQL2" serializationversion="0">
              <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameStringExpression">
                <property name="value" class="kapow.util.db.DBName">
                  <property name="name" class="String">xuejiang_test</property>
                </property>
              </property>
              <property name="sql" class="Expression" serializationversion="0">
                <property name="text" class="String">"UPDATE talk SET is_processed = '" + FLAG + "' WHERE id = " +talk_input.talk_id</property>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">118</property>
          </object>
          <object class="Transition" id="38">
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
            <property name="id" class="Integer">119</property>
          </object>
          <object class="Try" id="39">
            <property name="id" class="Integer">138</property>
          </object>
          <object class="End" id="40">
            <property name="id" class="Integer">139</property>
          </object>
          <object class="Transition" id="41">
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
            <property name="id" class="Integer">140</property>
          </object>
          <object class="Transition" id="42">
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
            <property name="id" class="Integer">179</property>
          </object>
          <object class="Transition" id="43">
            <property name="name" class="String">Wait</property>
            <property name="stateProcessor" class="Wait" serializationversion="0">
              <property name="seconds" class="kapow.robot.plugin.common.support.expression.multipletype.AttributeValueExpression">
                <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName">
                  <property name="name" class="String">account_input.wait_second</property>
                </property>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList" id="44"/>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">208</property>
          </object>
          <object class="Transition" id="45">
            <property name="name" class="String">do?</property>
            <property name="stateProcessor" class="TestAttributes" serializationversion="0">
              <property name="conditions" class="kapow.robot.plugin.common.stateprocessor.attributefilter.AttributeFilterConditions">
                <object class="kapow.robot.plugin.common.stateprocessor.attributefilter.AttributeFilterCondition">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName">
                    <property name="name" class="String">the_account_input.is_talk</property>
                  </property>
                  <property name="expression" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                    <property name="value" class="String">y</property>
                  </property>
                  <property name="ignoreCase" class="Boolean">true</property>
                </object>
              </property>
            </property>
            <property name="nodeFinderList" idref="44"/>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">209</property>
          </object>
          <object class="Try" id="46">
            <property name="id" class="Integer">271</property>
          </object>
          <object class="End" id="47">
            <property name="id" class="Integer">272</property>
          </object>
          <object class="Transition" id="48">
            <property name="name" class="String">Write Log</property>
            <property name="stateProcessor" class="WriteLog">
              <property name="expression" class="String">"talk....."</property>
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
            <property name="id" class="Integer">316</property>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="49"/>
        <edges class="ArrayList">
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="30"/>
            <to idref="48"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="31"/>
            <to idref="33"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="33"/>
            <to idref="38"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="34"/>
            <to idref="36"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="36"/>
            <to idref="31"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="36"/>
            <to idref="37"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="37"/>
            <to idref="35"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="38"/>
            <to idref="43"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="39"/>
            <to idref="34"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="39"/>
            <to idref="41"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="41"/>
            <to idref="40"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="42"/>
            <to idref="39"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="43"/>
            <to idref="49"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="45"/>
            <to idref="42"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="46"/>
            <to idref="45"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="46"/>
            <to idref="47"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="48"/>
            <to idref="46"/>
            <attachment>
              <null/>
            </attachment>
          </object>
        </edges>
      </object>
      <object class="End" id="50">
        <property name="id" class="Integer">80</property>
      </object>
      <object class="End" id="51">
        <property name="id" class="Integer">81</property>
      </object>
      <object class="Group" id="52">
        <id class="Integer">89</id>
        <name class="String">评论</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="53"/>
        <steps class="ArrayList">
          <object class="Transition" id="54">
            <property name="name" class="String">For Each Tag</property>
            <property name="stateProcessor" class="ForEachTag">
              <property name="tag" class="String">li</property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
              <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.ul</property>
                </property>
                <property name="attributeName" class="String">id</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">feed_list</property>
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
            <property name="id" class="Integer">90</property>
          </object>
          <object class="Transition" id="55">
            <property name="name" class="String">Click 评论</property>
            <property name="stateProcessor" class="Click">
              <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
                <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
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
                <property name="nodePattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                  <property name="value" class="String">.*&gt;评论&lt;.*</property>
                </property>
                <property name="matchAgainst" class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.AbstractDefaultNodeFinder$PatternMatchTextType" id="56">
                  <property name="enum-name" class="String">HTML</property>
                </property>
                <property name="nodeDepthSpecification" class="kapow.robot.robomaker.state.document.nodefinder.nodedepth.InnermostNodeDepthSpecification"/>
              </object>
            </property>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">91</property>
          </object>
          <object class="Transition" id="57">
            <property name="name" class="String">Enter Text</property>
            <property name="stateProcessor" class="EnterText">
              <property name="textExpression" class="kapow.robot.plugin.common.support.expression.multipletype.AttributeValueExpression">
                <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName">
                  <property name="name" class="String" id="58">comment_input.content</property>
                </property>
              </property>
              <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
                <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
              <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
                <property name="referenceNodeRelation" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.relation.InReferenceNodeRelation">
                  <property name="referenceNodeIndex" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.ReferenceNodeIndex"/>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.textarea</property>
                </property>
                <property name="attributeName" class="String">class</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">lf</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">92</property>
          </object>
          <object class="Transition" id="59">
            <property name="name" class="String">Click 评论</property>
            <property name="stateProcessor" class="Click">
              <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
                <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
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
                <property name="attributeName" class="String">class</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">btn_normal</property>
                </property>
                <property name="nodePattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                  <property name="value" class="String">.*评论.*</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">94</property>
          </object>
          <object class="Transition" id="60">
            <property name="name" class="String">Query Comment</property>
            <property name="stateProcessor" class="QueryDatabase2" serializationversion="0">
              <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameStringExpression">
                <property name="value" class="kapow.util.db.DBName">
                  <property name="name" class="String">xuejiang_test</property>
                </property>
              </property>
              <property name="sql" class="String">"SELECT * FROM comment where is_processed = 'n' and account_id = " + the_account_input.account_id</property>
              <property name="columnAttributeMappings" class="kapow.robot.plugin.common.support.database.ColumnAttributeMappings">
                <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
                  <property name="columnName" class="String">id</property>
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">comment_input.comment_id</property>
                  </property>
                </object>
                <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
                  <property name="columnName" class="String">content</property>
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" idref="58"/>
                  </property>
                </object>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">124</property>
          </object>
          <object class="End" id="61">
            <property name="id" class="Integer">127</property>
          </object>
          <object class="BranchPoint" id="62">
            <property name="id" class="Integer">128</property>
          </object>
          <object class="Transition" id="63">
            <property name="name" class="String">Ext flag</property>
            <property name="stateProcessor" class="ExecuteSQL2" serializationversion="0">
              <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameStringExpression">
                <property name="value" class="kapow.util.db.DBName">
                  <property name="name" class="String">xuejiang_test</property>
                </property>
              </property>
              <property name="sql" class="Expression" serializationversion="0">
                <property name="text" class="String">"UPDATE comment SET is_processed = '" + FLAG + "' WHERE id = " +comment_input.comment_id</property>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">129</property>
          </object>
          <object class="Transition" id="64">
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
            <property name="id" class="Integer">130</property>
          </object>
          <object class="Transition" id="65">
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
            <property name="id" class="Integer">132</property>
          </object>
          <object class="Transition" id="66">
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
            <property name="id" class="Integer">180</property>
          </object>
          <object class="Transition" id="67">
            <property name="name" class="String">do?</property>
            <property name="stateProcessor" class="TestAttributes" serializationversion="0">
              <property name="conditions" class="kapow.robot.plugin.common.stateprocessor.attributefilter.AttributeFilterConditions">
                <object class="kapow.robot.plugin.common.stateprocessor.attributefilter.AttributeFilterCondition">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName">
                    <property name="name" class="String">the_account_input.is_comment</property>
                  </property>
                  <property name="expression" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                    <property name="value" class="String">y</property>
                  </property>
                  <property name="ignoreCase" class="Boolean">true</property>
                </object>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">212</property>
          </object>
          <object class="Try" id="68">
            <property name="id" class="Integer">217</property>
          </object>
          <object class="End" id="69">
            <property name="id" class="Integer">218</property>
          </object>
          <object class="Try" id="70">
            <property name="id" class="Integer">268</property>
          </object>
          <object class="End" id="71">
            <property name="id" class="Integer">269</property>
          </object>
          <object class="Transition" id="72">
            <property name="name" class="String">flag=c</property>
            <property name="stateProcessor" class="AssignGlobalVariable">
              <property name="value" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">c</property>
              </property>
              <property name="variableName" class="String">FLAG</property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">270</property>
          </object>
          <object class="Transition" id="73">
            <property name="name" class="String">Write Log</property>
            <property name="stateProcessor" class="WriteLog">
              <property name="expression" class="String">"comment....."</property>
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
            <property name="id" class="Integer">322</property>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="74"/>
        <edges class="ArrayList">
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="53"/>
            <to idref="73"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="54"/>
            <to idref="65"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="55"/>
            <to idref="57"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="57"/>
            <to idref="59"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="59"/>
            <to idref="64"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="60"/>
            <to idref="62"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="62"/>
            <to idref="70"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="62"/>
            <to idref="63"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="63"/>
            <to idref="61"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="64"/>
            <to idref="74"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="65"/>
            <to idref="55"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="66"/>
            <to idref="60"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="67"/>
            <to idref="66"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="68"/>
            <to idref="67"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="68"/>
            <to idref="69"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="70"/>
            <to idref="54"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="70"/>
            <to idref="72"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="72"/>
            <to idref="71"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="73"/>
            <to idref="68"/>
            <attachment>
              <null/>
            </attachment>
          </object>
        </edges>
      </object>
      <object class="Group" id="75">
        <id class="Integer">102</id>
        <name class="String">Login</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="76"/>
        <steps class="ArrayList">
          <object class="Transition" id="77">
            <property name="name" class="String">Click 使用msn帐号登录</property>
            <property name="stateProcessor" class="Click">
              <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
                <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String">executeJavaScript</element>
                </property>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
              <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.a</property>
                </property>
                <property name="attributeName" class="String">class</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">msnlink</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">103</property>
          </object>
          <object class="Transition" id="78">
            <property name="name" class="String">Enter Login</property>
            <property name="stateProcessor" class="EnterText">
              <property name="textExpression" class="kapow.robot.plugin.common.support.expression.multipletype.AttributeValueExpression">
                <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName">
                  <property name="name" class="String" id="79">the_account_input.login</property>
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
                  <property name="text" class="String">txtLiveID</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">104</property>
          </object>
          <object class="Transition" id="80">
            <property name="name" class="String">Enter Pwd</property>
            <property name="stateProcessor" class="EnterPassword">
              <property name="passwordExpression" class="kapow.robot.plugin.common.support.expression.multipletype.AttributeValueExpression">
                <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName">
                  <property name="name" class="String" id="81">the_account_input.password</property>
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
                  <property name="text" class="String">txtPassword</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">105</property>
          </object>
          <object class="Transition" id="82">
            <property name="name" class="String">Query Account</property>
            <property name="stateProcessor" class="QueryDatabase2" serializationversion="0">
              <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameStringExpression">
                <property name="value" class="kapow.util.db.DBName">
                  <property name="name" class="String">xuejiang_test</property>
                </property>
              </property>
              <property name="sql" class="String">"SELECT * FROM account where is_processed = 'n'"</property>
              <property name="columnAttributeMappings" class="kapow.robot.plugin.common.support.database.ColumnAttributeMappings">
                <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
                  <property name="columnName" class="String">wait_second</property>
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">the_account_input.wait_second</property>
                  </property>
                </object>
                <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
                  <property name="columnName" class="String">is_quora</property>
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">the_account_input.is_quora</property>
                  </property>
                </object>
                <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
                  <property name="columnName" class="String">id</property>
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">the_account_input.account_id</property>
                  </property>
                </object>
                <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
                  <property name="columnName" class="String">is_talk</property>
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">the_account_input.is_talk</property>
                  </property>
                </object>
                <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
                  <property name="columnName" class="String">is_tag</property>
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">the_account_input.is_tag</property>
                  </property>
                </object>
                <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
                  <property name="columnName" class="String">is_guess</property>
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">the_account_input.is_guess</property>
                  </property>
                </object>
                <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
                  <property name="columnName" class="String">is_comment</property>
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">the_account_input.is_comment</property>
                  </property>
                </object>
                <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
                  <property name="columnName" class="String">url</property>
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String" id="83">the_account_input.url</property>
                  </property>
                </object>
                <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
                  <property name="columnName" class="String">login</property>
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" idref="79"/>
                  </property>
                </object>
                <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
                  <property name="columnName" class="String">password</property>
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" idref="81"/>
                  </property>
                </object>
                <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
                  <property name="columnName" class="String">process_count</property>
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">the_account_input.process_count</property>
                  </property>
                </object>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">107</property>
          </object>
          <object class="Transition" id="84">
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
            <property name="id" class="Integer">133</property>
          </object>
          <object class="End" id="85">
            <property name="id" class="Integer">134</property>
          </object>
          <object class="BranchPoint" id="86">
            <property name="id" class="Integer">135</property>
          </object>
          <object class="Transition" id="87">
            <property name="name" class="String">Ext flag</property>
            <property name="stateProcessor" class="ExecuteSQL2" serializationversion="0">
              <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameStringExpression">
                <property name="value" class="kapow.util.db.DBName">
                  <property name="name" class="String">xuejiang_test</property>
                </property>
              </property>
              <property name="sql" class="Expression" serializationversion="0">
                <property name="text" class="String">"UPDATE account SET is_processed = '" + FLAG + "' WHERE id = " +the_account_input.account_id</property>
              </property>
              <property name="executeInDesignMode" class="Boolean">true</property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">136</property>
          </object>
          <object class="Transition" id="88">
            <property name="name" class="String">Wait</property>
            <property name="stateProcessor" class="Wait" serializationversion="0">
              <property name="seconds" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">10.0</property>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">323</property>
          </object>
          <object class="Transition" id="89">
            <property name="name" class="String">Write Log</property>
            <property name="stateProcessor" class="WriteLog">
              <property name="expression" class="String">"login successful....."</property>
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
            <property name="id" class="Integer">327</property>
          </object>
          <object class="Transition" id="90">
            <property name="name" class="String">Load Page</property>
            <property name="stateProcessor" class="LoadPage2">
              <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
                <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
              </property>
              <property name="urlProvider" class="kapow.robot.plugin.common.stepaction.urlprovider2.AttributeURLProvider2">
                <property name="attribute" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" idref="83"/>
                </property>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">328</property>
          </object>
          <object class="Transition" id="91">
            <property name="name" class="String">Click 连接</property>
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
                  <property name="text" class="String">btConsent</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">331</property>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="92"/>
        <edges class="ArrayList">
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="76"/>
            <to idref="82"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="77"/>
            <to idref="78"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="78"/>
            <to idref="80"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="80"/>
            <to idref="91"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="82"/>
            <to idref="86"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="84"/>
            <to idref="90"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="86"/>
            <to idref="84"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="86"/>
            <to idref="87"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="87"/>
            <to idref="85"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="88"/>
            <to idref="92"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="89"/>
            <to idref="88"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="90"/>
            <to idref="77"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="91"/>
            <to idref="89"/>
            <attachment>
              <null/>
            </attachment>
          </object>
        </edges>
      </object>
      <object class="Transition" id="93">
        <property name="name" class="String">Create flag</property>
        <property name="stateProcessor" class="CreateGlobalVariable">
          <property name="variableName" class="String">FLAG</property>
          <property name="defaultValue" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">0</property>
          </property>
        </property>
        <property name="nodeFinderList" idref="12"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">112</property>
      </object>
      <object class="Group" id="94">
        <id class="Integer">144</id>
        <name class="String">新浪猜</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="95"/>
        <steps class="ArrayList">
          <object class="Transition" id="96">
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
            <property name="id" class="Integer">154</property>
          </object>
          <object class="Transition" id="97">
            <property name="name" class="String">Set Current Tag</property>
            <property name="stateProcessor" class="SetCurrentTag"/>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
              <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.div</property>
                </property>
                <property name="attributeName" class="String">id</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">maybe_friens_container</property>
                </property>
                <property name="matchAgainst" idref="56"/>
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
            <property name="id" class="Integer">156</property>
          </object>
          <object class="Transition" id="98">
            <property name="name" class="String">Click 更多&gt;&gt;</property>
            <property name="stateProcessor" class="Click">
              <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
                <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider" id="99"/>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
              <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
                <property name="referenceNodeRelation" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.relation.InReferenceNodeRelation">
                  <property name="referenceNodeIndex" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.ReferenceNodeIndex"/>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.div.a</property>
                </property>
                <property name="nodePattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                  <property name="value" class="String">.*更多.*</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">157</property>
          </object>
          <object class="Try" id="100">
            <property name="id" class="Integer">164</property>
          </object>
          <object class="End" id="101">
            <property name="id" class="Integer">165</property>
          </object>
          <object class="Transition" id="102">
            <property name="name" class="String">For Each Tag</property>
            <property name="stateProcessor" class="ForEachTag">
              <property name="tag" class="String">li</property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
              <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.ul</property>
                </property>
                <property name="attributeName" class="String">id</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">guess_container</property>
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
            <property name="id" class="Integer">166</property>
          </object>
          <object class="Transition" id="103">
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
            <property name="id" class="Integer">167</property>
          </object>
          <object class="Transition" id="104">
            <property name="name" class="String">Click +加关注</property>
            <property name="stateProcessor" class="Click">
              <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
                <property name="ancestorProvider" idref="99"/>
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
                <property name="attributeName" class="String">class</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">addFollow </property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextIteration"/>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">168</property>
          </object>
          <object class="Transition" id="105">
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
            <property name="id" class="Integer">169</property>
          </object>
          <object class="Transition" id="106">
            <property name="name" class="String" id="107">Repeat</property>
            <property name="stateProcessor" class="Repeat"/>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">171</property>
          </object>
          <object class="End" id="108">
            <property name="id" class="Integer">172</property>
          </object>
          <object class="BranchPoint" id="109">
            <property name="id" class="Integer">173</property>
          </object>
          <object class="Transition" id="110">
            <property name="name" class="String">Click 换一换</property>
            <property name="stateProcessor" class="Click">
              <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
                <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
              <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.a</property>
                </property>
                <property name="attributeName" class="String">class</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">btn_normal btnxs</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">174</property>
          </object>
          <object class="Transition" id="111">
            <property name="name" class="String">flag=g</property>
            <property name="stateProcessor" class="AssignGlobalVariable">
              <property name="value" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">g</property>
              </property>
              <property name="variableName" class="String">FLAG</property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">175</property>
          </object>
          <object class="Transition" id="112">
            <property name="name" class="String">Next</property>
            <property name="stateProcessor" class="Next"/>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">195</property>
          </object>
          <object class="Transition" id="113">
            <property name="name" class="String">PAGE_INDEX=0</property>
            <property name="stateProcessor" class="AssignGlobalVariable">
              <property name="value" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">0</property>
              </property>
              <property name="variableName" class="String" id="114">PAGE_INDEX</property>
            </property>
            <property name="nodeFinderList" idref="44"/>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">205</property>
          </object>
          <object class="Transition" id="115">
            <property name="name" class="String">PAGE_INDEX++</property>
            <property name="stateProcessor" class="IncreaseGlobalVariable">
              <property name="variableName" idref="114"/>
            </property>
            <property name="nodeFinderList" idref="44"/>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">206</property>
          </object>
          <object class="Transition" id="116">
            <property name="name" class="String">PAGE_INDEX&lt;10?</property>
            <property name="stateProcessor" class="TestValue" serializationversion="0">
              <property name="condition" class="Expression" serializationversion="0">
                <property name="text" class="String">PAGE_INDEX &lt; 10</property>
              </property>
            </property>
            <property name="nodeFinderList" idref="44"/>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$BreakLoop">
                <property name="targetStepSelector" class="kapow.robot.robomaker.robot.ControlFlow$TargetStepSelector">
                  <property name="name" idref="107"/>
                </property>
              </property>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">207</property>
          </object>
          <object class="Transition" id="117">
            <property name="name" class="String">do?</property>
            <property name="stateProcessor" class="TestAttributes" serializationversion="0">
              <property name="conditions" class="kapow.robot.plugin.common.stateprocessor.attributefilter.AttributeFilterConditions">
                <object class="kapow.robot.plugin.common.stateprocessor.attributefilter.AttributeFilterCondition">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName">
                    <property name="name" class="String">the_account_input.is_guess</property>
                  </property>
                  <property name="expression" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                    <property name="value" class="String">y</property>
                  </property>
                  <property name="ignoreCase" class="Boolean">true</property>
                </object>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">210</property>
          </object>
          <object class="Try" id="118">
            <property name="id" class="Integer">213</property>
          </object>
          <object class="End" id="119">
            <property name="id" class="Integer">214</property>
          </object>
          <object class="Transition" id="120">
            <property name="name" class="String">Write Log</property>
            <property name="stateProcessor" class="WriteLog">
              <property name="expression" class="String">"guess....."</property>
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
            <property name="id" class="Integer">320</property>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="121"/>
        <edges class="ArrayList">
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="95"/>
            <to idref="120"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="96"/>
            <to idref="113"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="97"/>
            <to idref="98"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="98"/>
            <to idref="106"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="100"/>
            <to idref="102"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="100"/>
            <to idref="111"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="102"/>
            <to idref="103"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="103"/>
            <to idref="104"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="104"/>
            <to idref="105"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="105"/>
            <to idref="121"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="106"/>
            <to idref="109"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="109"/>
            <to idref="115"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="109"/>
            <to idref="116"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="110"/>
            <to idref="112"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="111"/>
            <to idref="101"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="112"/>
            <to idref="108"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="113"/>
            <to idref="97"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="115"/>
            <to idref="100"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="116"/>
            <to idref="110"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="117"/>
            <to idref="96"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="118"/>
            <to idref="117"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="118"/>
            <to idref="119"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="120"/>
            <to idref="118"/>
            <attachment>
              <null/>
            </attachment>
          </object>
        </edges>
      </object>
      <object class="End" id="122">
        <property name="id" class="Integer">146</property>
      </object>
      <object class="Transition" id="123">
        <property name="name" class="String"> PAGE_INDEX</property>
        <property name="stateProcessor" class="CreateGlobalVariable">
          <property name="variableName" idref="114"/>
          <property name="defaultValue" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">0</property>
          </property>
        </property>
        <property name="nodeFinderList" idref="44"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">204</property>
      </object>
      <object class="Group" id="124">
        <id class="Integer">230</id>
        <name class="String">问-答</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="125"/>
        <steps class="ArrayList">
          <object class="Try" id="126">
            <property name="id" class="Integer">231</property>
          </object>
          <object class="End" id="127">
            <property name="id" class="Integer">232</property>
          </object>
          <object class="Transition" id="128">
            <property name="name" class="String">do?</property>
            <property name="stateProcessor" class="TestAttributes" serializationversion="0">
              <property name="conditions" class="kapow.robot.plugin.common.stateprocessor.attributefilter.AttributeFilterConditions">
                <object class="kapow.robot.plugin.common.stateprocessor.attributefilter.AttributeFilterCondition">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName">
                    <property name="name" class="String">the_account_input.is_quora</property>
                  </property>
                  <property name="expression" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                    <property name="value" class="String">y</property>
                  </property>
                  <property name="ignoreCase" class="Boolean">true</property>
                </object>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">233</property>
          </object>
          <object class="Transition" id="129">
            <property name="name" class="String" id="130">For Each Tag</property>
            <property name="stateProcessor" class="ForEachTag">
              <property name="tag" class="String">li</property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
              <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.ul</property>
                </property>
                <property name="attributeName" class="String">id</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">feed_list</property>
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
            <property name="id" class="Integer">234</property>
          </object>
          <object class="Transition" id="131">
            <property name="name" class="String" id="132">Query Comment</property>
            <property name="stateProcessor" class="QueryDatabase2" serializationversion="0">
              <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameStringExpression">
                <property name="value" class="kapow.util.db.DBName">
                  <property name="name" class="String">xuejiang_test</property>
                </property>
              </property>
              <property name="sql" class="String">"SELECT * FROM quora where is_processed = 'n' and account_id = " + the_account_input.account_id</property>
              <property name="columnAttributeMappings" class="kapow.robot.plugin.common.support.database.ColumnAttributeMappings">
                <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
                  <property name="columnName" class="String">id</property>
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">quora_input.quora_id</property>
                  </property>
                </object>
                <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
                  <property name="columnName" class="String">id</property>
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">quora_result.quora_id</property>
                  </property>
                </object>
                <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
                  <property name="columnName" class="String">question</property>
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String" id="133">quora_input.question</property>
                  </property>
                </object>
                <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
                  <property name="columnName" class="String">answer</property>
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">quora_input.answer</property>
                  </property>
                </object>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">235</property>
          </object>
          <object class="End" id="134">
            <property name="id" class="Integer">236</property>
          </object>
          <object class="BranchPoint" id="135">
            <property name="id" class="Integer">237</property>
          </object>
          <object class="Transition" id="136">
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
            <property name="id" class="Integer">239</property>
          </object>
          <object class="Transition" id="137">
            <property name="name" class="String">Enter Question</property>
            <property name="stateProcessor" class="EnterText">
              <property name="textExpression" class="kapow.robot.plugin.common.support.expression.multipletype.AttributeValueExpression">
                <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName">
                  <property name="name" idref="133"/>
                </property>
              </property>
              <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
                <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider" id="138"/>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
              <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.input</property>
                </property>
                <property name="attributeName" class="String">id</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">m_keyword</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">241</property>
          </object>
          <object class="Transition" id="139">
            <property name="name" class="String">Click</property>
            <property name="stateProcessor" class="Click">
              <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
                <property name="ancestorProvider" idref="138"/>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
              <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.span</property>
                </property>
                <property name="attributeName" class="String">act</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">isinput</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">242</property>
          </object>
          <object class="Transition" id="140">
            <property name="name" class="String">Enter Answer</property>
            <property name="stateProcessor" class="EnterText">
              <property name="textExpression" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression">
                <property name="stringProcessors" class="DataConverters">
                  <element class="GetAttribute">
                    <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName">
                      <property name="name" class="String">quora_input.answer</property>
                    </property>
                  </element>
                </property>
              </property>
              <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
                <property name="ancestorProvider" idref="138"/>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
              <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.textarea</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">246</property>
          </object>
          <object class="Transition" id="141">
            <property name="name" class="String">Click 评论</property>
            <property name="stateProcessor" class="Click">
              <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
                <property name="ancestorProvider" idref="138"/>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
              <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.a</property>
                </property>
                <property name="attributeName" class="String">class</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">btn_normal</property>
                </property>
                <property name="nodePattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                  <property name="value" class="String">.*评论.*</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextIteration"/>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">248</property>
          </object>
          <object class="Transition" id="142">
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
            <property name="id" class="Integer">249</property>
          </object>
          <object class="Transition" id="143">
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
            <property name="id" class="Integer">250</property>
          </object>
          <object class="Transition" id="144">
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
            <property name="id" class="Integer">252</property>
          </object>
          <object class="Transition" id="145">
            <property name="name" class="String">Repeat</property>
            <property name="stateProcessor" class="Repeat"/>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">253</property>
          </object>
          <object class="Transition" id="146">
            <property name="name" class="String">PAGE_INDEX++</property>
            <property name="stateProcessor" class="IncreaseGlobalVariable">
              <property name="variableName" class="String">PAGE_INDEX</property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">254</property>
          </object>
          <object class="Try" id="147">
            <property name="id" class="Integer">255</property>
          </object>
          <object class="End" id="148">
            <property name="id" class="Integer">256</property>
          </object>
          <object class="Transition" id="149">
            <property name="name" class="String">flag=q</property>
            <property name="stateProcessor" class="AssignGlobalVariable">
              <property name="value" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">q</property>
              </property>
              <property name="variableName" class="String">FLAG</property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">257</property>
          </object>
          <object class="Transition" id="150">
            <property name="name" class="String">PAGE_INDEX&lt;10?</property>
            <property name="stateProcessor" class="TestValue" serializationversion="0">
              <property name="condition" class="Expression" serializationversion="0">
                <property name="text" class="String">PAGE_INDEX &lt; 10</property>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$BreakLoop">
                <property name="targetStepSelector" class="kapow.robot.robomaker.robot.ControlFlow$TargetStepSelector">
                  <property name="name" class="String">Repeat</property>
                </property>
              </property>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">258</property>
          </object>
          <object class="End" id="151">
            <property name="id" class="Integer">259</property>
          </object>
          <object class="BranchPoint" id="152">
            <property name="id" class="Integer">260</property>
          </object>
          <object class="Transition" id="153">
            <property name="name" class="String">Ext flag</property>
            <property name="stateProcessor" class="ExecuteSQL2" serializationversion="0">
              <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameStringExpression">
                <property name="value" class="kapow.util.db.DBName">
                  <property name="name" class="String">xuejiang_test</property>
                </property>
              </property>
              <property name="sql" class="Expression" serializationversion="0">
                <property name="text" class="String">"UPDATE quora SET is_processed = '" + FLAG + "' WHERE id = " +quora_input.quora_id</property>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">261</property>
          </object>
          <object class="Transition" id="154">
            <property name="name" class="String">Next</property>
            <property name="stateProcessor" class="Next"/>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">262</property>
          </object>
          <object class="Transition" id="155">
            <property name="name" class="String">Click 下一页</property>
            <property name="stateProcessor" class="Click">
              <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
                <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
              <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.a</property>
                </property>
                <property name="nodePattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                  <property name="value" class="String">.*下一页.*</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextIteration">
                <property name="targetStepSelector" class="kapow.robot.robomaker.robot.ControlFlow$TargetStepSelector">
                  <property name="name" idref="132"/>
                </property>
              </property>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">264</property>
          </object>
          <object class="Transition" id="156">
            <property name="name" class="String">Store Object in Database</property>
            <property name="stateProcessor" class="StoreInDatabase">
              <property name="db" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameStringExpression">
                <property name="value" class="kapow.util.db.DBName">
                  <property name="name" class="String">xuejiang_test</property>
                </property>
              </property>
              <property name="object" class="kapow.robot.plugin.common.support.ModelName">
                <property name="name" class="String">quora_result</property>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">273</property>
          </object>
          <object class="Transition" id="157">
            <property name="name" class="String">Wait</property>
            <property name="stateProcessor" class="Wait" serializationversion="0">
              <property name="seconds" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">10.0</property>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList" id="158"/>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">280</property>
          </object>
          <object class="Transition" id="159">
            <property name="name" class="String">Extract URL</property>
            <property name="stateProcessor" class="ExtractURL">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">quora_result.url</property>
              </property>
              <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
                <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
              <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
                <property name="referenceNodeRelation" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.relation.InReferenceNodeRelation">
                  <property name="referenceNodeIndex" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.ReferenceNodeIndex"/>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.cite.a</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">281</property>
          </object>
          <object class="Transition" id="160">
            <property name="name" class="String">Click Detail</property>
            <property name="stateProcessor" class="Click">
              <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
                <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
              <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
                <property name="referenceNodeRelation" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.relation.InReferenceNodeRelation">
                  <property name="referenceNodeIndex" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.ReferenceNodeIndex"/>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.cite.a</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextIteration"/>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">282</property>
          </object>
          <object class="Transition" id="161">
            <property name="name" class="String">Assign Answer</property>
            <property name="stateProcessor" class="AssignAttribute">
              <property name="stringExpr" class="Expression" serializationversion="0">
                <property name="text" class="String">"[" + shortTime(now()) + "]     "+ quora_input.answer </property>
              </property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">quora_input.answer</property>
              </property>
            </property>
            <property name="nodeFinderList" idref="158"/>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment" class="String">uniq by Answer</property>
            <property name="id" class="Integer">283</property>
          </object>
          <object class="Try" id="162">
            <property name="id" class="Integer">287</property>
          </object>
          <object class="Transition" id="163">
            <property name="name" class="String">Test Tag</property>
            <property name="stateProcessor" class="TestTag" serializationversion="0">
              <property name="String Procs." class="DataConverters">
                <element class="GetAttribute">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName">
                    <property name="name" class="String">account_input.url</property>
                  </property>
                </element>
              </property>
              <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                <property name="value" class="String">http://t.sina.com.cn.*</property>
              </property>
              <property name="include" class="Boolean">true</property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
              <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">*</property>
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
            <property name="id" class="Integer">289</property>
          </object>
          <object class="Transition" id="164">
            <property name="name" class="String">Set Current Window</property>
            <property name="stateProcessor" class="SetCurrentWindow">
              <property name="windowReference" class="kapow.robot.robomaker.state.window.reference.IdBasedWindowReference">
                <property name="windowId" class="String">Unnamed</property>
              </property>
            </property>
            <property name="nodeFinderList" idref="158"/>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">290</property>
          </object>
          <object class="Transition" id="165">
            <property name="name" class="String">Test Tag</property>
            <property name="stateProcessor" class="TestTag" serializationversion="0">
              <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                <property name="value" class="String">.*&lt;a href="http://t.sina.com.cn/1990893215".*</property>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
              <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">*</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextIteration">
                <property name="targetStepSelector" class="kapow.robot.robomaker.robot.ControlFlow$TargetStepSelector">
                  <property name="name" idref="130"/>
                </property>
              </property>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">295</property>
          </object>
          <object class="Transition" id="166">
            <property name="name" class="String">no result?</property>
            <property name="stateProcessor" class="TestTag" serializationversion="0">
              <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                <property name="value" class="String">.*class="sorry".*</property>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
              <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">*</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextIteration">
                <property name="targetStepSelector" class="kapow.robot.robomaker.robot.ControlFlow$TargetStepSelector">
                  <property name="name" class="String">Query Comment</property>
                </property>
              </property>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">298</property>
          </object>
          <object class="Transition" id="167">
            <property name="name" class="String">Write Log</property>
            <property name="stateProcessor" class="WriteLog">
              <property name="expression" class="String">"quora....."</property>
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
            <property name="id" class="Integer">319</property>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="168"/>
        <edges class="ArrayList">
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="125"/>
            <to idref="167"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="126"/>
            <to idref="128"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="126"/>
            <to idref="127"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="128"/>
            <to idref="144"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="129"/>
            <to idref="142"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="131"/>
            <to idref="152"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="135"/>
            <to idref="146"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="135"/>
            <to idref="150"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="136"/>
            <to idref="157"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="137"/>
            <to idref="139"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="139"/>
            <to idref="166"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="140"/>
            <to idref="141"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="141"/>
            <to idref="164"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="142"/>
            <to idref="159"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="143"/>
            <to idref="131"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="144"/>
            <to idref="143"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="145"/>
            <to idref="135"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="146"/>
            <to idref="147"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="147"/>
            <to idref="129"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="147"/>
            <to idref="149"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="149"/>
            <to idref="148"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="150"/>
            <to idref="155"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="152"/>
            <to idref="137"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="152"/>
            <to idref="153"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="153"/>
            <to idref="151"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="154"/>
            <to idref="134"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="155"/>
            <to idref="154"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="156"/>
            <to idref="136"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="157"/>
            <to idref="168"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="159"/>
            <to idref="160"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="160"/>
            <to idref="165"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="161"/>
            <to idref="140"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="162"/>
            <to idref="163"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="162"/>
            <to idref="136"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="163"/>
            <to idref="156"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="164"/>
            <to idref="162"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="165"/>
            <to idref="161"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="166"/>
            <to idref="145"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="167"/>
            <to idref="126"/>
            <attachment>
              <null/>
            </attachment>
          </object>
        </edges>
      </object>
      <object class="End" id="169">
        <property name="id" class="Integer">240</property>
      </object>
    </steps>
    <blockEndStep class="BlockEndStep"/>
    <edges class="ArrayList">
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="0"/>
        <to idref="93"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="2"/>
        <to idref="1"/>
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
        <from idref="28"/>
        <to idref="94"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="28"/>
        <to idref="2"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="28"/>
        <to idref="52"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="28"/>
        <to idref="124"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="29"/>
        <to idref="50"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="52"/>
        <to idref="51"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="75"/>
        <to idref="28"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="93"/>
        <to idref="123"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="94"/>
        <to idref="122"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="123"/>
        <to idref="75"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="124"/>
        <to idref="169"/>
        <attachment>
          <null/>
        </attachment>
      </object>
    </edges>
  </property>
  <property name="nextTransitionId" class="Integer">337</property>
  <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
    <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.RobotDefaultBrowserConfigurationSpecificationAncestorProvider"/>
  </property>
</object>
