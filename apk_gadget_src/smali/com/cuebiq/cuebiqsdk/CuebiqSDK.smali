.class public Lcom/cuebiq/cuebiqsdk/CuebiqSDK;
.super Ljava/lang/Object;
.source "CuebiqSDK.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectCustomEvents(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "eventInfo1"    # Ljava/lang/String;
    .param p3, "eventInfo2"    # Ljava/lang/String;
    .param p4, "eventInfo3"    # Ljava/lang/String;
    .param p5, "eventInfo4"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-static/range {p0 .. p5}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->collectCustomEvents(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static collectCustomPublisherID(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "publisherID"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {p0, p1}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->collectCustomPublisherID(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static enableLogging()V
    .locals 0

    .prologue
    .line 31
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->enableLogging()V

    .line 32
    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 23
    sget-object v0, Lcom/cuebiq/cuebiqsdk/api/Environment;->PRODUCTION:Lcom/cuebiq/cuebiqsdk/api/Environment;

    invoke-static {p0, p1, v0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/cuebiq/cuebiqsdk/api/Environment;)V

    .line 25
    return-void
.end method

.method public static onRequestPermissionsResult(Landroid/content/Context;I[Ljava/lang/String;[I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 35
    invoke-static {p0, p1, p2, p3}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->onRequestPermissionsResult(Landroid/content/Context;I[Ljava/lang/String;[I)V

    .line 36
    return-void
.end method

.method public static testIntegration(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-static {p0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->testIntegration(Landroid/content/Context;)V

    .line 69
    return-void
.end method
