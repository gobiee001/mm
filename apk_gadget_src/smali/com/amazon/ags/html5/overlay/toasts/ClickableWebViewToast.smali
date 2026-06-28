.class public Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;
.super Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl;
.source "ClickableWebViewToast.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private data:Ljava/lang/String;

.field private final jsRepository:Lcom/amazon/ags/html5/javascript/JavascriptRepository;

.field private localizationUtil:Lcom/amazon/ags/html5/util/LocalizationUtil;

.field private serviceHelper:Lcom/amazon/ags/html5/service/ServiceHelper;

.field private final uiPoster:Landroid/os/Handler;

.field private final webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;Lcom/amazon/ags/html5/util/WebViewFactory;Lcom/amazon/ags/html5/javascript/JavascriptRepository;Lcom/amazon/ags/html5/service/ServiceHelper;Lcom/amazon/ags/html5/util/LocalizationUtil;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uiPoster"    # Landroid/os/Handler;
    .param p3, "params"    # Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;
    .param p4, "webViewFactory"    # Lcom/amazon/ags/html5/util/WebViewFactory;
    .param p5, "jsRepository"    # Lcom/amazon/ags/html5/javascript/JavascriptRepository;
    .param p6, "serviceHelper"    # Lcom/amazon/ags/html5/service/ServiceHelper;
    .param p7, "localizationUtil"    # Lcom/amazon/ags/html5/util/LocalizationUtil;

    .prologue
    .line 47
    invoke-direct {p0, p1, p3}, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl;-><init>(Landroid/app/Activity;Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;)V

    .line 48
    iput-object p6, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->serviceHelper:Lcom/amazon/ags/html5/service/ServiceHelper;

    .line 49
    iput-object p2, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->uiPoster:Landroid/os/Handler;

    .line 50
    iput-object p5, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->jsRepository:Lcom/amazon/ags/html5/javascript/JavascriptRepository;

    .line 51
    invoke-virtual {p4}, Lcom/amazon/ags/html5/util/WebViewFactory;->newToastWebView()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->webView:Landroid/webkit/WebView;

    .line 52
    iget-object v0, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->LOW:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 53
    iget-object v0, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 54
    iget-object v0, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->jsRepository:Lcom/amazon/ags/html5/javascript/JavascriptRepository;

    iget-object v1, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->webView:Landroid/webkit/WebView;

    invoke-interface {v0, v1}, Lcom/amazon/ags/html5/javascript/JavascriptRepository;->loadToastJavascript(Landroid/webkit/WebView;)V

    .line 55
    iput-object p7, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->localizationUtil:Lcom/amazon/ags/html5/util/LocalizationUtil;

    .line 58
    const-string/jumbo v0, "{}"

    iput-object v0, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->data:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->addView(Landroid/view/View;)V

    .line 61
    iget-object v0, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->webView:Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->setViewParams(Landroid/view/View;)V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->data:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private setViewParams(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 117
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x43a00000    # 320.0f

    invoke-virtual {p0}, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 118
    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 119
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 120
    return-void
.end method


# virtual methods
.method protected initView()Landroid/view/View;
    .locals 14

    .prologue
    .line 66
    iget-object v10, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->localizationUtil:Lcom/amazon/ags/html5/util/LocalizationUtil;

    invoke-virtual {v10}, Lcom/amazon/ags/html5/util/LocalizationUtil;->getLanguageCode()Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "languageCode":Ljava/lang/String;
    iget-object v10, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->localizationUtil:Lcom/amazon/ags/html5/util/LocalizationUtil;

    invoke-virtual {v10}, Lcom/amazon/ags/html5/util/LocalizationUtil;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "countryCode":Ljava/lang/String;
    iget-object v10, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->toastParams:Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;

    invoke-virtual {v10}, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;->getIsFireTV()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 71
    .local v2, "isFireTV":Ljava/lang/Boolean;
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    iget-object v10, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->data:Ljava/lang/String;

    invoke-static {v10}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 72
    .local v9, "toastParams":Lorg/json/JSONObject;
    const-string v10, "toastDurationFadeIn"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 73
    .local v6, "toastDurationFadeIn":Ljava/lang/Integer;
    const-string v10, "toastDurationShow"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 74
    .local v8, "toastDurationShow":Ljava/lang/Integer;
    const-string v10, "toastDurationFadeOut"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 75
    .local v7, "toastDurationFadeOut":Ljava/lang/Integer;
    const-string v10, "locationIsGCDefault"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 76
    .local v5, "locationIsGCDefault":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 77
    iget-object v10, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->toastParams:Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-long v12, v11

    invoke-virtual {v10, v12, v13}, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;->setFadeInDuration(J)V

    .line 79
    :cond_0
    if-eqz v8, :cond_1

    .line 80
    iget-object v10, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->toastParams:Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-long v12, v11

    invoke-virtual {v10, v12, v13}, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;->setDuration(J)V

    .line 82
    :cond_1
    if-eqz v7, :cond_2

    .line 83
    iget-object v10, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->toastParams:Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-long v12, v11

    invoke-virtual {v10, v12, v13}, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;->setFadeOutDuration(J)V

    .line 85
    :cond_2
    const-string v10, "true"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 86
    iget-object v10, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->toastParams:Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;

    sget-object v11, Lcom/amazon/ags/api/overlay/PopUpLocation;->BOTTOM_CENTER:Lcom/amazon/ags/api/overlay/PopUpLocation;

    invoke-virtual {v10, v11}, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;->setPopUpLocation(Lcom/amazon/ags/api/overlay/PopUpLocation;)V

    .line 92
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "javascript:var data = {params:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->data:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", aggregateCount:0, languageCode:\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\', countryCode:\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\', isFireTV: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "};"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "renderData(data);"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "jsRequest":Ljava/lang/String;
    iget-object v10, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->webView:Landroid/webkit/WebView;

    invoke-virtual {v10, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v3    # "jsRequest":Ljava/lang/String;
    .end local v5    # "locationIsGCDefault":Ljava/lang/String;
    .end local v6    # "toastDurationFadeIn":Ljava/lang/Integer;
    .end local v7    # "toastDurationFadeOut":Ljava/lang/Integer;
    .end local v8    # "toastDurationShow":Ljava/lang/Integer;
    .end local v9    # "toastParams":Lorg/json/JSONObject;
    :goto_1
    iget-object v10, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->webView:Landroid/webkit/WebView;

    return-object v10

    .line 88
    .restart local v5    # "locationIsGCDefault":Ljava/lang/String;
    .restart local v6    # "toastDurationFadeIn":Ljava/lang/Integer;
    .restart local v7    # "toastDurationFadeOut":Ljava/lang/Integer;
    .restart local v8    # "toastDurationShow":Ljava/lang/Integer;
    .restart local v9    # "toastParams":Lorg/json/JSONObject;
    :cond_3
    :try_start_1
    iget-object v10, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->toastParams:Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;

    sget-object v11, Lcom/amazon/ags/html5/overlay/PopUpPrefs;->INSTANCE:Lcom/amazon/ags/html5/overlay/PopUpPrefs;

    invoke-virtual {v11}, Lcom/amazon/ags/html5/overlay/PopUpPrefs;->getLocation()Lcom/amazon/ags/api/overlay/PopUpLocation;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;->setPopUpLocation(Lcom/amazon/ags/api/overlay/PopUpLocation;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 96
    .end local v5    # "locationIsGCDefault":Ljava/lang/String;
    .end local v6    # "toastDurationFadeIn":Ljava/lang/Integer;
    .end local v7    # "toastDurationFadeOut":Ljava/lang/Integer;
    .end local v8    # "toastDurationShow":Ljava/lang/Integer;
    .end local v9    # "toastParams":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/Exception;
    sget-object v10, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->TAG:Ljava/lang/String;

    const-string v11, "Unable to prepare toast content.  Toast parameters not valid JSON"

    invoke-static {v10, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setServiceHelper(Lcom/amazon/ags/html5/service/ServiceHelper;)V
    .locals 0
    .param p1, "serviceHelper"    # Lcom/amazon/ags/html5/service/ServiceHelper;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->serviceHelper:Lcom/amazon/ags/html5/service/ServiceHelper;

    .line 161
    return-void
.end method

.method public setToastData(Ljava/lang/String;)V
    .locals 0
    .param p1, "jsonData"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->data:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public show(Landroid/os/Handler;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl;->show(Landroid/os/Handler;)V

    .line 134
    new-instance v0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast$2;

    invoke-direct {v0, p0}, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast$2;-><init>(Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;)V

    .line 152
    .local v0, "jsonRequest":Lcom/amazon/ags/client/JSONRequest;
    iget-object v1, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->serviceHelper:Lcom/amazon/ags/html5/service/ServiceHelper;

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->serviceHelper:Lcom/amazon/ags/html5/service/ServiceHelper;

    invoke-interface {v1, v0}, Lcom/amazon/ags/html5/service/ServiceHelper;->handleRequestAsync(Lcom/amazon/ags/client/JSONRequest;)V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    sget-object v1, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->TAG:Ljava/lang/String;

    const-string v2, "Error submitting toast metric request"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public update(Ljava/lang/String;I)V
    .locals 3
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "aggregateCount"    # I

    .prologue
    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:var data = {params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/amazon/ags/html5/util/JSONUtils;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", aggregateCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "};"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "renderData(data);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "jsRequest":Ljava/lang/String;
    iget-object v1, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->uiPoster:Landroid/os/Handler;

    new-instance v2, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast$1;

    invoke-direct {v2, p0, v0}, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast$1;-><init>(Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 113
    return-void
.end method
