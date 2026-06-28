.class Lcom/amazon/device/ads/WebUtils2$WebUtilsStatic;
.super Ljava/lang/Object;
.source "WebUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/WebUtils2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebUtilsStatic"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/device/ads/WebUtils2$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/amazon/device/ads/WebUtils2$1;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/amazon/device/ads/WebUtils2$WebUtilsStatic;-><init>()V

    return-void
.end method


# virtual methods
.method encloseHtml(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "html"    # Ljava/lang/String;
    .param p2, "isHTML5"    # Z

    .prologue
    .line 119
    invoke-static {p1, p2}, Lcom/amazon/device/ads/WebUtils;->encloseHtml(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method executeWebRequestInThread(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "disconnectEnabled"    # Z

    .prologue
    .line 124
    invoke-static {p1, p2}, Lcom/amazon/device/ads/WebUtils;->executeWebRequestInThread(Ljava/lang/String;Z)V

    .line 125
    return-void
.end method

.method getScheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-static {p1}, Lcom/amazon/device/ads/WebUtils;->getScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getURLDecodedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-static {p1}, Lcom/amazon/device/ads/WebUtils;->getURLDecodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getURLEncodedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-static {p1}, Lcom/amazon/device/ads/WebUtils;->getURLEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method launchActivityForIntentLink(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    invoke-static {p1, p2}, Lcom/amazon/device/ads/WebUtils;->launchActivityForIntentLink(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
