.class Lcom/amazon/device/ads/InAppBrowser;
.super Ljava/lang/Object;
.source "InAppBrowser.java"

# interfaces
.implements Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;,
        Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;
    }
.end annotation


# static fields
.field protected static final BUTTON_SIZE_DP:I = 0x32

.field private static final CONTENT_DESCRIPTION_BACK_BUTTON:Ljava/lang/String; = "inAppBrowserBackButton"

.field private static final CONTENT_DESCRIPTION_BUTTON_LAYOUT:Ljava/lang/String; = "inAppBrowserButtonLayout"

.field private static final CONTENT_DESCRIPTION_CLOSE_BUTTON:Ljava/lang/String; = "inAppBrowserCloseButton"

.field private static final CONTENT_DESCRIPTION_FORWARD_BUTTON:Ljava/lang/String; = "inAppBrowserForwardButton"

.field private static final CONTENT_DESCRIPTION_HORZ_RULE:Ljava/lang/String; = "inAppBrowserHorizontalRule"

.field private static final CONTENT_DESCRIPTION_MAIN_LAYOUT:Ljava/lang/String; = "inAppBrowserMainLayout"

.field private static final CONTENT_DESCRIPTION_OPEN_EXT_BRWSR_BUTTON:Ljava/lang/String; = "inAppBrowserOpenExternalBrowserButton"

.field private static final CONTENT_DESCRIPTION_REFRESH_BUTTON:Ljava/lang/String; = "inAppBrowserRefreshButton"

.field private static final CONTENT_DESCRIPTION_RELATIVE_LAYOUT:Ljava/lang/String; = "inAppBrowserRelativeLayout"

.field private static final CONTENT_DESCRIPTION_WEB_VIEW:Ljava/lang/String; = "inAppBrowserWebView"

.field protected static final HORIZONTAL_RULE_SIZE_DP:I = 0x3

.field protected static final LOGTAG:Ljava/lang/String;

.field protected static final SHOW_OPEN_EXTERNAL_BROWSER_BTN:Ljava/lang/String; = "extra_open_btn"

.field protected static final URL_EXTRA:Ljava/lang/String; = "extra_url"


# instance fields
.field private activity:Landroid/app/Activity;

.field private final assets:Lcom/amazon/device/ads/Assets;

.field private browserBackButton:Landroid/widget/ImageButton;

.field private browserForwardButton:Landroid/widget/ImageButton;

.field private final buttonsCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private closeButton:Landroid/widget/ImageButton;

.field private final cookieManager:Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;

.field private final infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

.field private final layoutFactory:Lcom/amazon/device/ads/LayoutFactory;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private openExternalBrowserButton:Landroid/widget/ImageButton;

.field private refreshButton:Landroid/widget/ImageButton;

.field private final settings:Lcom/amazon/device/ads/Settings;

.field private showOpenExternalBrowserButton:Z

.field private final threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

.field private final webUtils:Lcom/amazon/device/ads/WebUtils2;

.field private webView:Landroid/webkit/WebView;

