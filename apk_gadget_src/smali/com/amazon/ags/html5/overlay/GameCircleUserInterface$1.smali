.class Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;
.super Ljava/lang/Object;
.source "GameCircleUserInterface.java"

# interfaces
.implements Lcom/amazon/ags/html5/javascript/domain/MessageHandlerReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;

.field final synthetic val$serviceFactory:Lcom/amazon/ags/html5/factory/ServiceFactory;

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;Lcom/amazon/ags/html5/factory/ServiceFactory;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;->this$0:Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;

    iput-object p2, p0, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;->val$serviceFactory:Lcom/amazon/ags/html5/factory/ServiceFactory;

    iput-object p3, p0, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;->val$webView:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageHandlerReady()V
    .locals 21

    .prologue
    .line 61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;->this$0:Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "OVERLAY_DATA_BUNDLE"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, "overlayData":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;->this$0:Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "OVERLAY_SESSION_GAMECIRCLE_VERSION_KEY"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 63
    .local v15, "overlaySessionGameCircleVersion":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;->this$0:Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "OVERLAY_SESSION_CLIENT_VERSION"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 64
    .local v8, "overlaySessionClientVersion":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;->this$0:Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "OVERLAY_SESSION_CONTENT_VERSION"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 65
    .local v9, "overlaySessionContentVersion":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;->this$0:Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "OVERLAY_SESSION_APPLICATION_NAME"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 66
    .local v7, "overlaySessionAppName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;->this$0:Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "OVERLAY_SESSION_LANGUAGE_CODE"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 67
    .local v16, "overlaySessionLanguageCode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;->this$0:Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "OVERLAY_SESSION_COUNTRY_CODE"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 68
    .local v10, "overlaySessionCountryCode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;->this$0:Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "OVERLAY_SESSION_DEVICE_IDENTIFIER"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 69
    .local v11, "overlaySessionDeviceId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;->this$0:Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "OVERLAY_SESSION_DEVICE_MANUFACTURER"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 70
    .local v12, "overlaySessionDeviceManufacturer":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;->this$0:Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "OVERLAY_SESSION_DEVICE_MODEL"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 71
    .local v13, "overlaySessionDeviceModel":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;->this$0:Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "OVERLAY_SESSION_DEVICE_TYPE"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 72
    .local v14, "overlaySessionDeviceType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;->this$0:Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "OVERLAY_SESSION_VARIATION_CACHE"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 74
    .local v17, "overlaySessionVariations":Ljava/lang/String;
    invoke-static {v3}, Lcom/amazon/ags/html5/util/JSONUtils;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 77
    .local v18, "sanitizedOverlayData":Ljava/lang/String;
    :try_start_0
    new-instance v19, Lorg/json/JSONObject;

    invoke-static/range {v18 .. v18}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 78
    .local v4, "overlayDataJson":Lorg/json/JSONObject;
    const-string v19, "gameCircleVersion"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string v19, "clientVersion"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string v19, "contentVersion"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string v19, "appName"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string v19, "languageCode"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string v19, "countryCode"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string v19, "deviceId"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string v19, "deviceManufacturer"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string v19, "deviceModel"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string v19, "deviceType"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string v19, "canSendMail"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 90
    new-instance v19, Lorg/json/JSONObject;

    invoke-static/range {v17 .. v17}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 91
    .local v5, "overlayExperiments":Lorg/json/JSONObject;
    const-string v19, "experiments"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    if-eqz v4, :cond_0

    .line 94
    instance-of v0, v4, Lorg/json/JSONObject;

    move/from16 v19, v0

    if-nez v19, :cond_1

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 101
    .end local v4    # "overlayDataJson":Lorg/json/JSONObject;
    .end local v5    # "overlayExperiments":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    move-object/from16 v6, v18

    .line 104
    .local v6, "overlayInputData":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;->val$serviceFactory:Lcom/amazon/ags/html5/factory/ServiceFactory;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/amazon/ags/html5/factory/ServiceFactory;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v19

    new-instance v20, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1$1;-><init>(Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 118
    :goto_1
    return-void

    .line 94
    .end local v6    # "overlayInputData":Ljava/lang/String;
    .restart local v4    # "overlayDataJson":Lorg/json/JSONObject;
    .restart local v5    # "overlayExperiments":Lorg/json/JSONObject;
    :cond_1
    :try_start_2
    check-cast v4, Lorg/json/JSONObject;

    .end local v4    # "overlayDataJson":Lorg/json/JSONObject;
    invoke-static {v4}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v18

    goto :goto_0

    .line 97
    .end local v5    # "overlayExperiments":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 98
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->access$000()Ljava/lang/String;

    move-result-object v19

    const-string v20, "Error occurred while adding client version to overlay initialization"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 114
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v6    # "overlayInputData":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 115
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->access$000()Ljava/lang/String;

    move-result-object v19

    const-string v20, "Unexpected error occurred while processing overlay message.  Overlay will close."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;->this$0:Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->finish()V

    goto :goto_1
.end method
