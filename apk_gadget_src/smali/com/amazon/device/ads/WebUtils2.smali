.class Lcom/amazon/device/ads/WebUtils2;
.super Ljava/lang/Object;
.source "WebUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/WebUtils2$1;,
        Lcom/amazon/device/ads/WebUtils2$WebUtilsStatic;
    }
.end annotation


# instance fields
.field private final webUtilsAdapter:Lcom/amazon/device/ads/WebUtils2$WebUtilsStatic;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/amazon/device/ads/WebUtils2$WebUtilsStatic;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/WebUtils2$WebUtilsStatic;-><init>(Lcom/amazon/device/ads/WebUtils2$1;)V

    iput-object v0, p0, Lcom/amazon/device/ads/WebUtils2;->webUtilsAdapter:Lcom/amazon/device/ads/WebUtils2$WebUtilsStatic;

    .line 40
    return-void
.end method


# virtual methods
.method encloseHtml(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "html"    # Ljava/lang/String;
    .param p2, "isHTML5"    # Z

    .prologue
    .line 87
    iget-object v0, p0, Lcom/amazon/device/ads/WebUtils2;->webUtilsAdapter:Lcom/amazon/device/ads/WebUtils2$WebUtilsStatic;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/WebUtils2$WebUtilsStatic;->encloseHtml(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method executeWebRequestInThread(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "disconnectEnabled"    # Z

    .prologue
    .line 92
    iget-object v0, p0, Lcom/amazon/device/ads/WebUtils2;->webUtilsAdapter:Lcom/amazon/device/ads/WebUtils2$WebUtilsStatic;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/WebUtils2$WebUtilsStatic;->executeWebRequestInThread(Ljava/lang/String;Z)V

    .line 93
    return-void
.end method

.method getScheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/amazon/device/ads/WebUtils2;->webUtilsAdapter:Lcom/amazon/device/ads/WebUtils2$WebUtilsStatic;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/WebUtils2$WebUtilsStatic;->getScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getURLDecodedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/amazon/device/ads/WebUtils2;->webUtilsAdapter:Lcom/amazon/device/ads/WebUtils2$WebUtilsStatic;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/WebUtils2$WebUtilsStatic;->getURLDecodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getURLEncodedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/amazon/device/ads/WebUtils2;->webUtilsAdapter:Lcom/amazon/device/ads/WebUtils2$WebUtilsStatic;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/WebUtils2$WebUtilsStatic;->getURLEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isUrlValid(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 51
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 52
    const/4 v1, 0x1

    .line 60
    :goto_0
    return v1

    .line 54
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/net/URISyntaxException;
    goto :goto_0

    .line 58
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :catch_1
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method launchActivityForIntentLink(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/amazon/device/ads/WebUtils2;->webUtilsAdapter:Lcom/amazon/device/ads/WebUtils2$WebUtilsStatic;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/WebUtils2$WebUtilsStatic;->launchActivityForIntentLink(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
