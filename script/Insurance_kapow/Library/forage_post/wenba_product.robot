<?xml version="1.0" encoding="UTF-8" ?>
<object class="GenericRobot2" serializationversion="1">
  <prologue>
    <saved-by-versions>
      <version>8.2.1</version>
      <version>8.2.7</version>
    </saved-by-versions>
    <referenced-types>
      <type name="wenba_product"/>
    </referenced-types>
    <referenced-snippets/>
    <typed-variables>
      <typed-variable name="url" type-name="Short Text (simple)"/>
      <typed-variable name="flag" type-name="Short Text (simple)"/>
      <typed-variable name="wenba_product" type-name="wenba_product"/>
    </typed-variables>
    <global-variables>
      <variable name="flag"/>
    </global-variables>
    <parameters/>
    <return-variables/>
    <store-in-database-variables>
      <variable name="wenba_product"/>
    </store-in-database-variables>
  </prologue>
  <property name="variables" class="Variables">
    <object class="Variable" serializationversion="0">
      <property name="name" class="String" id="0">url</property>
      <property name="initialValue" class="Value">
        <property name="type" class="SimpleTypeReference" id="1">
          <property name="simpleTypeId" class="Integer">12</property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="0">
      <property name="name" class="String" id="2">flag</property>
      <property name="global" class="Boolean">true</property>
      <property name="initialValue" class="Value">
        <property name="type" idref="1"/>
        <property name="value" class="String">f</property>
      </property>
    </object>
    <object class="Variable" serializationversion="0">
      <property name="name" class="String" id="3">wenba_product</property>
      <property name="initialValue" class="Value">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">wenba_product</property>
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
      <object class="Transition" serializationversion="0" id="6">
        <property name="name" class="String">Load Page</property>
        <property name="stepAction" class="LoadPage2">
          <property name="urlProvider" class="kapow.robot.plugin.common.stepaction.urlprovider2.AttributeURLProvider2" serializationversion="1">
            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" idref="0"/>
            </property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="11">
            <property name="numOfAttempts" class="Integer">3</property>
            <property name="timeout" class="Double">160.0</property>
            <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String" id="7">numOfAttempts</element>
              <element class="String" id="8">timeout</element>
            </property>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList" id="9"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="4"/>
      </object>
      <object class="End" id="10"/>
      <object class="Transition" serializationversion="0" id="11">
        <property name="name" class="String">Set Current Tag</property>
        <property name="stepAction" class="SetCurrentTag">
          <property name="tagName" class="kapow.robot.plugin.common.stepaction.currenttag.CurrentTagName">
            <property name="name" class="String">main</property>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.div.div.div</property>
            </property>
            <property name="attributeName" class="String" id="12">class</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">pro_content</property>
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
        <property name="name" class="String">For Each Tag Path</property>
        <property name="stepAction" class="ForEachTagPath">
          <property name="nodePath" class="String">DIV</property>
          <property name="classes" class="String">content_box</property>
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
      <object class="Transition" serializationversion="0" id="14">
        <property name="name" class="String">flag=y</property>
        <property name="stepAction" class="AssignVariable" serializationversion="1">
          <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">y</property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" idref="2"/>
          </property>
        </property>
        <property name="nodeFinderList" idref="9"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="4"/>
      </object>
      <object class="Transition" serializationversion="0" id="15">
        <property name="name" class="String">Click</property>
        <property name="stepAction" class="Click">
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="11">
            <property name="numOfAttempts" class="Integer">3</property>
            <property name="timeout" class="Double">160.0</property>
            <property name="blockedUrlPatterns" class="String">.*-adspace.*
