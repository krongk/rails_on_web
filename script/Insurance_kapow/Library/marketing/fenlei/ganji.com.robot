<?xml version="1.0" encoding="UTF-8" ?>
<object class="kapow.robot.robomaker.robot.type.GenericRobot2" serializationversion="1">
  <property name="roboTechVersion" class="String">8.0</property>
  <property name="startModelObjects" class="kapow.robot.robomaker.state.ModelObjects"/>
  <property name="queryParameters" class="kapow.robot.robomaker.state.ModelObjects">
    <element class="kapow.robot.common.domain.Entity">
      <property name="entityModel" class="kapow.robot.common.domain.EntityModelReference">
        <property name="entityModelName" class="String">job_input</property>
      </property>
    </element>
    <element class="kapow.robot.common.domain.Entity">
      <property name="entityModel" class="kapow.robot.common.domain.EntityModelReference">
        <property name="entityModelName" class="String">account_input</property>
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
        <property name="name" class="String">Load Page</property>
        <property name="stateProcessor" class="LoadPage2">
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider" id="2"/>
          </property>
          <property name="urlProvider" class="kapow.robot.plugin.common.stepaction.urlprovider2.ValueURLProvider2">
            <property name="URL" class="String">http://cd.ganji.com</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">0</property>
      </object>
      <object class="Transition" id="3">
        <property name="name" class="String">Create flag</property>
        <property name="stateProcessor" class="CreateGlobalVariable">
          <property name="variableName" class="String">flag</property>
          <property name="defaultValue" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">n</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">3</property>
      </object>
      <object class="End" id="4">
        <property name="id" class="Integer">23</property>
      </object>
      <object class="BranchPoint" id="5">
        <property name="id" class="Integer">24</property>
      </object>
      <object class="Transition" id="6">
        <property name="name" class="String">Query Database</property>
        <property name="stateProcessor" class="QueryDatabase2" serializationversion="0">
          <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameStringExpression">
            <property name="value" class="kapow.util.db.DBName">
              <property name="name" class="String">insurance</property>
            </property>
          </property>
          <property name="sql" class="String">"SELECT * FROM account where is_ganji_processed = 'n'"</property>
          <property name="columnAttributeMappings" class="kapow.robot.plugin.common.support.database.ColumnAttributeMappings">
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">id</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">account_input.account_id</property>
              </property>
            </object>
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
              <property name="columnName" class="String">email</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">account_input.email</property>
              </property>
            </object>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">25</property>
      </object>
      <object class="Transition" id="7">
        <property name="name" class="String">Log register</property>
        <property name="stateProcessor" class="WriteLog">
          <property name="expression" class="String">"register"</property>
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
        <property name="id" class="Integer">26</property>
      </object>
      <object class="Transition" id="8">
        <property name="name" class="String">Log login</property>
        <property name="stateProcessor" class="WriteLog">
          <property name="expression" class="String">"login"</property>
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
        <property name="id" class="Integer">27</property>
      </object>
      <object class="Transition" id="9">
        <property name="name" class="String">Load Login Page</property>
        <property name="stateProcessor" class="LoadPage2">
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider" id="10"/>
          </property>
          <property name="urlProvider" class="kapow.robot.plugin.common.stepaction.urlprovider2.ValueURLProvider2">
            <property name="URL" class="String">http://cd.ganji.com/user/login.php</property>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">28</property>
      </object>
      <object class="Transition" id="11">
        <property name="name" class="String">flag=login_f</property>
        <property name="stateProcessor" class="AssignGlobalVariable">
          <property name="value" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">login_f</property>
          </property>
          <property name="variableName" class="String">flag</property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">29</property>
      </object>
      <object class="Transition" id="12">
        <property name="name" class="String">Enter Login</property>
        <property name="stateProcessor" class="EnterText">
          <property name="textExpression" class="kapow.robot.plugin.common.support.expression.multipletype.AttributeValueExpression">
            <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName">
              <property name="name" class="String">account_input.login</property>
            </property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" idref="2"/>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.input</property>
            </property>
            <property name="attributeName" class="String" id="13">name</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">username</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">30</property>
      </object>
      <object class="Transition" id="14">
        <property name="name" class="String">Enter Password</property>
        <property name="stateProcessor" class="EnterPassword">
          <property name="passwordExpression" class="kapow.robot.plugin.common.support.expression.multipletype.AttributeValueExpression">
            <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName">
              <property name="name" class="String">account_input.password</property>
            </property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" idref="2"/>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.input</property>
            </property>
            <property name="attributeName" idref="13"/>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">password</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">31</property>
      </object>
      <object class="Transition" id="15">
        <property name="name" class="String">Click 登录赶集</property>
        <property name="stateProcessor" class="Click">
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" idref="2"/>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.input</property>
            </property>
            <property name="attributeName" class="String" id="16">id</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">login-submit</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">32</property>
      </object>
      <object class="Transition" id="17">
        <property name="name" class="String">flag=login_y</property>
        <property name="stateProcessor" class="AssignGlobalVariable">
          <property name="value" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">login_y</property>
          </property>
          <property name="variableName" class="String">flag</property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">33</property>
      </object>
      <object class="Transition" id="18">
        <property name="name" class="String">Test Tag</property>
        <property name="stateProcessor" class="TestTag" serializationversion="0">
          <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
            <property name="value" class="String">.*&gt;baoxian028.*</property>
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
        <property name="id" class="Integer">34</property>
      </object>
      <object class="Try" id="19">
        <property name="id" class="Integer">35</property>
      </object>
      <object class="End" id="20">
        <property name="id" class="Integer">36</property>
      </object>
      <object class="Transition" id="21">
        <property name="name" class="String">flag=login_error</property>
        <property name="stateProcessor" class="AssignGlobalVariable">
          <property name="value" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">login_error</property>
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
      <object class="Transition" id="22">
        <property name="name" class="String">Execute SQL</property>
        <property name="stateProcessor" class="ExecuteSQL2" serializationversion="0">
          <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameStringExpression">
            <property name="value" class="kapow.util.db.DBName">
              <property name="name" class="String">insurance</property>
            </property>
          </property>
          <property name="sql" class="Expression" serializationversion="0">
            <property name="text" class="String">"update account set is_ganji_processed = '" + flag + "' where id = " + account_input.account_id</property>
          </property>
          <property name="executeInDesignMode" class="Boolean">true</property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">38</property>
      </object>
      <object class="Transition" id="23">
        <property name="name" class="String">Log job</property>
        <property name="stateProcessor" class="WriteLog">
          <property name="expression" class="String">"job"</property>
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
        <property name="id" class="Integer">46</property>
      </object>
      <object class="Transition" id="24">
        <property name="name" class="String">Click 免费发布信息</property>
        <property name="stateProcessor" class="Click">
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" idref="2"/>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.div.div.a</property>
            </property>
            <property name="attributeName" class="String" id="25">class</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">pub_btn</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">47</property>
      </object>
      <object class="Transition" id="26">
        <property name="name" class="String">Click 全职招聘</property>
        <property name="stateProcessor" class="Click">
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" idref="2"/>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.div.div[2].ul.li[7].a</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">48</property>
      </object>
      <object class="Transition" id="27">
        <property name="name" class="String">Query Database</property>
        <property name="stateProcessor" class="QueryDatabase2" serializationversion="0">
          <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameStringExpression">
            <property name="value" class="kapow.util.db.DBName">
              <property name="name" class="String">insurance</property>
            </property>
          </property>
          <property name="sql" class="String">"SELECT * FROM job where is_ganji_processed = 'n' "</property>
          <property name="columnAttributeMappings" class="kapow.robot.plugin.common.support.database.ColumnAttributeMappings">
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">id</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">job_input.job_id</property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">title</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">job_input.title</property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">description</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">job_input.description</property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">contact_user</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">job_input.contact_user</property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">contact_phone</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">job_input.contact_phone</property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">company_name</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">job_input.company_name</property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">company_nike_name</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">job_input.company_nike_name</property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">company_contact_phone</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">job_input.company_contact_phone</property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">company_address</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">job_input.company_address</property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">company_description</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">job_input.company_description</property>
              </property>
            </object>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">49</property>
      </object>
      <object class="Transition" id="28">
        <property name="name" class="String">flag=y?</property>
        <property name="stateProcessor" class="TestValue" serializationversion="0">
          <property name="condition" class="Expression" serializationversion="0">
            <property name="text" class="String">flag == "y"</property>
          </property>
          <property name="generateErrorWhenStopping" class="Boolean">false</property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" class="Boolean">false</property>
          <property name="reportingViaLog" class="Boolean">false</property>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$IgnoreAndContinue"/>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">50</property>
      </object>
      <object class="Transition" id="29">
        <property name="name" class="String">flag=c</property>
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
        <property name="id" class="Integer">51</property>
      </object>
      <object class="Transition" id="30">
        <property name="name" class="String">Enter Company_name</property>
        <property name="stateProcessor" class="EnterText">
          <property name="textExpression" class="kapow.robot.plugin.common.support.expression.multipletype.AttributeValueExpression">
            <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName">
              <property name="name" class="String">job_input.company_name</property>
            </property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" idref="2"/>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.input</property>
            </property>
            <property name="attributeName" idref="16"/>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">company_name</property>
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
        <property name="id" class="Integer">53</property>
      </object>
      <object class="Transition" id="31">
        <property name="name" class="String" id="32">Select Option</property>
        <property name="stateProcessor" class="SelectOption">
          <property name="optionValueExpression" class="kapow.robot.plugin.common.support.form.misc.fieldvalue.expression.SelectedSelectFieldValueStringExpression">
            <property name="fieldValue" class="kapow.robot.plugin.common.support.form.misc.fieldvalue.FieldValue">
              <property name="value" class="String">16</property>
              <property name="displayName" class="String">咨询/管理产业/法律/财会</property>
            </property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" idref="2"/>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.select</property>
            </property>
            <property name="attributeName" idref="16"/>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">id_company_biz_type</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">54</property>
      </object>
      <object class="Transition" id="33">
        <property name="name" idref="32"/>
        <property name="stateProcessor" class="SelectOption">
          <property name="optionValueExpression" class="kapow.robot.plugin.common.support.form.misc.fieldvalue.expression.SelectedSelectFieldValueStringExpression">
            <property name="fieldValue" class="kapow.robot.plugin.common.support.form.misc.fieldvalue.FieldValue">
              <property name="value" class="String">1</property>
              <property name="displayName" class="String">民营</property>
            </property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" idref="2"/>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.select</property>
            </property>
            <property name="attributeName" idref="16"/>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">company_type</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">55</property>
      </object>
      <object class="Transition" id="34">
        <property name="name" idref="32"/>
        <property name="stateProcessor" class="SelectOption">
          <property name="optionValueExpression" class="kapow.robot.plugin.common.support.form.misc.fieldvalue.expression.SelectedSelectFieldValueStringExpression">
            <property name="fieldValue" class="kapow.robot.plugin.common.support.form.misc.fieldvalue.FieldValue">
              <property name="value" class="String">1</property>
              <property name="displayName" class="String">20人以下</property>
            </property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" idref="2"/>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.select</property>
            </property>
            <property name="attributeName" idref="16"/>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">scale_type</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">56</property>
      </object>
      <object class="Transition" id="35">
        <property name="name" class="String">Enter Company_description</property>
        <property name="stateProcessor" class="EnterText">
          <property name="textExpression" class="kapow.robot.plugin.common.support.expression.multipletype.AttributeValueExpression">
            <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName">
              <property name="name" class="String">job_input.company_description</property>
            </property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" idref="2"/>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.textarea</property>
            </property>
            <property name="attributeName" idref="16"/>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">company_description</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">57</property>
      </object>
      <object class="Transition" id="36">
        <property name="name" class="String">Enter Contact_user</property>
        <property name="stateProcessor" class="EnterText">
          <property name="textExpression" class="kapow.robot.plugin.common.support.expression.multipletype.AttributeValueExpression">
            <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName">
              <property name="name" class="String" id="37">job_input.contact_user</property>
            </property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" idref="2"/>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.input</property>
            </property>
            <property name="attributeName" idref="16"/>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">company_contact</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">58</property>
      </object>
      <object class="Transition" id="38">
        <property name="name" class="String">Enter Contact_phone</property>
        <property name="stateProcessor" class="EnterText">
          <property name="textExpression" class="kapow.robot.plugin.common.support.expression.multipletype.AttributeValueExpression">
            <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName">
              <property name="name" class="String" id="39">job_input.contact_phone</property>
            </property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" idref="2"/>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.input</property>
            </property>
            <property name="attributeName" idref="16"/>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">company_contact_phone</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">59</property>
      </object>
      <object class="Transition" id="40">
        <property name="name" class="String" id="41">Enter Text</property>
        <property name="stateProcessor" class="EnterText">
          <property name="textExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">http://www.baoxian028.com</property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" idref="2"/>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.input</property>
            </property>
            <property name="attributeName" idref="16"/>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">company_website</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">60</property>
      </object>
      <object class="Transition" id="42">
        <property name="name" class="String">Enter Company_address</property>
        <property name="stateProcessor" class="EnterText">
          <property name="textExpression" class="kapow.robot.plugin.common.support.expression.multipletype.AttributeValueExpression">
            <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName">
              <property name="name" class="String">job_input.company_address</property>
            </property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" idref="2"/>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.input</property>
            </property>
            <property name="attributeName" idref="16"/>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">company_address</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">61</property>
      </object>
      <object class="Transition" id="43">
        <property name="name" class="String">Click 下一步&gt;&gt;</property>
        <property name="stateProcessor" class="Click">
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" idref="2"/>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.div.form.table.*.input</property>
            </property>
            <property name="attributeName" idref="25"/>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">pub_btn</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">62</property>
      </object>
      <object class="Transition" id="44">
        <property name="name" class="String" id="45">Click</property>
        <property name="stateProcessor" class="Click">
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" idref="2"/>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.input</property>
            </property>
            <property name="attributeName" idref="16"/>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">tag_1</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">63</property>
      </object>
      <object class="Transition" id="46">
        <property name="name" class="String">Enter Title</property>
        <property name="stateProcessor" class="EnterText">
          <property name="textExpression" class="kapow.robot.plugin.common.support.expression.multipletype.AttributeValueExpression">
            <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName">
              <property name="name" class="String">job_input.title</property>
            </property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" idref="2"/>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.input</property>
            </property>
            <property name="attributeName" idref="13"/>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">title</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">64</property>
      </object>
      <object class="Transition" id="47">
        <property name="name" idref="32"/>
        <property name="stateProcessor" class="SelectOption">
          <property name="optionValueExpression" class="kapow.robot.plugin.common.support.form.misc.fieldvalue.expression.SelectedSelectFieldValueStringExpression">
            <property name="fieldValue" class="kapow.robot.plugin.common.support.form.misc.fieldvalue.FieldValue">
              <property name="value" class="String">3</property>
              <property name="displayName" class="String">大专及以上</property>
            </property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" idref="2"/>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.select</property>
            </property>
            <property name="attributeName" idref="16"/>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">id_degree</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">65</property>
      </object>
      <object class="Transition" id="48">
        <property name="name" idref="32"/>
        <property name="stateProcessor" class="SelectOption">
          <property name="optionValueExpression" class="kapow.robot.plugin.common.support.form.misc.fieldvalue.expression.SelectedSelectFieldValueStringExpression">
            <property name="fieldValue" class="kapow.robot.plugin.common.support.form.misc.fieldvalue.FieldValue">
              <property name="value" class="String">3</property>
              <property name="displayName" class="String">3-5年</property>
            </property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" idref="2"/>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.select</property>
            </property>
            <property name="attributeName" idref="16"/>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">id_work_years</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">66</property>
      </object>
      <object class="Transition" id="49">
        <property name="name" idref="41"/>
        <property name="stateProcessor" class="EnterText">
          <property name="textExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">2</property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" idref="2"/>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.input</property>
            </property>
            <property name="attributeName" idref="16"/>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">need_num</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">67</property>
      </object>
      <object class="Transition" id="50">
        <property name="name" class="String">Enter Description</property>
        <property name="stateProcessor" class="EnterText">
          <property name="textExpression" class="kapow.robot.plugin.common.support.expression.multipletype.AttributeValueExpression">
            <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName">
              <property name="name" class="String">job_input.description</property>
            </property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" idref="2"/>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.textarea</property>
            </property>
            <property name="attributeName" idref="16"/>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">id_description</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">68</property>
      </object>
      <object class="Transition" id="51">
        <property name="name" idref="45"/>
        <property name="stateProcessor" class="Click">
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" idref="2"/>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.input</property>
            </property>
            <property name="attributeName" idref="16"/>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">agent_1</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">69</property>
      </object>
      <object class="Transition" id="52">
        <property name="name" idref="45"/>
        <property name="stateProcessor" class="Click">
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" idref="2"/>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.input</property>
            </property>
            <property name="attributeName" idref="16"/>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">fee_status_1</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">70</property>
      </object>
      <object class="Transition" id="53">
        <property name="name" class="String">Enter Contact_user</property>
        <property name="stateProcessor" class="EnterText">
          <property name="textExpression" class="kapow.robot.plugin.common.support.expression.multipletype.AttributeValueExpression">
            <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName">
              <property name="name" idref="37"/>
            </property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" idref="2"/>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.input</property>
            </property>
            <property name="attributeName" idref="13"/>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">person</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">72</property>
      </object>
      <object class="Transition" id="54">
        <property name="name" class="String">Enter Contact_phone</property>
        <property name="stateProcessor" class="EnterText">
          <property name="textExpression" class="kapow.robot.plugin.common.support.expression.multipletype.AttributeValueExpression">
            <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName">
              <property name="name" idref="39"/>
            </property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" idref="2"/>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.input</property>
            </property>
            <property name="attributeName" idref="13"/>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">phone</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">73</property>
      </object>
      <object class="Transition" id="55">
        <property name="name" idref="32"/>
        <property name="stateProcessor" class="SelectOption">
          <property name="optionValueExpression" class="kapow.robot.plugin.common.support.form.misc.fieldvalue.expression.SelectedSelectFieldValueStringExpression">
            <property name="fieldValue" class="kapow.robot.plugin.common.support.form.misc.fieldvalue.FieldValue">
              <property name="value" class="String">3,武侯</property>
              <property name="displayName" class="String">武侯</property>
            </property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" idref="2"/>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.select</property>
            </property>
            <property name="attributeName" idref="16"/>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">id_district_id</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">75</property>
      </object>
      <object class="Transition" id="56">
        <property name="name" idref="32"/>
        <property name="stateProcessor" class="SelectOption">
          <property name="optionValueExpression" class="kapow.robot.plugin.common.support.form.misc.fieldvalue.expression.SelectedSelectFieldValueStringExpression">
            <property name="fieldValue" class="kapow.robot.plugin.common.support.form.misc.fieldvalue.FieldValue">
              <property name="value" class="String">-1,不限</property>
              <property name="displayName" class="String">不限</property>
            </property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" idref="2"/>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.select</property>
            </property>
            <property name="attributeName" idref="16"/>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">id_street_id</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">76</property>
      </object>
      <object class="Transition" id="57">
        <property name="name" class="String">Click 立即发布&gt;&gt;</property>
        <property name="stateProcessor" class="Click">
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" idref="2"/>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.div.form.table.*.input</property>
            </property>
            <property name="attributeName" idref="25"/>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">pub_btn</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">77</property>
      </object>
      <object class="Transition" id="58">
        <property name="name" class="String">Test Tag</property>
        <property name="stateProcessor" class="TestTag" serializationversion="0">
          <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
            <property name="value" class="String">.* class="release-success"&gt;.*</property>
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
        <property name="id" class="Integer">78</property>
      </object>
      <object class="Transition" id="59">
        <property name="name" class="String">flag=post_y</property>
        <property name="stateProcessor" class="AssignGlobalVariable">
          <property name="value" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">post_y</property>
          </property>
          <property name="variableName" class="String">flag</property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">79</property>
      </object>
      <object class="Try" id="60">
        <property name="id" class="Integer">80</property>
      </object>
      <object class="End" id="61">
        <property name="id" class="Integer">81</property>
      </object>
      <object class="Transition" id="62">
        <property name="name" class="String">flag=post_error</property>
        <property name="stateProcessor" class="AssignGlobalVariable">
          <property name="value" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">post_error</property>
          </property>
          <property name="variableName" class="String">flag</property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">82</property>
      </object>
      <object class="End" id="63">
        <property name="id" class="Integer">91</property>
      </object>
      <object class="BranchPoint" id="64">
        <property name="id" class="Integer">92</property>
      </object>
      <object class="Transition" id="65">
        <property name="name" class="String">Execute SQL</property>
        <property name="stateProcessor" class="ExecuteSQL2" serializationversion="0">
          <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameStringExpression">
            <property name="value" class="kapow.util.db.DBName">
              <property name="name" class="String">insurance</property>
            </property>
          </property>
          <property name="sql" class="Expression" serializationversion="0">
            <property name="text" class="String">"update account set is_ganji_processed = '" + flag + "' where id = " + account_input.account_id</property>
          </property>
          <property name="executeInDesignMode" class="Boolean">true</property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">93</property>
      </object>
      <object class="Transition" id="66">
        <property name="name" class="String">skip it!</property>
        <property name="stateProcessor" class="TestValue" serializationversion="0">
          <property name="condition" class="Expression" serializationversion="0">
            <property name="text" class="String">1 == 2</property>
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
        <property name="id" class="Integer">94</property>
      </object>
      <object class="Group" id="67">
        <id class="Integer">96</id>
        <name class="String">register</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="68"/>
        <steps class="ArrayList">
          <object class="Transition" id="69">
            <property name="name" class="String">Query Database</property>
            <property name="stateProcessor" class="QueryDatabase2" serializationversion="0">
              <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameStringExpression">
                <property name="value" class="kapow.util.db.DBName">
                  <property name="name" class="String">insurance</property>
                </property>
              </property>
              <property name="sql" class="String">"SELECT * FROM account where is_ganji_processed = 'n'"</property>
              <property name="columnAttributeMappings" class="kapow.robot.plugin.common.support.database.ColumnAttributeMappings">
                <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
                  <property name="columnName" class="String">id</property>
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">account_input.account_id</property>
                  </property>
                </object>
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
                  <property name="columnName" class="String">email</property>
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">account_input.email</property>
                  </property>
                </object>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">97</property>
          </object>
          <object class="Transition" id="70">
            <property name="name" class="String">flag=r</property>
            <property name="stateProcessor" class="AssignGlobalVariable">
              <property name="value" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">r</property>
              </property>
              <property name="variableName" class="String">flag</property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">98</property>
          </object>
          <object class="Transition" id="71">
            <property name="name" class="String">Click 注册</property>
            <property name="stateProcessor" class="Click">
              <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
                <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
              </property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
              <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.div.div.span.a</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">99</property>
          </object>
          <object class="Transition" id="72">
            <property name="name" class="String">Enter Login</property>
            <property name="stateProcessor" class="EnterText">
              <property name="textExpression" class="kapow.robot.plugin.common.support.expression.multipletype.AttributeValueExpression">
                <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName">
                  <property name="name" class="String">account_input.login</property>
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
            <property name="id" class="Integer">100</property>
          </object>
          <object class="Transition" id="73">
            <property name="name" class="String">Enter Password</property>
            <property name="stateProcessor" class="EnterPassword">
              <property name="passwordExpression" class="kapow.robot.plugin.common.support.expression.multipletype.AttributeValueExpression">
                <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName">
                  <property name="name" class="String">account_input.password</property>
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
            <property name="id" class="Integer">101</property>
          </object>
          <object class="Transition" id="74">
            <property name="name" class="String">Enter Password</property>
            <property name="stateProcessor" class="EnterPassword">
              <property name="passwordExpression" class="kapow.robot.plugin.common.support.expression.multipletype.AttributeValueExpression">
                <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName">
                  <property name="name" class="String">account_input.password</property>
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
                <property name="attributeName" class="String">name</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">password2</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">102</property>
          </object>
          <object class="Transition" id="75">
            <property name="name" class="String">Enter Email</property>
            <property name="stateProcessor" class="EnterText">
              <property name="textExpression" class="kapow.robot.plugin.common.support.expression.multipletype.AttributeValueExpression">
                <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName">
                  <property name="name" class="String">account_input.email</property>
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
                <property name="attributeName" class="String">name</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">email</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">103</property>
          </object>
          <object class="Transition" id="76">
            <property name="name" class="String">Click 立即注册</property>
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
                  <property name="text" class="String">reg_submit</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">104</property>
          </object>
          <object class="Transition" id="77">
            <property name="name" class="String">Test Tag</property>
            <property name="stateProcessor" class="TestTag" serializationversion="0">
              <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                <property name="value" class="String">.*&lt;a href="http://cd.ganji.com/vip/"&gt;baoxian028.*&lt;/a&gt;.*</property>
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
            <property name="id" class="Integer">105</property>
          </object>
          <object class="Transition" id="78">
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
            <property name="id" class="Integer">106</property>
          </object>
          <object class="Transition" id="79">
            <property name="name" class="String">Execute SQL</property>
            <property name="stateProcessor" class="ExecuteSQL2" serializationversion="0">
              <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameStringExpression">
                <property name="value" class="kapow.util.db.DBName">
                  <property name="name" class="String">insurance</property>
                </property>
              </property>
              <property name="sql" class="Expression" serializationversion="0">
                <property name="text" class="String">"update account set is_ganji_processed = 'reg_y' where id = " + account_input.account_id</property>
              </property>
              <property name="executeInDesignMode" class="Boolean">true</property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">107</property>
          </object>
          <object class="Try" id="80">
            <property name="id" class="Integer">108</property>
          </object>
          <object class="End" id="81">
            <property name="id" class="Integer">109</property>
          </object>
          <object class="Transition" id="82">
            <property name="name" class="String">Test Tag</property>
            <property name="stateProcessor" class="TestTag" serializationversion="0">
              <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                <property name="value" class="String">.*"&gt;&amp;#x6b64;&amp;#x7528;&amp;#x6237;&amp;#x540d;&amp;#x5df2;&amp;#x88ab;&amp;#x6ce8;&amp;#x518c;&amp;#xff0c;&amp;#x8bf7;&amp;#x53e6;&amp;#x6362;&amp;#x4e00;&amp;#x4e2a;&amp;#x3002;&lt;.*</property>
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
            <property name="id" class="Integer">110</property>
          </object>
          <object class="Try" id="83">
            <property name="id" class="Integer">111</property>
          </object>
          <object class="End" id="84">
            <property name="id" class="Integer">112</property>
          </object>
          <object class="Transition" id="85">
            <property name="name" class="String">flag=reg_error</property>
            <property name="stateProcessor" class="AssignGlobalVariable">
              <property name="value" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">reg_error</property>
              </property>
              <property name="variableName" class="String">flag</property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">113</property>
          </object>
          <object class="Transition" id="86">
            <property name="name" class="String">Execute SQL</property>
            <property name="stateProcessor" class="ExecuteSQL2" serializationversion="0">
              <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameStringExpression">
                <property name="value" class="kapow.util.db.DBName">
                  <property name="name" class="String">insurance</property>
                </property>
              </property>
              <property name="sql" class="Expression" serializationversion="0">
                <property name="text" class="String">"update account set is_ganji_processed = '" + flag + "' where id = " + account_input.account_id</property>
              </property>
              <property name="executeInDesignMode" class="Boolean">true</property>
            </property>
            <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList"/>
            <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="id" class="Integer">114</property>
          </object>
          <object class="Transition" id="87">
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
            <property name="id" class="Integer">115</property>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="88"/>
        <edges class="ArrayList">
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="68"/>
            <to idref="69"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="69"/>
            <to idref="70"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="70"/>
            <to idref="71"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="71"/>
            <to idref="72"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="72"/>
            <to idref="73"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="73"/>
            <to idref="74"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="74"/>
            <to idref="75"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="75"/>
            <to idref="76"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="76"/>
            <to idref="80"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="77"/>
            <to idref="79"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="78"/>
            <to idref="88"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="79"/>
            <to idref="78"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="80"/>
            <to idref="77"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="80"/>
            <to idref="83"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="82"/>
            <to idref="87"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="83"/>
            <to idref="82"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="83"/>
            <to idref="85"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="kapow.robot.robomaker.robot.TransitionEdge">
            <from idref="85"/>
            <to idref="86"/>
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
            <from idref="87"/>
            <to idref="81"/>
            <attachment>
              <null/>
            </attachment>
          </object>
        </edges>
      </object>
      <object class="End" id="89">
        <property name="id" class="Integer">116</property>
      </object>
      <object class="Try" id="90">
        <property name="id" class="Integer">117</property>
      </object>
      <object class="Transition" id="91">
        <property name="name" class="String">Click 保险</property>
        <property name="stateProcessor" class="Click">
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" idref="10"/>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.div.div.div.ul.li[13].a</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">119</property>
      </object>
      <object class="Transition" id="92">
        <property name="name" class="String">Click 保险业务主管/经理</property>
        <property name="stateProcessor" class="Click">
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" idref="10"/>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.div.div.div.div.div.ul.li[9].a</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">120</property>
      </object>
      <object class="Transition" id="93">
        <property name="name" class="String">Click</property>
        <property name="stateProcessor" class="Click">
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
            <property name="ancestorProvider" idref="10"/>
          </property>
        </property>
        <property name="nodeFinderList" class="kapow.robot.robomaker.state.document.nodefinder.list.NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.input</property>
            </property>
            <property name="attributeName" class="String">id</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">tag_9</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="kapow.robot.robomaker.robot.ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="id" class="Integer">121</property>
      </object>
      <object class="Try" id="94">
        <property name="id" class="Integer">122</property>
      </object>
      <object class="End" id="95">
        <property name="id" class="Integer">123</property>
      </object>
    </steps>
    <blockEndStep class="BlockEndStep"/>
    <edges class="ArrayList">
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="0"/>
        <to idref="3"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="1"/>
        <to idref="5"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="3"/>
        <to idref="1"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="5"/>
        <to idref="7"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="5"/>
        <to idref="8"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="6"/>
        <to idref="11"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="7"/>
        <to idref="94"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="8"/>
        <to idref="6"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="9"/>
        <to idref="12"/>
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
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="15"/>
        <to idref="19"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="17"/>
        <to idref="23"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="18"/>
        <to idref="17"/>
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
        <from idref="19"/>
        <to idref="21"/>
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
        <to idref="27"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="24"/>
        <to idref="26"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="26"/>
        <to idref="91"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="27"/>
        <to idref="64"/>
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
        <to idref="24"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="30"/>
        <to idref="31"/>
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
        <to idref="36"/>
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
        <to idref="40"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="40"/>
        <to idref="42"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="42"/>
        <to idref="43"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="43"/>
        <to idref="44"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="44"/>
        <to idref="93"/>
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
        <from idref="47"/>
        <to idref="48"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="48"/>
        <to idref="49"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="49"/>
        <to idref="50"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="50"/>
        <to idref="51"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="51"/>
        <to idref="52"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="52"/>
        <to idref="53"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="53"/>
        <to idref="54"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="54"/>
        <to idref="55"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="55"/>
        <to idref="56"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="56"/>
        <to idref="57"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="57"/>
        <to idref="60"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="58"/>
        <to idref="59"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="59"/>
        <to idref="4"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="60"/>
        <to idref="58"/>
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
        <to idref="61"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="64"/>
        <to idref="28"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="64"/>
        <to idref="65"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="65"/>
        <to idref="63"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="66"/>
        <to idref="67"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="67"/>
        <to idref="89"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="90"/>
        <to idref="30"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="90"/>
        <to idref="93"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="91"/>
        <to idref="92"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="92"/>
        <to idref="90"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="93"/>
        <to idref="46"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="94"/>
        <to idref="66"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="kapow.robot.robomaker.robot.TransitionEdge">
        <from idref="94"/>
        <to idref="95"/>
        <attachment>
          <null/>
        </attachment>
      </object>
    </edges>
  </property>
  <property name="nextTransitionId" class="Integer">124</property>
  <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="6">
    <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.RobotDefaultBrowserConfigurationSpecificationAncestorProvider"/>
  </property>
</object>