.field private final webViewFactory:Lcom/amazon/device/ads/WebViewFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/amazon/device/ads/InAppBrowser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/InAppBrowser;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 10

    .prologue
    .line 80
    new-instance v1, Lcom/amazon/device/ads/WebUtils2;

    invoke-direct {v1}, Lcom/amazon/device/ads/WebUtils2;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/WebViewFactory;->getInstance()Lcom/amazon/device/ads/WebViewFactory;

    move-result-object v2

    new-instance v3, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v3}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v4

    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v5

    invoke-static {}, Lcom/amazon/device/ads/Assets;->getInstance()Lcom/amazon/device/ads/Assets;

    move-result-object v6

    new-instance v7, Lcom/amazon/device/ads/LayoutFactory;

    invoke-direct {v7}, Lcom/amazon/device/ads/LayoutFactory;-><init>()V

    new-instance v8, Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;

    invoke-direct {v8}, Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/ThreadUtils;->getThreadRunner()Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    move-result-object v9

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/amazon/device/ads/InAppBrowser;-><init>(Lcom/amazon/device/ads/WebUtils2;Lcom/amazon/device/ads/WebViewFactory;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/Assets;Lcom/amazon/device/ads/LayoutFactory;Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;)V

    .line 89
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/WebUtils2;Lcom/amazon/device/ads/WebViewFactory;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/Assets;Lcom/amazon/device/ads/LayoutFactory;Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;)V
    .locals 2
    .param p1, "webUtils"    # Lcom/amazon/device/ads/WebUtils2;
    .param p2, "webViewFactory"    # Lcom/amazon/device/ads/WebViewFactory;
    .param p3, "loggerFactory"    # Lcom/amazon/device/ads/MobileAdsLoggerFactory;
    .param p4, "infoStore"    # Lcom/amazon/device/ads/MobileAdsInfoStore;
    .param p5, "settings"    # Lcom/amazon/device/ads/Settings;
    .param p6, "assets"    # Lcom/amazon/device/ads/Assets;
    .param p7, "layoutFactory"    # Lcom/amazon/device/ads/LayoutFactory;
    .param p8, "cookieManager"    # Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;
    .param p9, "threadRunner"    # Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->buttonsCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 100
    iput-object p1, p0, Lcom/amazon/device/ads/InAppBrowser;->webUtils:Lcom/amazon/device/ads/WebUtils2;

    .line 101
    iput-object p2, p0, Lcom/amazon/device/ads/InAppBrowser;->webViewFactory:Lcom/amazon/device/ads/WebViewFactory;

    .line 102
    sget-object v0, Lcom/amazon/device/ads/InAppBrowser;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 103
    iput-object p4, p0, Lcom/amazon/device/ads/InAppBrowser;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    .line 104
    iput-object p5, p0, Lcom/amazon/device/ads/InAppBrowser;->settings:Lcom/amazon/device/ads/Settings;

    .line 105
    iput-object p6, p0, Lcom/amazon/device/ads/InAppBrowser;->assets:Lcom/amazon/device/ads/Assets;

    .line 106
    iput-object p7, p0, Lcom/amazon/device/ads/InAppBrowser;->layoutFactory:Lcom/amazon/device/ads/LayoutFactory;

    .line 107
    iput-object p8, p0, Lcom/amazon/device/ads/InAppBrowser;->cookieManager:Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;

    .line 108
    iput-object p9, p0, Lcom/amazon/device/ads/InAppBrowser;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/InAppBrowser;)Lcom/amazon/device/ads/MobileAdsLogger;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/device/ads/InAppBrowser;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/device/ads/InAppBrowser;)Lcom/amazon/device/ads/WebUtils2;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/device/ads/InAppBrowser;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->webUtils:Lcom/amazon/device/ads/WebUtils2;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/amazon/device/ads/InAppBrowser;)Z
    .locals 1
    .param p0, "x0"    # Lcom/amazon/device/ads/InAppBrowser;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/amazon/device/ads/InAppBrowser;->showOpenExternalBrowserButton:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/amazon/device/ads/InAppBrowser;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/device/ads/InAppBrowser;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->openExternalBrowserButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/amazon/device/ads/InAppBrowser;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;
    .locals 0
    .param p0, "x0"    # Lcom/amazon/device/ads/InAppBrowser;
    .param p1, "x1"    # Landroid/widget/ImageButton;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/amazon/device/ads/InAppBrowser;->openExternalBrowserButton:Landroid/widget/ImageButton;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/amazon/device/ads/InAppBrowser;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/device/ads/InAppBrowser;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->refreshButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/amazon/device/ads/InAppBrowser;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;
    .locals 0
    .param p0, "x0"    # Lcom/amazon/device/ads/InAppBrowser;
    .param p1, "x1"    # Landroid/widget/ImageButton;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/amazon/device/ads/InAppBrowser;->refreshButton:Landroid/widget/ImageButton;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/amazon/device/ads/InAppBrowser;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/amazon/device/ads/InAppBrowser;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/InAppBrowser;->initializeButtons(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/amazon/device/ads/InAppBrowser;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/device/ads/InAppBrowser;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->buttonsCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/device/ads/InAppBrowser;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/device/ads/InAppBrowser;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/device/ads/InAppBrowser;Landroid/webkit/WebView;)V
    .locals 0
    .param p0, "x0"    # Lcom/amazon/device/ads/InAppBrowser;
    .param p1, "x1"    # Landroid/webkit/WebView;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/InAppBrowser;->updateNavigationButtons(Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/device/ads/InAppBrowser;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/device/ads/InAppBrowser;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/amazon/device/ads/InAppBrowser;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/device/ads/InAppBrowser;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->browserBackButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$502(Lcom/amazon/device/ads/InAppBrowser;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;
    .locals 0
    .param p0, "x0"    # Lcom/amazon/device/ads/InAppBrowser;
    .param p1, "x1"    # Landroid/widget/ImageButton;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/amazon/device/ads/InAppBrowser;->browserBackButton:Landroid/widget/ImageButton;

    return-object p1
