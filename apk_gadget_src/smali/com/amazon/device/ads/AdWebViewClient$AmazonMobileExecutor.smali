.class Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;
.super Ljava/lang/Object;
.source "AdWebViewClient.java"

# interfaces
.implements Lcom/amazon/device/ads/AdWebViewClient$UrlExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AdWebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AmazonMobileExecutor"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final launcher:Lcom/amazon/device/ads/AmazonDeviceLauncher;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private final webUtils:Lcom/amazon/device/ads/WebUtils2;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 294
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    new-instance v1, Lcom/amazon/device/ads/AmazonDeviceLauncher;

    invoke-direct {v1}, Lcom/amazon/device/ads/AmazonDeviceLauncher;-><init>()V

    new-instance v2, Lcom/amazon/device/ads/WebUtils2;

    invoke-direct {v2}, Lcom/amazon/device/ads/WebUtils2;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AmazonDeviceLauncher;Lcom/amazon/device/ads/WebUtils2;)V

    .line 295
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AmazonDeviceLauncher;Lcom/amazon/device/ads/WebUtils2;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loggerFactory"    # Lcom/amazon/device/ads/MobileAdsLoggerFactory;
    .param p3, "launcher"    # Lcom/amazon/device/ads/AmazonDeviceLauncher;
    .param p4, "webUtils"    # Lcom/amazon/device/ads/WebUtils2;

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-object p1, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->context:Landroid/content/Context;

    .line 300
    invoke-static {}, Lcom/amazon/device/ads/AdWebViewClient;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 301
    iput-object p3, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->launcher:Lcom/amazon/device/ads/AmazonDeviceLauncher;

    .line 302
    iput-object p4, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->webUtils:Lcom/amazon/device/ads/WebUtils2;

    .line 303
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 308
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->specialUrlClicked(Ljava/lang/String;)V

    .line 309
    const/4 v0, 0x1

    return v0
.end method

.method protected handleApplicationDefinedSpecialURL(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 409
    iget-object v0, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Special url clicked, but was not handled by SDK. Url: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    return-void
.end method

.method protected launchExternalActivity(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->webUtils:Lcom/amazon/device/ads/WebUtils2;

    iget-object v1, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->context:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/device/ads/WebUtils2;->launchActivityForIntentLink(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public specialUrlClicked(Ljava/lang/String;)V
    .locals 10
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 329
    iget-object v8, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v9, "Executing AmazonMobile Intent"

    invoke-virtual {v8, v9}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 330
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 331
    .local v7, "uri":Landroid/net/Uri;
    const/4 v5, 0x0

    .line 334
    .local v5, "intents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    const-string v8, "intent"

    invoke-virtual {v7, v8}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 340
    :goto_0
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 342
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 344
    .local v4, "intent":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->launchExternalActivity(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 397
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "intent":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 336
    :catch_0
    move-exception v2

    .line 338
    .local v2, "e":Ljava/lang/UnsupportedOperationException;
    const/4 v5, 0x0

    goto :goto_0

    .line 351
    .end local v2    # "e":Ljava/lang/UnsupportedOperationException;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->handleApplicationDefinedSpecialURL(Ljava/lang/String;)V

    goto :goto_1

    .line 353
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v8, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->launcher:Lcom/amazon/device/ads/AmazonDeviceLauncher;

    iget-object v9, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->context:Landroid/content/Context;

    invoke-virtual {v8, v9}, Lcom/amazon/device/ads/AmazonDeviceLauncher;->isWindowshopPresent(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 355
    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    const-string v9, "shopping"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 357
    const-string v8, "app-action"

    invoke-virtual {v7, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1

    .line 362
    const-string v8, "detail"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 364
    const-string v8, "asin"

    invoke-virtual {v7, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 365
    .local v1, "asin":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1

    .line 369
    iget-object v8, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->launcher:Lcom/amazon/device/ads/AmazonDeviceLauncher;

    iget-object v9, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->context:Landroid/content/Context;

    invoke-virtual {v8, v9, v1}, Lcom/amazon/device/ads/AmazonDeviceLauncher;->launchWindowshopDetailPage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 371
    .end local v1    # "asin":Ljava/lang/String;
    :cond_4
    const-string v8, "search"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 373
    const-string v8, "keyword"

    invoke-virtual {v7, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 374
    .local v6, "keyword":Ljava/lang/String;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1

    .line 378
    iget-object v8, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->launcher:Lcom/amazon/device/ads/AmazonDeviceLauncher;

    iget-object v9, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->context:Landroid/content/Context;

    invoke-virtual {v8, v9, v6}, Lcom/amazon/device/ads/AmazonDeviceLauncher;->launchWindowshopSearchPage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 380
    .end local v6    # "keyword":Ljava/lang/String;
    :cond_5
    const-string v8, "webview"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 389
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->handleApplicationDefinedSpecialURL(Ljava/lang/String;)V

    goto :goto_1

    .line 395
    .end local v0    # "action":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->handleApplicationDefinedSpecialURL(Ljava/lang/String;)V

    goto :goto_1
.end method
