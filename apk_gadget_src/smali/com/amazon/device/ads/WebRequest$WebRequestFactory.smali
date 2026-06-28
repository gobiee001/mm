.class public Lcom/amazon/device/ads/WebRequest$WebRequestFactory;
.super Ljava/lang/Object;
.source "WebRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/WebRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebRequestFactory"
.end annotation


# instance fields
.field private final androidBuildInfo:Lcom/amazon/device/ads/AndroidBuildInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 971
    new-instance v0, Lcom/amazon/device/ads/AndroidBuildInfo;

    invoke-direct {v0}, Lcom/amazon/device/ads/AndroidBuildInfo;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;-><init>(Lcom/amazon/device/ads/AndroidBuildInfo;)V

    .line 972
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/AndroidBuildInfo;)V
    .locals 0
    .param p1, "androidBuildInfo"    # Lcom/amazon/device/ads/AndroidBuildInfo;

    .prologue
    .line 974
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 975
    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;->androidBuildInfo:Lcom/amazon/device/ads/AndroidBuildInfo;

    .line 976
    return-void
.end method


# virtual methods
.method public createJSONGetWebRequest()Lcom/amazon/device/ads/WebRequest;
    .locals 3

    .prologue
    .line 1003
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;->createWebRequest()Lcom/amazon/device/ads/WebRequest;

    move-result-object v0

    .line 1004
    .local v0, "request":Lcom/amazon/device/ads/WebRequest;
    sget-object v1, Lcom/amazon/device/ads/WebRequest$HttpMethod;->GET:Lcom/amazon/device/ads/WebRequest$HttpMethod;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->setHttpMethod(Lcom/amazon/device/ads/WebRequest$HttpMethod;)V

    .line 1005
    const-string v1, "Accept"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/WebRequest;->putHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    return-object v0
.end method

.method public createJSONPostWebRequest()Lcom/amazon/device/ads/WebRequest;
    .locals 1

    .prologue
    .line 1014
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;->createWebRequest()Lcom/amazon/device/ads/WebRequest;

    move-result-object v0

    .line 1015
    .local v0, "request":Lcom/amazon/device/ads/WebRequest;
    invoke-virtual {v0}, Lcom/amazon/device/ads/WebRequest;->convertToJSONPostRequest()V

    .line 1016
    return-object v0
.end method

.method public createWebRequest()Lcom/amazon/device/ads/WebRequest;
    .locals 2

    .prologue
    .line 988
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;->androidBuildInfo:Lcom/amazon/device/ads/AndroidBuildInfo;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtOrBelowAndroidAPI(Lcom/amazon/device/ads/AndroidBuildInfo;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 990
    new-instance v0, Lcom/amazon/device/ads/HttpClientWebRequest;

    invoke-direct {v0}, Lcom/amazon/device/ads/HttpClientWebRequest;-><init>()V

    .line 994
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/amazon/device/ads/HttpURLConnectionWebRequest;

    invoke-direct {v0}, Lcom/amazon/device/ads/HttpURLConnectionWebRequest;-><init>()V

    goto :goto_0
.end method
