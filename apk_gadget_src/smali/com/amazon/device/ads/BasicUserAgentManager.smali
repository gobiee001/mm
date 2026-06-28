.class Lcom/amazon/device/ads/BasicUserAgentManager;
.super Ljava/lang/Object;
.source "BasicUserAgentManager.java"

# interfaces
.implements Lcom/amazon/device/ads/UserAgentManager;


# instance fields
.field private userAgentStringWithSDKVersion:Ljava/lang/String;

.field private userAgentStringWithoutSDKVersion:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method buildAndSetUserAgentString(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/BasicUserAgentManager;->setUserAgentString(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public getUserAgentString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/amazon/device/ads/BasicUserAgentManager;->userAgentStringWithSDKVersion:Ljava/lang/String;

    return-object v0
.end method

.method public populateUserAgentString(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/amazon/device/ads/BasicUserAgentManager;->userAgentStringWithSDKVersion:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/BasicUserAgentManager;->setUserAgentString(Ljava/lang/String;)V

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/BasicUserAgentManager;->buildAndSetUserAgentString(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 2
    .param p1, "newUserAgent"    # Ljava/lang/String;

    .prologue
    .line 41
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/BasicUserAgentManager;->userAgentStringWithoutSDKVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iput-object p1, p0, Lcom/amazon/device/ads/BasicUserAgentManager;->userAgentStringWithoutSDKVersion:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/amazon/device/ads/Version;->getUserAgentSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/BasicUserAgentManager;->userAgentStringWithSDKVersion:Ljava/lang/String;

    .line 46
    :cond_0
    return-void
.end method