.end method

.method static synthetic access$600(Lcom/amazon/device/ads/InAppBrowser;)Lcom/amazon/device/ads/Assets;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/device/ads/InAppBrowser;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->assets:Lcom/amazon/device/ads/Assets;

    return-object v0
.end method

.method static synthetic access$700(Lcom/amazon/device/ads/InAppBrowser;Ljava/lang/String;IIII)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/device/ads/InAppBrowser;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 37
    invoke-direct/range {p0 .. p5}, Lcom/amazon/device/ads/InAppBrowser;->createButton(Ljava/lang/String;IIII)Landroid/widget/ImageButton;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/amazon/device/ads/InAppBrowser;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/device/ads/InAppBrowser;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->browserForwardButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$802(Lcom/amazon/device/ads/InAppBrowser;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;
    .locals 0
    .param p0, "x0"    # Lcom/amazon/device/ads/InAppBrowser;
    .param p1, "x1"    # Landroid/widget/ImageButton;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/amazon/device/ads/InAppBrowser;->browserForwardButton:Landroid/widget/ImageButton;

    return-object p1
.end method

.method static synthetic access$900(Lcom/amazon/device/ads/InAppBrowser;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/device/ads/InAppBrowser;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->closeButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$902(Lcom/amazon/device/ads/InAppBrowser;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;
    .locals 0
    .param p0, "x0"    # Lcom/amazon/device/ads/InAppBrowser;
    .param p1, "x1"    # Landroid/widget/ImageButton;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/amazon/device/ads/InAppBrowser;->closeButton:Landroid/widget/ImageButton;

    return-object p1
.end method

.method private createButton(Ljava/lang/String;IIII)Landroid/widget/ImageButton;
    .locals 3
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "verb"    # I
    .param p3, "anchor"    # I
    .param p4, "buttonWidth"    # I
    .param p5, "buttonHeight"    # I

    .prologue
    .line 182
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/amazon/device/ads/InAppBrowser;->activity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 183
    .local v0, "button":Landroid/widget/ImageButton;
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 184
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, p4, p5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 185
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 186
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 187
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 189
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 190
    return-object v0
.end method

.method private enableCookies()V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->cookieManager:Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;

    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;->createCookieSyncManager(Landroid/content/Context;)V

    .line 329
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->cookieManager:Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;

    invoke-virtual {v0}, Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;->startSync()V

    .line 330
    return-void
.end method

.method private initialize(Landroid/content/Intent;)V
    .locals 18
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v10, Landroid/util/DisplayMetrics;

    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    .line 135
    .local v10, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/amazon/device/ads/InAppBrowser;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 136
    iget v8, v10, Landroid/util/DisplayMetrics;->density:F

    .line 137
    .local v8, "mDensity":F
    const/high16 v1, 0x42480000    # 50.0f

    mul-float/2addr v1, v8

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v6, v1

    .line 138
    .local v6, "buttonHeight":I
    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v1, v8

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v15, v1

    .line 139
    .local v15, "ruleSize":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/amazon/device/ads/InAppBrowser;->showOpenExternalBrowserButton:Z

    if-eqz v1, :cond_0

    const/4 v7, 0x5

    .line 140
    .local v7, "buttonCount":I
    :goto_0
    iget v1, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v1, v7

    mul-int/lit8 v2, v6, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 142
    .local v5, "buttonWidth":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amazon/device/ads/InAppBrowser;->layoutFactory:Lcom/amazon/device/ads/LayoutFactory;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amazon/device/ads/InAppBrowser;->activity:Landroid/app/Activity;

    sget-object v3, Lcom/amazon/device/ads/LayoutFactory$LayoutType;->RELATIVE_LAYOUT:Lcom/amazon/device/ads/LayoutFactory$LayoutType;

    const-string v17, "inAppBrowserButtonLayout"

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v3, v0}, Lcom/amazon/device/ads/LayoutFactory;->createLayout(Landroid/content/Context;Lcom/amazon/device/ads/LayoutFactory$LayoutType;Ljava/lang/String;)Landroid/view/ViewGroup;

    move-result-object v4

    .line 143
    .local v4, "layout":Landroid/view/ViewGroup;
    const/16 v1, 0x2828

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setId(I)V

    .line 144
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    add-int v2, v6, v15

    invoke-direct {v13, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 145
    .local v13, "rp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xc

    invoke-virtual {v13, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 146
    invoke-virtual {v4, v13}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    const v1, -0xf0f10

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/device/ads/InAppBrowser;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    move-object/from16 v17, v0

    new-instance v1, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/amazon/device/ads/InAppBrowser$LoadButtonsTask;-><init>(Lcom/amazon/device/ads/InAppBrowser;Landroid/content/Intent;Landroid/view/ViewGroup;II)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->executeAsyncTask(Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask;[Ljava/lang/Object;)V

    .line 152
    new-instance v14, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amazon/device/ads/InAppBrowser;->activity:Landroid/app/Activity;

    invoke-direct {v14, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 153
    .local v14, "rule":Landroid/view/View;
    const-string v1, "inAppBrowserHorizontalRule"

    invoke-virtual {v14, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 154
    const v1, -0x333334

    invoke-virtual {v14, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 155
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v11, v1, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 156
    .local v11, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xa

    invoke-virtual {v11, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 157
    invoke-virtual {v14, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    invoke-virtual {v4, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amazon/device/ads/InAppBrowser;->webViewFactory:Lcom/amazon/device/ads/WebViewFactory;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amazon/device/ads/InAppBrowser;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/WebViewFactory;->createWebView(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    .line 161
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amazon/device/ads/InAppBrowser;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v3}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getDeviceInfo()Lcom/amazon/device/ads/DeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/device/ads/DeviceInfo;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-inAppBrowser"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    const-string v2, "inAppBrowserWebView"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 163
    new-instance v16, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 164
    .local v16, "wrp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x2

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 165
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amazon/device/ads/InAppBrowser;->layoutFactory:Lcom/amazon/device/ads/LayoutFactory;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amazon/device/ads/InAppBrowser;->activity:Landroid/app/Activity;

    sget-object v3, Lcom/amazon/device/ads/LayoutFactory$LayoutType;->RELATIVE_LAYOUT:Lcom/amazon/device/ads/LayoutFactory$LayoutType;

    const-string v17, "inAppBrowserRelativeLayout"

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v3, v0}, Lcom/amazon/device/ads/LayoutFactory;->createLayout(Landroid/content/Context;Lcom/amazon/device/ads/LayoutFactory$LayoutType;Ljava/lang/String;)Landroid/view/ViewGroup;

    move-result-object v12

    .line 168
    .local v12, "rl":Landroid/view/ViewGroup;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v12, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 170
    invoke-virtual {v12, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amazon/device/ads/InAppBrowser;->layoutFactory:Lcom/amazon/device/ads/LayoutFactory;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amazon/device/ads/InAppBrowser;->activity:Landroid/app/Activity;

    sget-object v3, Lcom/amazon/device/ads/LayoutFactory$LayoutType;->LINEAR_LAYOUT:Lcom/amazon/device/ads/LayoutFactory$LayoutType;

    const-string v17, "inAppBrowserMainLayout"

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v3, v0}, Lcom/amazon/device/ads/LayoutFactory;->createLayout(Landroid/content/Context;Lcom/amazon/device/ads/LayoutFactory$LayoutType;Ljava/lang/String;)Landroid/view/ViewGroup;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 173
    .local v9, "mainll":Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 174
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    invoke-virtual {v9, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amazon/device/ads/InAppBrowser;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v9}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 178
    return-void

    .line 139
    .end local v4    # "layout":Landroid/view/ViewGroup;
    .end local v5    # "buttonWidth":I
    .end local v7    # "buttonCount":I
    .end local v9    # "mainll":Landroid/widget/LinearLayout;
    .end local v11    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v12    # "rl":Landroid/view/ViewGroup;
    .end local v13    # "rp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v14    # "rule":Landroid/view/View;
    .end local v16    # "wrp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    const/4 v7, 0x4

    goto/16 :goto_0
.end method

.method private initializeButtons(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 242
    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser;->browserBackButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/amazon/device/ads/InAppBrowser$3;

    invoke-direct {v2, p0}, Lcom/amazon/device/ads/InAppBrowser$3;-><init>(Lcom/amazon/device/ads/InAppBrowser;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser;->browserForwardButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/amazon/device/ads/InAppBrowser$4;

    invoke-direct {v2, p0}, Lcom/amazon/device/ads/InAppBrowser$4;-><init>(Lcom/amazon/device/ads/InAppBrowser;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser;->refreshButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/amazon/device/ads/InAppBrowser$5;

    invoke-direct {v2, p0}, Lcom/amazon/device/ads/InAppBrowser$5;-><init>(Lcom/amazon/device/ads/InAppBrowser;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser;->closeButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/amazon/device/ads/InAppBrowser$6;

    invoke-direct {v2, p0}, Lcom/amazon/device/ads/InAppBrowser$6;-><init>(Lcom/amazon/device/ads/InAppBrowser;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-boolean v1, p0, Lcom/amazon/device/ads/InAppBrowser;->showOpenExternalBrowserButton:Z

    if-eqz v1, :cond_0

    .line 282
    const-string v1, "extra_url"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "originalUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser;->openExternalBrowserButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/amazon/device/ads/InAppBrowser$7;

    invoke-direct {v2, p0, v0}, Lcom/amazon/device/ads/InAppBrowser$7;-><init>(Lcom/amazon/device/ads/InAppBrowser;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    .end local v0    # "originalUrl":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private initializeWebView(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->webViewFactory:Lcom/amazon/device/ads/WebViewFactory;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    sget-object v3, Lcom/amazon/device/ads/InAppBrowser;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/device/ads/WebViewFactory;->setJavaScriptEnabledForWebView(ZLandroid/webkit/WebView;Ljava/lang/String;)Z

    .line 198
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    const-string v1, "extra_url"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/amazon/device/ads/InAppBrowser$1;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/InAppBrowser$1;-><init>(Lcom/amazon/device/ads/InAppBrowser;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 224
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/amazon/device/ads/InAppBrowser$2;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/InAppBrowser$2;-><init>(Lcom/amazon/device/ads/InAppBrowser;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 238
    return-void
.end method

.method private updateNavigationButtons(Landroid/webkit/WebView;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;

    .prologue
    const/16 v2, 0xff

    const/16 v1, 0x66

    .line 305
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->browserBackButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->browserForwardButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->browserBackButton:Landroid/widget/ImageButton;

    invoke-static {v0, v2}, Lcom/amazon/device/ads/AndroidTargetUtils;->setImageButtonAlpha(Landroid/widget/ImageButton;I)V

    .line 316
    :goto_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->browserForwardButton:Landroid/widget/ImageButton;

    invoke-static {v0, v2}, Lcom/amazon/device/ads/AndroidTargetUtils;->setImageButtonAlpha(Landroid/widget/ImageButton;I)V

    .line 325
    :cond_0
    :goto_1
    return-void

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->browserBackButton:Landroid/widget/ImageButton;

    invoke-static {v0, v1}, Lcom/amazon/device/ads/AndroidTargetUtils;->setImageButtonAlpha(Landroid/widget/ImageButton;I)V

    goto :goto_0

    .line 322
    :cond_2
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->browserForwardButton:Landroid/widget/ImageButton;

    invoke-static {v0, v1}, Lcom/amazon/device/ads/AndroidTargetUtils;->setImageButtonAlpha(Landroid/widget/ImageButton;I)V

    goto :goto_1
.end method


# virtual methods
.method protected canPauseWebViewTimers()Z
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/device/ads/InAppBrowser;->getShouldPauseWebViewTimers()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected canResumeWebViewTimers()Z
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/device/ads/InAppBrowser;->getShouldPauseWebViewTimers()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getMetrics(Landroid/util/DisplayMetrics;)V
    .locals 3
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 556
    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser;->activity:Landroid/app/Activity;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 557
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 558
    return-void
.end method

.method protected getShouldPauseWebViewTimers()Z
    .locals 3

    .prologue
    .line 334
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->settings:Lcom/amazon/device/ads/Settings;

    const-string v1, "shouldPauseWebViewTimersInWebViewRelatedActivities"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 623
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 11
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0xc

    .line 564
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 565
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0, v4}, Lcom/amazon/device/ads/InAppBrowser;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 566
    iget v3, v4, Landroid/util/DisplayMetrics;->density:F

    .line 567
    .local v3, "mDensity":F
    const/high16 v6, 0x42480000    # 50.0f

    mul-float/2addr v6, v3

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v1, v6

    .line 568
    .local v1, "buttonHeight":I
    iget-boolean v6, p0, Lcom/amazon/device/ads/InAppBrowser;->showOpenExternalBrowserButton:Z

    if-eqz v6, :cond_4

    const/4 v0, 0x5

    .line 569
    .local v0, "buttonCount":I
    :goto_0
    iget v6, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v6, v0

    mul-int/lit8 v7, v1, 0x2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 570
    .local v2, "buttonWidth":I
    iget-object v6, p0, Lcom/amazon/device/ads/InAppBrowser;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Width: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ButtonWidth: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 572
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 573
    .local v5, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lcom/amazon/device/ads/InAppBrowser;->browserBackButton:Landroid/widget/ImageButton;

    if-eqz v6, :cond_0

    .line 575
    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 576
    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 577
    iget-object v6, p0, Lcom/amazon/device/ads/InAppBrowser;->browserBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v5}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 580
    :cond_0
    iget-object v6, p0, Lcom/amazon/device/ads/InAppBrowser;->browserForwardButton:Landroid/widget/ImageButton;

    if-eqz v6, :cond_1

    .line 582
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v5    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v5, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 583
    .restart local v5    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lcom/amazon/device/ads/InAppBrowser;->browserBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getId()I

    move-result v6

    invoke-virtual {v5, v10, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 584
    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 585
    iget-object v6, p0, Lcom/amazon/device/ads/InAppBrowser;->browserForwardButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v5}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 588
    :cond_1
    iget-object v6, p0, Lcom/amazon/device/ads/InAppBrowser;->closeButton:Landroid/widget/ImageButton;

    if-eqz v6, :cond_2

    .line 590
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v5    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v5, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 591
    .restart local v5    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 592
    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 593
    iget-object v6, p0, Lcom/amazon/device/ads/InAppBrowser;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v5}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 596
    :cond_2
    iget-object v6, p0, Lcom/amazon/device/ads/InAppBrowser;->openExternalBrowserButton:Landroid/widget/ImageButton;

    if-eqz v6, :cond_5

    .line 598
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v5    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v5, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 599
    .restart local v5    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lcom/amazon/device/ads/InAppBrowser;->browserForwardButton:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getId()I

    move-result v6

    invoke-virtual {v5, v10, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 600
    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 601
    iget-object v6, p0, Lcom/amazon/device/ads/InAppBrowser;->openExternalBrowserButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v5}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 603
    iget-object v6, p0, Lcom/amazon/device/ads/InAppBrowser;->refreshButton:Landroid/widget/ImageButton;

    if-eqz v6, :cond_3

    .line 605
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v5    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v5, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 606
    .restart local v5    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lcom/amazon/device/ads/InAppBrowser;->openExternalBrowserButton:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getId()I

    move-result v6

    invoke-virtual {v5, v10, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 607
    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 608
    iget-object v6, p0, Lcom/amazon/device/ads/InAppBrowser;->refreshButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v5}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 618
    :cond_3
    :goto_1
    return-void

    .line 568
    .end local v0    # "buttonCount":I
    .end local v2    # "buttonWidth":I
    .end local v5    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    const/4 v0, 0x4

    goto/16 :goto_0

    .line 611
    .restart local v0    # "buttonCount":I
    .restart local v2    # "buttonWidth":I
    .restart local v5    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    iget-object v6, p0, Lcom/amazon/device/ads/InAppBrowser;->refreshButton:Landroid/widget/ImageButton;

    if-eqz v6, :cond_3

    .line 613
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v5    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v5, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 614
    .restart local v5    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lcom/amazon/device/ads/InAppBrowser;->browserForwardButton:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getId()I

    move-result v6

    invoke-virtual {v5, v10, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 615
    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 616
    iget-object v6, p0, Lcom/amazon/device/ads/InAppBrowser;->refreshButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v5}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 120
    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 121
    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v3, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 123
    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 124
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_open_btn"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/amazon/device/ads/InAppBrowser;->showOpenExternalBrowserButton:Z

    .line 125
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/InAppBrowser;->initialize(Landroid/content/Intent;)V

    .line 126
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/InAppBrowser;->initializeWebView(Landroid/content/Intent;)V

    .line 127
    invoke-direct {p0}, Lcom/amazon/device/ads/InAppBrowser;->enableCookies()V

    .line 128
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "onPause"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0}, Lcom/amazon/device/ads/InAppBrowser;->pauseWebView()V

    .line 355
    invoke-virtual {p0}, Lcom/amazon/device/ads/InAppBrowser;->canPauseWebViewTimers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->pauseTimers()V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->cookieManager:Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;

    invoke-virtual {v0}, Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;->stopSync()V

    .line 361
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "onResume"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p0}, Lcom/amazon/device/ads/InAppBrowser;->resumeWebView()V

    .line 386
    invoke-virtual {p0}, Lcom/amazon/device/ads/InAppBrowser;->canResumeWebViewTimers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->cookieManager:Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;

    invoke-virtual {v0}, Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;->startSync()V

    .line 392
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 404
    return-void
.end method

.method pauseWebView()V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 366
    return-void
.end method

.method public preOnCreate()V
    .locals 0

    .prologue
    .line 467
    return-void
.end method

.method resumeWebView()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 397
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/amazon/device/ads/InAppBrowser;->activity:Landroid/app/Activity;

    .line 115
    return-void
.end method
