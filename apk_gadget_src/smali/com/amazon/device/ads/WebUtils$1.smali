.class final Lcom/amazon/device/ads/WebUtils$1;
.super Ljava/lang/Object;
.source "WebUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/WebUtils;->executeWebRequestInThread(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$disconnectEnabled:Z

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/amazon/device/ads/WebUtils$1;->val$url:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/amazon/device/ads/WebUtils$1;->val$disconnectEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 277
    new-instance v1, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

    invoke-direct {v1}, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;-><init>()V

    invoke-virtual {v1}, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;->createWebRequest()Lcom/amazon/device/ads/WebRequest;

    move-result-object v0

    .line 278
    .local v0, "request":Lcom/amazon/device/ads/WebRequest;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->enableLog(Z)V

    .line 279
    iget-object v1, p0, Lcom/amazon/device/ads/WebUtils$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->setUrlString(Ljava/lang/String;)V

    .line 280
    iget-boolean v1, p0, Lcom/amazon/device/ads/WebUtils$1;->val$disconnectEnabled:Z

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->setDisconnectEnabled(Z)V

    .line 283
    :try_start_0
    invoke-virtual {v0}, Lcom/amazon/device/ads/WebRequest;->makeCall()Lcom/amazon/device/ads/WebRequest$WebResponse;
    :try_end_0
    .catch Lcom/amazon/device/ads/WebRequest$WebRequestException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :goto_0
    return-void

    .line 285
    :catch_0
    move-exception v1

    goto :goto_0
.end method
