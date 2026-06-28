.class public Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;
.super Landroid/app/Activity;
.source "GameCircleAlertUserInterface.java"

# interfaces
.implements Lcom/amazon/ags/html5/javascript/domain/CloseAlertListener;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public closeAlert()V
    .locals 0

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->finish()V

    .line 142
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 32

    .prologue
    const-string v29, "GameCircleAlertUserInterface"

    invoke-static/range {v29 .. v29}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    move-object/from16 v29, v0

    const-string v30, "GameCircleAlertUserInterface#onCreate"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v29

    const-string v30, "OVERLAY_DATA_BUNDLE"

    invoke-virtual/range {v29 .. v30}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 44
    .local v10, "overlayData":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v29

    const-string v30, "OVERLAY_SESSION_GAMECIRCLE_VERSION_KEY"

    invoke-virtual/range {v29 .. v30}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 45
    .local v21, "overlaySessionGameCircleVersion":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v29

    const-string v30, "OVERLAY_SESSION_CLIENT_VERSION"

    invoke-virtual/range {v29 .. v30}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 46
    .local v14, "overlaySessionClientVersion":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v29

    const-string v30, "OVERLAY_SESSION_CONTENT_VERSION"

    invoke-virtual/range {v29 .. v30}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 47
    .local v15, "overlaySessionContentVersion":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v29

    const-string v30, "OVERLAY_SESSION_APPLICATION_NAME"

    invoke-virtual/range {v29 .. v30}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 48
    .local v13, "overlaySessionAppName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v29

    const-string v30, "OVERLAY_SESSION_LANGUAGE_CODE"

    invoke-virtual/range {v29 .. v30}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 49
    .local v22, "overlaySessionLanguageCode":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v29

    const-string v30, "OVERLAY_SESSION_COUNTRY_CODE"

    invoke-virtual/range {v29 .. v30}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 50
    .local v16, "overlaySessionCountryCode":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v29

    const-string v30, "OVERLAY_SESSION_DEVICE_IDENTIFIER"

    invoke-virtual/range {v29 .. v30}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 51
    .local v17, "overlaySessionDeviceId":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v29

    const-string v30, "OVERLAY_SESSION_DEVICE_MANUFACTURER"

    invoke-virtual/range {v29 .. v30}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 52
    .local v18, "overlaySessionDeviceManufacturer":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v29

    const-string v30, "OVERLAY_SESSION_DEVICE_MODEL"

    invoke-virtual/range {v29 .. v30}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 53
    .local v19, "overlaySessionDeviceModel":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v29

    const-string v30, "OVERLAY_SESSION_DEVICE_TYPE"

    invoke-virtual/range {v29 .. v30}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 54
    .local v20, "overlaySessionDeviceType":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v29

    const-string v30, "OVERLAY_SESSION_VARIATION_CACHE"

    invoke-virtual/range {v29 .. v30}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 56
    .local v23, "overlaySessionVariations":Ljava/lang/String;
    invoke-static {v10}, Lcom/amazon/ags/html5/util/JSONUtils;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 59
    .local v26, "sanitizedOverlayData":Ljava/lang/String;
    :try_start_1
    new-instance v29, Lorg/json/JSONObject;

    invoke-static {v10}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 60
    .local v11, "overlayDataJson":Lorg/json/JSONObject;
    const-string v29, "gameCircleVersion"

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string v29, "clientVersion"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string v29, "contentVersion"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    const-string v29, "appName"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v29, "languageCode"

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string v29, "countryCode"

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v29, "deviceId"

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string v29, "deviceManufacturer"

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string v29, "deviceModel"

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string v29, "deviceType"

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string v29, "canSendMail"

    const/16 v30, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 72
    new-instance v29, Lorg/json/JSONObject;

    invoke-static/range {v23 .. v23}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 73
    .local v12, "overlayExperiments":Lorg/json/JSONObject;
    const-string v29, "experiments"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    if-eqz v11, :cond_0

    .line 76
    instance-of v0, v11, Lorg/json/JSONObject;

    move/from16 v29, v0

    if-nez v29, :cond_1

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v26

    .line 82
    .end local v11    # "overlayDataJson":Lorg/json/JSONObject;
    .end local v12    # "overlayExperiments":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    move-object/from16 v25, v26

    .line 85
    .local v25, "processedOverlayData":Ljava/lang/String;
    :try_start_2
    invoke-static {}, Lcom/amazon/ags/html5/factory/ServiceFactory;->getInstance()Lcom/amazon/ags/html5/factory/ServiceFactory;

    move-result-object v27

    .line 87
    .local v27, "serviceFactory":Lcom/amazon/ags/html5/factory/ServiceFactory;
    invoke-virtual/range {v27 .. v27}, Lcom/amazon/ags/html5/factory/ServiceFactory;->getWebViewFactory()Lcom/amazon/ags/html5/util/WebViewFactory;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/amazon/ags/html5/util/WebViewFactory;->newOverlayWebView(Landroid/app/Activity;)Landroid/webkit/WebView;

    move-result-object v28

    .line 88
    .local v28, "webView":Landroid/webkit/WebView;
    invoke-virtual/range {v28 .. v28}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v29

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 89
    invoke-virtual/range {v28 .. v28}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v29

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 90
    invoke-virtual/range {v28 .. v28}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 91
    invoke-virtual/range {v28 .. v28}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 93
    const-string v29, "overlaywebview"

    invoke-virtual/range {v27 .. v29}, Lcom/amazon/ags/html5/factory/ServiceFactory;->getJavascriptInterface(Landroid/webkit/WebView;Ljava/lang/String;)Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;

    move-result-object v8

    .line 94
    .local v8, "javascriptInterface":Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;->addCloseAlertListener(Lcom/amazon/ags/html5/javascript/domain/CloseAlertListener;)V

    .line 96
    invoke-virtual/range {v27 .. v27}, Lcom/amazon/ags/html5/factory/ServiceFactory;->getJavascriptRepository()Lcom/amazon/ags/html5/javascript/JavascriptRepository;

    move-result-object v9

    .line 97
    .local v9, "javascriptRepository":Lcom/amazon/ags/html5/javascript/JavascriptRepository;
    new-instance v29, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface$1;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface$1;-><init>(Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;Ljava/lang/String;Lcom/amazon/ags/html5/factory/ServiceFactory;Landroid/webkit/WebView;)V

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;->addMessageHandlerReadyListener(Lcom/amazon/ags/html5/javascript/domain/MessageHandlerReadyListener;)V

    .line 119
    move-object/from16 v0, v28

    invoke-interface {v9, v0}, Lcom/amazon/ags/html5/javascript/JavascriptRepository;->loadAlertJavascript(Landroid/webkit/WebView;)V

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->getBaseContext()Landroid/content/Context;

    move-result-object v29

    const-string v30, "modal_alert_container"

    invoke-static/range {v29 .. v30}, Lcom/amazon/ags/html5/util/ResourceUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->setContentView(I)V

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->getBaseContext()Landroid/content/Context;

    move-result-object v29

    const-string v30, "id"

    const-string v31, "modal_alert_container"

    invoke-static/range {v29 .. v31}, Lcom/amazon/ags/html5/util/ResourceUtils;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 124
    .local v5, "container":Landroid/widget/LinearLayout;
    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 126
    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 128
    const-string v29, "window"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/view/WindowManager;

    invoke-interface/range {v29 .. v29}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 129
    .local v6, "display":Landroid/view/Display;
    invoke-virtual/range {v28 .. v28}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    .line 130
    .local v24, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, v24

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 131
    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, v24

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 133
    const-string v29, "hostinterface"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v8, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 138
    .end local v5    # "container":Landroid/widget/LinearLayout;
    .end local v6    # "display":Landroid/view/Display;
    .end local v8    # "javascriptInterface":Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;
    .end local v9    # "javascriptRepository":Lcom/amazon/ags/html5/javascript/JavascriptRepository;
    .end local v24    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v27    # "serviceFactory":Lcom/amazon/ags/html5/factory/ServiceFactory;
    .end local v28    # "webView":Landroid/webkit/WebView;
    :goto_2
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    .end local v10    # "overlayData":Ljava/lang/String;
    .end local v13    # "overlaySessionAppName":Ljava/lang/String;
    .end local v14    # "overlaySessionClientVersion":Ljava/lang/String;
    .end local v15    # "overlaySessionContentVersion":Ljava/lang/String;
    .end local v16    # "overlaySessionCountryCode":Ljava/lang/String;
    .end local v17    # "overlaySessionDeviceId":Ljava/lang/String;
    .end local v18    # "overlaySessionDeviceManufacturer":Ljava/lang/String;
    .end local v19    # "overlaySessionDeviceModel":Ljava/lang/String;
    .end local v20    # "overlaySessionDeviceType":Ljava/lang/String;
    .end local v21    # "overlaySessionGameCircleVersion":Ljava/lang/String;
    .end local v22    # "overlaySessionLanguageCode":Ljava/lang/String;
    .end local v23    # "overlaySessionVariations":Ljava/lang/String;
    .end local v25    # "processedOverlayData":Ljava/lang/String;
    .end local v26    # "sanitizedOverlayData":Ljava/lang/String;
    :catch_0
    move-exception v29

    const/16 v29, 0x0

    :try_start_3
    const-string v30, "GameCircleAlertUserInterface#onCreate"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 76
    .restart local v10    # "overlayData":Ljava/lang/String;
    .restart local v11    # "overlayDataJson":Lorg/json/JSONObject;
    .restart local v12    # "overlayExperiments":Lorg/json/JSONObject;
    .restart local v13    # "overlaySessionAppName":Ljava/lang/String;
    .restart local v14    # "overlaySessionClientVersion":Ljava/lang/String;
    .restart local v15    # "overlaySessionContentVersion":Ljava/lang/String;
    .restart local v16    # "overlaySessionCountryCode":Ljava/lang/String;
    .restart local v17    # "overlaySessionDeviceId":Ljava/lang/String;
    .restart local v18    # "overlaySessionDeviceManufacturer":Ljava/lang/String;
    .restart local v19    # "overlaySessionDeviceModel":Ljava/lang/String;
    .restart local v20    # "overlaySessionDeviceType":Ljava/lang/String;
    .restart local v21    # "overlaySessionGameCircleVersion":Ljava/lang/String;
    .restart local v22    # "overlaySessionLanguageCode":Ljava/lang/String;
    .restart local v23    # "overlaySessionVariations":Ljava/lang/String;
    .restart local v26    # "sanitizedOverlayData":Ljava/lang/String;
    :cond_1
    :try_start_4
    check-cast v11, Lorg/json/JSONObject;

    .end local v11    # "overlayDataJson":Lorg/json/JSONObject;
    invoke-static {v11}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v26

    goto/16 :goto_1

    .line 78
    .end local v12    # "overlayExperiments":Lorg/json/JSONObject;
    :catch_1
    move-exception v7

    .line 79
    .local v7, "e":Ljava/lang/Exception;
    sget-object v29, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->TAG:Ljava/lang/String;

    const-string v30, "Error occurred while preparing alert initialization data"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 134
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v25    # "processedOverlayData":Ljava/lang/String;
    :catch_2
    move-exception v7

    .line 135
    .restart local v7    # "e":Ljava/lang/Exception;
    sget-object v29, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->TAG:Ljava/lang/String;

    const-string v30, "Unexpected error occurred while displaying alert.  Alert will close."

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->finish()V

    goto :goto_2
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    return-void
.end method