.*&amp;adspace=.*
.*=viewAdJs.*
.*&amp;affiliate=.*
.*&amp;ClientType=.*&amp;AdID=.*
.*&amp;google_adpage=.*
.*?adtype=.*
.*?affiliate.*
.*?getad=&amp;.*
.*?resizediv=.*promo=.*
.*?showbanner=.*
.*_ad\.aspx.*
.*_adbrite.*
.*_adfunction.*
.*_ads/.*
.*_ads\.php?.*
.*_adspace.*
.*_advertisement.*\.gif.*
.*_banner_ad.*
.*_bannerid.*random.*
.*_companionad\..*
.*_skyscraper_.*
.*_videoad\..*
.*adaffiliate.*
.*AdIFrame.*
.*admentor.*
.*ADTECH;cookie=.*
.*ads\.sv\.publicus\..*
.*adsfac\.net.*
.*adwords\.google\..*imgad.*
.*affiliatebrand\..*
.*audienceprofiler\..*
.*aurora-.*marketing\.co.*
.*banner-ad.*
.*bannerad.*
.*BannerMangement.*
.*banners&amp;id=.*
.*blog\.tmcnet\..*/overlib\.js.*
.*brandcentral\..*
.*Click.*Advertiser.*
.*clicktag=.*/ad.*
.*content\.search.*
.*adserving\.cpxinteractive.*
.*cubics\.com/.*
.*dbbsrv\.com.*
.*dgmaustralia\..*
.*download-door\.search\.com/search.*
.*dynamicad\..*
.*earthlink.*/promos.*
.*eas\.blocket\..*
.*engine\.awaps\.net/.*
.*exitexplosion\..*/exit\.js.*
.*expedia_ad\..*
.*faireagle\.com.*
.*favinfo\.com/ad\..*
.*gamesbanner\.net/.*
.*geocities\.com/js_source/.*
.*google\.com.*/promo_.*
.*hera\.hardocp\..*
.*imageshack.*tagworld.*
.*interclick\..*
.*js\.worthathousandwords\..*
.*js2\.yimg\..*_popup_.*
.*kanoodle.*
.*leftsidead\..*
.*link_ads.*
.*maps\.google\.com.*.*mediacorpsingapore.*
.*medrx\.sensis\.com\.au/content/.*
.*nebuad\.com.*
.*netspiderads.*
.*network\.ninemsn\..*/share/.*
.*nbjmp\.com/.*
.*openbanner.*
.*page\.grabclick\..*
.*phpadsnew.*
.*popinads\..*
.*popunder.*
.*popup_ad\..*
.*precisionclick\..*
.*pro-market\..*
.*promopop.*
.*ptnrcontent.*
.*publicidad.*
.*quigo\.com.*
.*rad\.live\.com/ADSAdClient.*
.*richmedia\..*yimg\..*
.*rightsidead\..*
.*s\.trigami\..*
.*space\.com/.*interstitial_space\.js.*
.*sponslink.*
.*sponsor\.gif.*
.*sponsorads.*
.*sponsored_links.*
.*sponsors.*banner.*
.*sys-con\.com/common/.*
.*targetpoint\.com.*
.*textlink-ads\..*
.*themis\.yahoo\..*
.*vs20060817\.com/.*
.*worsethanfailure\..*/Tizes/.*
.*www\.cb\.cl/.*banner.*
.*www\.ad\.tomshardware\..*=banner.*
.*xcelsiusadserver\..*
.*yceml\.net.*
.*\.1100i\.com/.*
.*\.188server\..*
.*\.2mdn\.net/.*
.*\.360ads\..*
.*\.43plc\.com.*
.*\.about\.com/0/.*
.*\.accuserveadsystem\..*
.*\.acronym\.com/.*
.*\.ad\.tomshardware\.com/.*
.*\.ad\.twitchguru\..*
.*\.ad-flow\..*
.*\.ad20\.net/.*
.*\.ad4cash\..*
.*\.adaction\..*
.*\.adbard\.net/ab.*
.*\.adblade\.com/.*
.*\.adbrite\.com/mb/.*
.*\.adbureau\..*
.*\.adbutler\..*
.*\.adcentriconline\..*
.*\.adchap\..*
.*\.adecn\.com/.*
.*\.adengage\..*
.*\.adf01\.net/.*
.*\.adfusion\..*
.*\.adgardener\..*
.*\.adgine\..*
.*\.adgroups\..*
.*\.adhese\..*
.*\.adicate\..*
.*\.adition\.com/.*
.*\.adinterax\..*
.*\.adireland\..*
.*\.adjuggler\..*
.*\.admarketplace\..*
.*\.adnet\.biz.*
.*\.adlink\.net.*
.*\.adnet\.ru.*
.*\.adocean\..*
.*\.adoperator\..*
.*\.adotube\.com/overstreamPlatform/.*
.*\.adpark\..*
.*\.adpinion\..*
.*\.adsdk\.com/.*
.*\.adserver\..*?.*
.*\.adservinginternational\..*
.*\.adsforindians\..*
.*\.adshopping\..*
.*\.adshuffle\..*
.*\.adsmarket\..*
.*\.adsonar\..*
.*\.adspeed\..*
.*\.adtext\..*
.*\.adtmedia\..*
.*\.adtology3\..*
.*\.adtoma\.com/.*
.*\.adtrgt\..*
.*\.adultadworld\..*
.*\.adultfriendfinder\.com/banners/.*
.*\.adverserve\..*
.*\.advertarium\..*
.*\.adverticum\.net/.*
.*\.advertising\..*
.*\.advertising-department\.com.*\.php?.*
.*\.advertlets\..*
.*\.advertserve\..*
.*\.adviva\..*
.*\.adxpower\..*
.*\.agentcenters\..*
.*\.afcyhf\..*
.*\.affiliate\..*
.*\.affiliatefuel\..*
.*\.affiliatefuture\..*
.*\.affiliproducts\.com/showProducts\..*
.*\.affiliatesensor\..*
.*\.affilimatch\..*
.*\.aim4media\..*
.*\.akamai\..*sponsor.*
.*\.alphagodaddy\..*
.*\.anrdoezrs\..*
.*\.arcadebanners\..*
.*\.as5000\..*
.*\.ase\.cc/.*
.*\.assoc-amazon\..*
.*\.atdmt\.com/.*
.*\.atwola\..*
.*\.auspipe\..*
.*\.avads\.co\.uk/.*
.*\.awin1\.com.*
.*\.awltovhc\..*
.*\.axill\.com/.*
.*\.azads\.com/.*
.*\.azjmp\.com/.*
.*\.azoogleads\..*
.*\.bannerbank\.ru/.*
.*\.bannerconnect\..*
.*\.bannersmania\..*
.*\.bbc\.co\.uk/.*/vs\.js.*
.*\.begun\.ru/.*
.*\.belointeractive\..*
.*\.bestofferdirect\..*
.*\.bidvertiser\..*
.*\.bimedia\.net/video/.*
.*\.blogads\.com/.*
.*\.bloggerads\..*
.*\.bluestreak\..*
.*\.bravenetmedianetwork\..*
.*\.bravenet\..*/rover/.*
.*\.bridgetrack\..*
.*\.btrll\.com/.*.*
.*\.burstnet\..*
.*\.c-on-text\..*
.*\.c8\.net\.ua/.*
.*\.casalemedia\..*
.*\.cc-dt\.com/.*
.*\.centralmediaserver\..*
.*\.cgecwm\.org/.*
.*\.checkm8\..*
.*\.checkmystats\..*
.*\.chitika\..*
.*\.ciao\.co\.uk/load_file\.php?.*
.*\.cjt1\.net.*
.*\.clash-media\..*
.*\.claxonmedia\..*
.*\.clickad\..*
.*\.clickbooth.*
.*\.clickexperts\..*
.*\.clickintext\..*
.*\.clickthrucash\..*
.*\.clixgalore\..*
.*\.co\.uk/ads\.pl.*
.*\.codeproject\..*/ServeImg\..*
.*\.cogsdigital\..*
.*\.com/ads\.pl.*
.*\.com/sideads.*
.*\.com/topads.*
.*\.commission-junction\..*
.*\.commissionmonster\..*
.*\.connextra\..*
.*\.contextuads\..*
.*\.contextweb\..*
.*\.cpaclicks.*
.*\.cpays\.com/.*
.*\.cpmstar\..*
.*\.cpuim\.com/.*
.*\.crashextads\..*
.*\.crispads\..*
.*\.decisionmark\..*
.*\.decisionnews\..*
.*\.deepmetrix\..*
.*\.dl-rms\.com/.*
.*\.domainsponsor\..*
.*\.doubleclick\.net/adi/.*
.*\.doubleclick\.net/adj/.*
.*\.doubleclick\.net/pfadx/.*
.*\.doubleclick\.net/.*;cue=pre;.*
.*\.dpbolvw\..*
.*\.dynw\.com/banner.*
.*\.ebayrtm\.com/rtm?rtmcmd&amp;a=json.*
.*\.ebaystatic\./adserver.*
.*\.edge\.ru4\..*
.*\.egotastic\.com/obp-.*
.*\.emediate\..*
.*\.etology\..*
.*\.euroclick\..*
.*\.exponential\..*
.*\.eyereturn\..*
.*\.eyewonder\..*
.*\.falkag\..*
.*\.fastclick\..*
.*\.feedburner\.com/~a/.*
.*\.filefront\..*/fnOverlay\.js.*
.*\.fimserve\..*
.*\.firstadsolution\..*
.*\.firstlightera\.com/era/.*
.*\.fixionmedia\..*
.*\.fmpub\.net/.*
.*\.forrestersurveys\..*
.*\.fluxads\..*
.*\.flyordie\.com/games/free/b/.*--?p=.*
.*\.friendlyduck\..*
.*\.ftjcfx\..*
.*\.funklicks\..*
.*\.fwmrm\.net/.*\.flv.*
.*\.fwmrm\.net/.*\.swf.*
.*\.g\.akamai\..*/ads\..*
.*\.game-advertising-online\..*
.*\.gamecetera\..*
.*\.gamersbanner\..*
.*\.geopromos\..*
.*\.gestionpub\..*
.*\.getprice\.com\.au/searchwidget\.aspx?.*
.*\.gklmedia\..*
.*\.go\.com/.*ads\.js.*
.*\.go\.globaladsales\.com/.*
.*/googleads\.g\.doubleclick\.net/pagead/.*.*
.*\.googleadservices\..*
.*\.grabmyads\..*
.*\.gumgum\..*/ggv2\.js.*
.*\.henwo\.com/.*
.*\.hit-now\..*
.*\.hosticanaffiliate\..*
.*\.httpool\..*
.*\.hypemakers\..*
.*\.hypervre\..*
.*\.ibatom\..*/syndication/.*
.*\.ic-live\..*
.*\.icdirect\..*
.*\.idg\.com\.au/images/.*_promo.*
.*\.imagesatlantic\..*
.*\.imedia\.co\.il/.*
.*\.infinite-ads\..*
.*\.imglt\.com/.*
.*\.impresionesweb\..*
.*\.indiads\..*
.*\.industrybrains\..*
.*\.inetinteractive\..*
.*\.infocious\..*
.*\.intellitxt\..*
.*\.interpolls\..*
.*\.jdoqocy\..*
.*\.jumboaffiliates\..*
.*\.jydesign\..*
.*\.ketoo\.com/.*
.*\.klipmart\..*
.*\.kontera\..*
.*\.kqzyfj\..*
.*\.leadacceptor\..*
.*\.lduhtrp\..*
.*\.lightningcast\..*
.*\.linkads\..*?.*
.*\.linkexchange\..*
.*\.linkworth\..*
.*\.litres\.ru/static/banner/.*
.*\.ltassrv\..*
.*\.main\.ebayrtm\.com/rtm?RtmCmd&amp;a=inline&amp;.*
.*\.maxserving\..*
.*\.mb01\.com/.*
.*\.mbn\.com\.ua/.*
.*\.mediagridwork\.com/mx\.js.*
.*\.medialand\.ru/.*
.*\.mediaonenetwork\..*
.*\.mediaplex\..*
.*\.mediatarget\..*
.*\.mediavantage\..*
.*\.megaclick\.com/.*
.*\.mercuras\..*
.*\.metaffiliation\..*
.*\.microsoftaffiliates\..*\.aspx?.*
.*\.mirago\.com/.*
.*\.miva\.com/.*
.*\.mochiads\.com/srv/.*
.*\.mootermedia\..*
.*\.msn\.com/?adunitid.*
.*\.myway\.com/gca_iframe\..*
.*\.neoseeker\.com/.*_pc\.html.*
.*\.net3media\..*
.*\.netavenir\..*
.*\.newanglemedia\.com/clients/.*
.*\.news\.com\.au/.*-promo.*
.*\.newsadstream\..*
.*\.northmay\..*
.*\.ng/.*&amp;affiliate=.*
.*\.nwsource\..*/adv\.gif.*
.*\.nyadmcncserve-.*
.*\.obibanners\..*
.*\.othersonline\.com/partner/scripts/.*?.*
.*\.onenetworkdirect\..*
.*\.openx\.org/a.*\.php.*
.*\.overture\..*
.*\.oxado\.com/.*
.*\.pc-ads\.com/.*
.*\.perfb\.com.*
.*\.pgpartner\..*
.*\.pheedo\..*/img\.phdo?.*
.*\.php?bannerid.*
.*\.php?adclass.*
.*\.platinumadvertisement\..*
.*\.playertraffic\..*
.*\.pointroll\..*
.*\.predictad\..*
.*\.pricegrabber\..*
.*\.pricespy\.co\.nz/adds/.*
.*\.primaryads\..*
.*\.pro-advertising\..*
.*\.probannerswap\..*
.*\.profitpeelers\..*
.*\.projectwonderful\..*
.*\.proximic\.com/js/widget\.js.*
.*\.pulse360\..*
.*\.qksrv\.net/.*
.*\.qksz\.net/.*
.*\.questionmarket\..*
.*\.questus\.com/.*
.*\.realmatch\.com/Widgets/JS/.*
.*\.revresda\..*
.*\.rmxads\..*
.*\.rottentomatoes\..*size=.*x.*&amp;dechannel.*
.*\.rovion\..*?AffID=.*
.*\.rwpads\..*
.*\.scanscout\..*
.*\.sevenload\.com/.*/endscreen\.swf.*
.*\.shareasale\..*
.*\.shareresults\..*
.*\.smartadserver\..*
.*\.smarttargetting\..*
.*\.snap\.com/.*
.*\.snopes\.com/.*/.*ad.*
.*\.socialmedia\.com/.*
.*\.sonnerie\..*
.*\.space\.com/promo/.*
.*\.sparkstudios\..*
.*\.specificclick\..*
.*\.specificmedia\..*
.*\.speedsuccess\.net/.*
.*\.sponsorpalace\..*
.*\.spotplex\..*widget.*
.*\.srtk\.net/.*
.*\.sta-ads\..*
.*\.survey-poll\..*
.*\.swf?clickTag=.*
.*\.tacoda\..*
.*\.targetnet\..*
.*\.thebigchair\.com\.au/egnonline/.*
.*\.tiser\.com.*
.*\.tkqlhce\..*
.*\.total-media\.net/.*
.*\.tqlkg\.com.*
.*\.tradedoubler\..*
.*\.trafficmasterz\..*
.*\.trafic\..*
.*\.tremormedia\..*/AdManager@domain=~africam\.com.*
.*\.tribalfusion\..*
.*\.twinplan\.com/AF_.*
.*\.typepad\.com/sponsors/.*
.*\.tyroo\.com.*
.*\.uimserv\.net/.*
.*\.unicast\..*
.*\.universalhub\.com/bban/.*
.*\.usercash\.com/.*
.*\.utarget\..*
.*\.valuead\..*
.*\.valueclick\..*
.*\.vibrantmedia\..*
.*\.videoegg\.com/.*/init\.js?.*
.*\.videosift\.com/bnr\.php?.*
.*\.visitorglobe\..*record.*
.*\.vpico\.com/.*
.*\.webads\.co\.nz.*
.*\.webmasterplan\..*
.*\.widgetbucks\..*
.*\.worlddatinghere\..*
.*\.xchangebanners\..*
.*\.y\.megaclick\..*
.*\.yahoo\.com/ads?.*=mrec_ad&amp;.*
.*\.yimg\.com/adv/.*
.*\.yimg\.com/.*/fairfax/.*
.*\.ytimg\.com/yt/swf/ad-.*\.swf.*
.*\.zanox\.com/.*
.*\.zangocash\..*/detectenvironment.*
.*\.zeads\.com/.*
.*\.zedo\.com/.*
.*\.zoomdirect\.com\.au/.*
.*/63\.225\.61\..*
.*/64\.73\.24\.44.*
.*/207\.67\.9\.41/.*.*
.*/213\.239\.222\.7/ad/.*.*
.*/217\.15\.94\.117.*
.*/468x60/.*.*
.*/\.adserv/.*.*
.*/a\.clearlightdigital\..*
.*/a\.collective-media\.net/.*.*
.*/a\.kerg\.net/.*.*
.*/a\.lakequincy\..*
.*/ab\.vcmedia\..*
.*/abmw\.aspx.*
.*/ad\.doubleclick\.net/ad/.*.*
.*/ad/code.*
.*/ad/view/.*.*
.*/ad\.asp?.*
.*/ad\.aspx?.*
.*/ad2\.aspx?.*
.*/ad\.php?.*
.*/ad/frame.*
.*/ad/header_.*
.*/ad/mercury.*
.*/ad/.*promo.*
.*/ad/serve.*
.*/ad/sponsors/.*.*
.*/ad/textlinks/.*.*
.*/ad_.*\.gif.*
.*/ad_.*
.*/ad_functions.*
.*/ad_insert\..*
.*/ad_manager\.js.*
.*/ad_refresher\..*
.*/ad_wrapper.*
.*/ad-frame\..*
.*/ad2games\..*
.*/adbanner.*
.*/adbrite.*
.*/adbrite\..*
.*/adclick.*
.*/adcode\.js.*
.*/adconfig/.*.*
.*/adconfig\.xml?.*
.*/adcontent\..*
.*/adcycle/.*.*
.*/addyn.*
.*/adengage_.*
.*/adf\.cgi?.*
.*/adfetch?.*
.*/adframe\..*
.*/adframe_.*
.*/adfshow?.*
.*/adgraphics/.*.*
.*/adheader.*
.*/adhoc/js/swfobject\.js.*
.*/adiframe/.*.*
.*/AdIFrame\..*
.*/adimages/.*.*
.*/adfunction.*
.*/adimage\..*
.*/adinsert\..*
.*/adjs\.php?.*
.*/adjsmp\.php?.*
.*/adlabel.*
.*/adlinks\.js.*
.*/adman/www/.*.*
.*/admanagement/.*.*
.*/admanager.*
.*/admatch-syndication\..*
.*/admedia\..*
.*/adn\.fusionads\..*
.*/adnetwork\..*
.*/adpage\..*
.*/adpeeps/.*.*
.*/adpeeps\.php.*
.*/Adplayer/.*.*
.*/adproducts/.*.*
.*/adproxy/.*.*
.*/adRelated\..*
.*/adrevolver/.*.*
.*/adroot/.*.*
.*/adrot\.js.*
.*/adserver/.*.*
.*/adsreporting/.*.*
.*/ads\.htm.*
.*/ads\.php?.*
.*/ads_iframe\..*
.*/ads_reporting/.*.*
.*/ads_v2\.js.*
.*/ads_yahoo\..*
.*/ads.*\.php.*
.*/Ads-Leader.*
.*/Ads-Rec.*
.*/Ads-Sky.*
.*/ads2\.php?.*
.*/ads2/.*.*
.*/ADSAdClient31\.dll?GetAd?PG=M.*
.*/adscript.*
.*/adsense_.*
.*/adsense\..*
.*/adserv.*/delivery/.*.*
.*/Adserver?.*
.*/adServer\..*?.*
.*/adsfolder/.*.*
.*/adshow?.*
.*/AdsIframe/.*.*
.*/adsimage/.*.*
.*/AdsInclude\.js.*
.*/AdsManager/.*.*
.*/adsmanagement/.*?.*
.*/adspace.*
.*/adspro/.*.*
.*/adsonar\..*
.*/adSwap\.js.*
.*/adsyndication\..*
.*/adtags/.*.*
.*/ADTECH;.*
.*/adtext\..*
.*/adtext_.*
.*/adtraff\..*
.*/adtype\.php?.*
.*/advert_.*
.*/advert/ms.*
.*/adverti.*
.*/advertising/.*.*
.*/advertpro/.*.*
.*/adverts_.*
.*/adverts/.*.*
.*/adview\..*
.*/AdWorks/.*.*
.*/adwrapper/.*.*
.*/AdWrapperIframe\..*
.*/adxx\.php?.*
.*/adx/fbnvideo/.*.*
.*/adx/fncvideo/.*.*
.*/affads/.*.*
.*/affiliate_.*
.*/affiliate.*/ad/.*.*
.*/AffiliateBanners/.*.*
.*/affiliates\.babylon\..*
.*/AffiliateWiz/.*.*
.*/afr\.php?.*
.*/ah\.pricegrabber\.com/cb_table\.php.*
.*/aj\.600z\..*
.*/ajrotator/.*.*
.*/ajs\.php?.*
.*/anchor\.captainad\..*
.*/annonser/.*.*
.*/api\.aggregateknowledge\..*
.*/aserve\.directorym\..*
.*/autoPromo.*
.*/banimpress\..*
.*/banman\.asp?.*
.*/banman/.*.*
.*/banman\.isoftmarketing\..*
.*/banmanpro/.*&amp;ad.*
.*/banner.*ClickTag=.*
.*/banner/Ad.*
.*/banner_db\.php?.*
.*/banner_ads\..*
.*/Banner_Management/.*.*
.*/banner\.php?.*http.*
.*/banner_file\.php?.*
.*/bannermanager/.*.*
.*/bannermedia/.*.*
.*/banners?.*&amp;.*
.*/banners/.*.*
.*/banners/banners\.jsp?.*
.*/banners\.adultfriendfinder.*
.*/banners\.empoweredcomms\..*
.*/banners/.*\.gif.*
.*/BannerServer/.*.*
.*/bannerview\..*?.*
.*/bannery/.*?banner=.*
.*/bbccom\.js?.*
.*/bbc\.com/script/1/config\.js.*
.*/bin-layer\..*
.*/blogad_.*
.*/blogads.*
.*/bmp/banman\.asp?.*
.*/bnrsrv\..*?.*
.*/boylesportsreklame\..*?.*
.*/bs\.yandex\.ru.*
.*/c\.adroll\..*
.*/cas\.clickability\.com/.*.*
.*/clickserv.*
.*/cm8adam.*
.*/cm8space_call.*
.*/cms/Profile_Display/.*.*
.*/cnnSLads\.js.*
.*/cnwk\..*widgets\.js.*
.*/commercials/splash.*
.*/content\.4chan\.org/tmp/.*.*
.*/content\.yieldmanager\..*
.*/ContextAd\..*
.*/csDynamic.*
.*/CTAMlive160x160\..*
.*/ctxtlink/.*.*
.*/d\.m3\.net/.*.*
.*/d1\.openx\.org/.*&amp;block=.*
.*/da\.feedsportal\.com/r/.*.*
.*/data\.resultlinks\..*
.*/de.*\.myspace\..*
.*/delivery\.3rdads\..*
.*/descPopup\.js.*
.*/destacados/.*.*
.*/direct_ads\..*
.*/directads\..*
.*/dontblockthis/.*.*
.*/DisplayAds.*
.*/DNSads\.html?.*
.*/dsg/bnn/.*.*
.*/DynamicAd?.*
.*/DynamicCSAd?.*
.*/DynamicVideoAd?.*&amp;.*
.*/dynBanner/flash/.*.*
.*/e\.yieldmanager\.net/script\.js.*
.*/eBayISAPI\.dll?EKServer&amp;.*
.*/ecustomeropinions\.com/popup/.*.*
.*/ekmas\.com.*
.*/ERALinks/.*.*
.*/export_feeds\.php?.*&amp;banner.*
.*/external/ad\.js.*
.*/eyoob\.com/elayer/.*.*
.*/fairadsnetwork\..*
.*/flashAds\..*
.*/flashbanner/.*.*
.*/flipmedia.*
.*/forms\.aweber\..*
.*/freetrafficbar\..*
.*/fuseads/.*.*
.*/gamecast/ads.*
.*/gamersad\..*
.*/gampad/google_service\.js.*
.*/get\.lingospot\..*
.*/getad\.php.*
.*/getad\.php?.*
.*/get_ad\.php?.*
.*/getbanner\.cfm?.*
.*/google_ads/.*.*
.*/google-adsense.*
.*/googleAd\.js.*
.*/googleframe\..*
.*/hits\.europuls\..*
.*/hits4pay\..*
.*/hotjobs_module\.js.*
.*/houseads/.*.*
.*/html\.ng/.*.*
.*/httpads/.*.*
.*/iframe_ad\..*
.*/iframe-ads/.*.*
.*/iframead\..*
.*/iframed_.*sessionid=.*
.*/images/ad/.*.*
.*/images/bnnrs/.*.*
.*/images/promo/player.*
.*/img\.shopping\.com/sc/pac/shopwidget_.*
.*/index_files/.*\.htm.*
.*/IndianRailways/.*.*
.*/intext\.js.*
.*/invideoad\..*
.*/itunesaffiliate.*
.*/job_ticker\..*
.*/js\..*\.yahoo\.net/iframe\.php?.*
.*/js/interstitial_space\.js.*
.*/js/ysc_csc_.*
.*/js\.ng/site=.*
.*/kermit\.macnn\..*
.*/kestrel\.ospreymedialp\..*
.*/l\.yimg\.com/a/a/1-/flash/promotions/.*/0.*.*
.*/l\.yimg\.com/a/a/1-/java/promotions/.*\.swf.*
.*/launch/testdrive\.gif.*
.*/layer-ads\..*
.*/layerads_.*
.*/LinkExchange/.*.*
.*/linkreplacer\.js.*
.*/linkshare/.*.*
.*/listings\..*/iFrame/Dir.*
.*/logos/adLogo.*
.*/lw/ysc_csc_.*
.*/MarbachAdverts\..*
.*/marketing.*partner.*
.*/mac-ad?.*
.*/magic-ads/.*.*
.*/media\.funpic\..*/layer\..*
.*/mediamgr\.ugo\..*
.*/medrx\.sensis\.com\.au/.*.*
.*/miva_ads\..*
.*/MNetOrfad\.js.*
.*/mod_ad/.*.*
.*/mtvmusic_ads_reporting\.js.*
.*/nascar/.*/defector\.js.*
.*/nascar/.*/promos/.*.*
.*/network\.sportsyndicator\..*
.*/network\.triadmedianetwork\..*
.*/oas_logic\..*
.*/oasc03\..*
.*/oasisi\.php?.*
.*/oasisi-.*\.php?.*
.*/obeus\.com/initframe/.*.*
.*/openads/.*?.*
.*/openads2/.*.*
.*/openx/www/.*.*
.*/outsidebanners/.*.*
.*/overture/.*.*
.*/overture_.*
.*/ox\.bit-tech\.net/delivery/.*.*
.*/pagead/.*&amp;videoad_start_delay=1.*
.*/pagead/ads?video_url_to_fetch=.*
.*/pagead/imgad?.*
.*/pageear/.*.*
.*/pageear\.js.*
.*/pagepeel.*
.*/partner.*rotate.*
.*/partner\.gonamic\.de/Affiliate/.*.*
.*/partner\.sbaffiliates\..*
.*/partner\.video\.syndication\.msn\.com/.*.*
.*/partners/.*.*
.*/partnership/.*affiliate.*
.*/peel\.js.*
.*/peel1\.js.*
.*/peelad/.*.*
.*/perfads\.js?.*
.*/performancingads/.*.*
.*/pfadx/.*\.mtvi/video;.*
.*/pfadx/comedycentral\..*
.*/phpads/.*.*
.*/phpads2/.*.*
.*/phpadserver/.*.*
.*/pilot_ad\..*
.*/play/ad/.*.*
.*/player/ad\.htm.*
.*\.plsthx\.com/newaff/.*
.*/podimages/.*.*
.*/popAds\.js.*
.*/popupjs\..*
.*/processing/impressions \.asp?.*
.*/promoboxes/.*.*
.*/promos/.*banner\.gif.*
.*/promos\.fling\..*
.*/printads/.*.*
.*/psclicks\.asp?.*
.*/public/ad?.*
.*/public/bannerjs\..*?.*=.*
.*/public\.zangocash\..*
.*/publisher\.shopzilla\..*
.*/r\.mail\.ru.*
.*/rad\..*?GetSAd=.*
.*/reclame/ad\..*
.*/RequestAdvertisement\..*
.*/resources\.infolinks\..*
.*/rhs_promo_.*
.*/rok\.com\.com/.*.*
.*/rotateAds\..*
.*/rotating_banner.*
.*/rotating\.php.*
.*/rotation/.*\.php?.*
.*/rover\.ebay\..*&amp;campid=.*
.*/rtq\.careerbuilder\..*
.*/s3\.buysellads\..*
.*/s7121\.vsservers\..*
.*/scripts\.snowball\.com/clinkscontent/.*.*
.*/search\.spotxchange\.com/.*.*
.*/shared/promos/.*.*
.*/show\.asp?.*_sky.*
.*/show_ad\.ashx?.*
.*/show_ad_.*
.*/show_afs_ads\.js.*
.*/show_deals\.js.*
.*/show_i\.php?.*
.*/showad\..*
.*/showads\..*
.*/showbanner\.php?.*
.*/ShowFlashAd\..*
.*/skyad\.php.*
.*/slideInAd\.js.*
.*/small_ad\..*
.*/socialads\.js.*
.*/softsale/.*.*
.*/Splash/Page_Header/.*.*
.*/spinbox\.freedom\..*
.*/sponsImages/.*.*
.*/sponsorad\..*
.*/sponsored.*
.*/sponsored\.gif.*
.*/squaread\..*
.*/static\.zangocash\..*
.*/support\.biemedia\..*
.*/surveyCookie\.js.*
.*/svgn\.com/.*.*
.*/testingad\..*
.*/textad?.*
.*/textAd\..*
.*/tii_ads\.js.*
.*/tikilink?.*
.*/tizes/a\.aspx?.*
.*/tmz-adblock/.*.*
.*/trusearch\.net/affblock/.*.*
.*/ttz_ad\.js.*
.*/unicast\.ign\.com/assets/.*.*
.*/upsellitJS2\.jsp?.*
.*/userbanners/.*.*
.*/valueclick\..*
.*/vendshow/.*.*
.*/video\.ap\.org/.*/ad_js\..*
.*/video-cdn\..*_ad_.*
.*/video-cdn\..*_promo_.*
.*/videoad\..*
.*/videoads\..*
.*/videoads/.*.*
.*/vindicoasset\..*/INSTREAMAD/.*.*
.*/visit\.homepagle\..*
.*/w1\.buysub\..*
.*/web\.lightningcast\.net/servlets/getPlaylist?.*
.*/webadImg/.*.*
.*/webads_.*
.*/whiteglove\.jsp?.*
.*/widget\.blogrush\.com/show\.js.*
.*/ws\.amazon\..*/widgets/q?.*
.*/www/delivery/.*.*
.*/ygames_e/embed/src/embedPlayer\.js.*
.*/ysmads\.html.*
.*//wrapper\.3dgamers\..*
http://171\.66\.124\.80/.*
http://196\.41\.0\.207/.*
http://72\.32\.71\.244.*
http://a\.ads\..*
http://ad.*\.emidiate\..*
http://abm\.hothardware\..*
http://ad-uk\..*
http://ad\..*
http://ad0\..*
http://ad1\..*
http://ad2\..*
http://adbureau\..*
http://adclient.*
http://adcreative\..*
http://adfarm\..*
http://adimg\..*
http://adimages\..*
http://adinterax\..*
http://adnet\..*
http://adonline\..*
http://adq\..*
http://adremote\..*
http://ads\..*
http://ads1\..*
http://ads2\..*
http://ads3\..*
http://ads4\..*
http://ads5\..*
http://adsatt\..*
http://adsearch\..*
http://adserv.*
http://adsnew\..*
http://adsremote\..*
http://adstream\..*\.cgi.*
http://adsvr\..*
http://adsys\..*
http://adt\..*
http://adtags\..*
http://adtech\..*
http://adtology.*
http://adv\..*
http://advert\..*
http://adverts\..*
http://advision\..*/getad.*
http://adworks\..*
http://adx\..*
http://affiliates\..*\.aspx?.*
http://afimages\..*
http://almobty\.com/.*
http://altfarm\..*
http://avpa\..*
http://banner\..*
http://banners.*&amp;Random=.*
http://banners\..*http.*
http://biz28\..*
http://body\.imho\.ru/.*
http://bwp\..*
http://cbanners\..*
http://cdn\.nvero\..*
http://circads\..*
http://common\..*/slider\.js.*
http://dclk\..*\.ng/.*
http://feeds\..*/~a/.*
http://fdads\.sv\..*
http://ffxcam\..*
http://getad\..*
http://images\..*/banners/.*
http://jazad\..*
http://lads\..*-gutter-.*
http://mads\..*
http://marketing\..*http.*
http://ng3\.ads\..*
http://oas-central\..*
http://pagead2\..*
http://promo2\..*
http://rcm.*\.amazon\..*
http://reklama\..*
http://richmedia2\..*
http://rss\..*/~a/.*
http://servedbyadbutler\..*
http://smartad\..*
http://stocker\.bonnint\..*
http://synad.*
http://ttsrc\.aroq\..*
http://video\.flashtalking\..*
http://wrapper\..*/a?.*
http://xban\..*/banners/.*
http://.*/partners\..*
.*images.xiangrikui.*
.*html.xiangrikui.*
.*static.xiangrikui.*
.*image.xiangrikui.*
.*\.jpg
.*\.png
img</property>
            <property name="executeJavaScript" class="Boolean">false</property>
            <property name="fireClickEvents" class="Boolean">false</property>
            <property name="fireChangeEvents" class="Boolean">false</property>
            <property name="fireFormEvents" class="Boolean">false</property>
            <property name="fireLoadEvents" class="Boolean">false</property>
            <property name="fireMouseEvents" class="Boolean">false</property>
            <property name="fireDragEvents" class="Boolean">false</property>
            <property name="fireKeyEvents" class="Boolean">false</property>
            <property name="fireFocusEvents" class="Boolean">false</property>
            <property name="fireCaptureEvents" class="Boolean">false</property>
            <property name="fireReadystatechangeEvents" class="Boolean">false</property>
            <property name="fireErrorEvents" class="Boolean">false</property>
            <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">fireErrorEvents</element>
              <element class="String">fireFocusEvents</element>
              <element class="String">fireDragEvents</element>
              <element class="String">fireClickEvents</element>
              <element class="String">fireMouseEvents</element>
              <element class="String">fireKeyEvents</element>
              <element class="String">fireCaptureEvents</element>
              <element class="String">blockedUrlPatterns</element>
              <element class="String">fireLoadEvents</element>
              <element class="String">fireFormEvents</element>
              <element idref="7"/>
              <element class="String">executeJavaScript</element>
              <element class="String">fireReadystatechangeEvents</element>
              <element idref="8"/>
              <element class="String">fireChangeEvents</element>
            </property>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="referenceNodeRelation" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.relation.InReferenceNodeRelation">
              <property name="referenceNodeIndex" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.ReferenceNodeIndex"/>
            </property>
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.a</property>
            </property>
            <property name="nodePattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
              <property name="value" class="String">.*http://p.xiangrikui.com/\d+.*</property>
            </property>
            <property name="matchAgainst" class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.AbstractDefaultNodeFinder$PatternMatchTextType" id="16">
              <property name="enum-name" class="String">HTML</property>
            </property>
            <property name="nodeDepthSpecification" class="kapow.robot.robomaker.state.document.nodefinder.nodedepth.InnermostNodeDepthSpecification"/>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="4"/>
      </object>
      <object class="Transition" serializationversion="0" id="17">
        <property name="name" class="String">Extract Title</property>
        <property name="stepAction" class="Extract" serializationversion="1">
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">wenba_product.title</property>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="referenceNodeRelation" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.relation.InReferenceNodeRelation">
              <property name="referenceNodeIndex" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.ReferenceNodeIndex"/>
            </property>
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.a</property>
            </property>
            <property name="nodePattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
              <property name="value" class="String">.*http://p.xiangrikui.com/\d+.*</property>
            </property>
            <property name="matchAgainst" idref="16"/>
            <property name="nodeDepthSpecification" class="kapow.robot.robomaker.state.document.nodefinder.nodedepth.InnermostNodeDepthSpecification"/>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="4"/>
      </object>
      <object class="Transition" serializationversion="0" id="18">
        <property name="name" class="String">Extract Company</property>
        <property name="stepAction" class="Extract" serializationversion="1">
          <property name="dataConverters" class="DataConverters">
            <element class="Extract2DataConverter">
              <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                <property name="value" class="String">\[(.*)\]</property>
              </property>
            </element>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">wenba_product.company</property>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="referenceNodeRelation" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.relation.InReferenceNodeRelation">
              <property name="referenceNodeIndex" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.ReferenceNodeIndex"/>
            </property>
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.span</property>
            </property>
            <property name="attributeName" idref="12"/>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">a12_green_normal</property>
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
        <property name="name" class="String">Extract URL</property>
        <property name="stepAction" class="ExtractURL">
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">wenba_product.url</property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="11">
            <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="referenceNodeRelation" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.relation.InReferenceNodeRelation">
              <property name="referenceNodeIndex" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.ReferenceNodeIndex"/>
            </property>
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.a</property>
            </property>
            <property name="nodePattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
              <property name="value" class="String">.*http://p.xiangrikui.com/\d+.*</property>
            </property>
            <property name="matchAgainst" idref="16"/>
            <property name="nodeDepthSpecification" class="kapow.robot.robomaker.state.document.nodefinder.nodedepth.InnermostNodeDepthSpecification"/>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="4"/>
      </object>
      <object class="Transition" serializationversion="0" id="20">
        <property name="name" class="String">Extract Summary</property>
        <property name="stepAction" class="Extract" serializationversion="1">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.StructuredTextOutputtingHTMLDOMToTextConverter"/>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">wenba_product.summary</property>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.div</property>
            </property>
            <property name="attributeName" idref="12"/>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">cp_list cp_list1</property>
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
      <object class="Transition" serializationversion="0" id="21">
        <property name="name" class="String">Extract Tese</property>
        <property name="stepAction" class="Extract" serializationversion="1">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.StructuredTextOutputtingHTMLDOMToTextConverter"/>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">wenba_product.tese</property>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.div</property>
            </property>
            <property name="attributeName" idref="12"/>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">feature</property>
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
      <object class="Transition" serializationversion="0" id="22">
        <property name="name" class="String">Extract Shili</property>
        <property name="stepAction" class="Extract" serializationversion="1">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.HTMLTextOutputtingHTMLDOMToTextConverter"/>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">wenba_product.shili</property>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.div</property>
            </property>
            <property name="attributeName" idref="12"/>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">cp_kuang</property>
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
      <object class="Transition" serializationversion="0" id="23">
        <property name="name" class="String">Extract Wenda</property>
        <property name="stepAction" class="Extract" serializationversion="1">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.StructuredTextOutputtingHTMLDOMToTextConverter"/>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">wenba_product.wenda</property>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.div</property>
            </property>
            <property name="attributeName" idref="12"/>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">cp_l_k</property>
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
      <object class="Transition" serializationversion="0" id="24">
        <property name="name" class="String">Store in Database</property>
        <property name="stepAction" class="StoreInDatabase" serializationversion="0">
          <property name="db" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameValueStringExpression">
            <property name="value" class="kapow.util.db.DBName">
              <property name="name" class="String" id="25">insurance</property>
            </property>
          </property>
          <property name="variableName" class="kapow.robot.plugin.common.support.VariableName">
            <property name="name" idref="3"/>
          </property>
        </property>
        <property name="nodeFinderList" idref="9"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="4"/>
      </object>
      <object class="Transition" serializationversion="0" id="26">
        <property name="name" class="String">Query Database</property>
        <property name="stepAction" class="QueryDatabase2" serializationversion="0">
          <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameValueStringExpression">
            <property name="value" class="kapow.util.db.DBName">
              <property name="name" idref="25"/>
            </property>
          </property>
          <property name="sql" class="String">"SELECT * FROM wenba_product_run_key WHERE is_processed = 'n'"</property>
          <property name="columnAttributeMappings" class="kapow.robot.plugin.common.support.database.ColumnAttributeMappings">
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">id</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">wenba_product.wenba_product_run_key_id</property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">url</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" idref="0"/>
              </property>
            </object>
          </property>
        </property>
        <property name="nodeFinderList" idref="9"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="4"/>
      </object>
      <object class="End" id="27"/>
      <object class="BranchPoint" id="28"/>
      <object class="Transition" serializationversion="0" id="29">
        <property name="name" class="String">Execute SQL</property>
        <property name="stepAction" class="ExecuteSQL2" serializationversion="0">
          <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameValueStringExpression">
            <property name="value" class="kapow.util.db.DBName">
              <property name="name" idref="25"/>
            </property>
          </property>
          <property name="sql" class="Expression" serializationversion="1">
            <property name="text" class="String">"update wenba_product_run_key SET is_processed = '" + flag + "'  WHERE id = " + wenba_product.wenba_product_run_key_id</property>
          </property>
          <property name="executeInDesignMode" class="Boolean">true</property>
        </property>
        <property name="nodeFinderList" idref="9"/>
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
        <property name="name" class="String">flag=y</property>
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
        <property name="name" class="String">Click </property>
        <property name="stepAction" class="Click">
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="11">
            <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.div.p.a</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="4"/>
      </object>
      <object class="Transition" serializationversion="0" id="34">
        <property name="name" class="String">Extract Zeren</property>
        <property name="stepAction" class="Extract" serializationversion="1">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.StructuredTextOutputtingHTMLDOMToTextConverter"/>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">wenba_product.zeren</property>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.div</property>
            </property>
            <property name="attributeName" class="String">id</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">kuang</property>
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
      <object class="Transition" serializationversion="0" id="35">
        <property name="name" class="String">Click 投保示例</property>
        <property name="stepAction" class="Click">
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="11">
            <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider" id="36"/>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.div.ul.li[2].a</property>
            </property>
            <property name="attributeName" class="String">class</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">tab-li-a-xq</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="4"/>
      </object>
      <object class="Transition" serializationversion="0" id="37">
        <property name="name" class="String">Click 产品咨询</property>
        <property name="stepAction" class="Click">
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="11">
            <property name="ancestorProvider" idref="36"/>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.div.p[2].a</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="4"/>
      </object>
    </steps>
    <blockEndStep class="BlockEndStep"/>
    <edges class="ArrayList">
      <object class="TransitionEdge">
        <from idref="5"/>
        <to idref="26"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="6"/>
        <to idref="11"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="11"/>
        <to idref="14"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="13"/>
        <to idref="31"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="14"/>
        <to idref="13"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="15"/>
        <to idref="20"/>
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
        <to idref="15"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="19"/>
        <to idref="17"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="20"/>
        <to idref="34"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="21"/>
        <to idref="35"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="22"/>
        <to idref="37"/>
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
        <to idref="32"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="26"/>
        <to idref="28"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="28"/>
        <to idref="6"/>
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
        <to idref="19"/>
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
        <to idref="10"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="33"/>
        <to idref="21"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="34"/>
        <to idref="33"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="35"/>
        <to idref="22"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="37"/>
        <to idref="23"/>
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
