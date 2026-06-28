.class public Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSessionContext;
.super Ljava/lang/Object;
.source "InternalAvidAdSessionContext.java"


# instance fields
.field private avidAdSessionContext:Lcom/integralads/avid/library/inmobi/session/ExternalAvidAdSessionContext;

.field private avidAdSessionId:Ljava/lang/String;

.field private avidAdSessionType:Ljava/lang/String;

.field private mediaType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/integralads/avid/library/inmobi/session/ExternalAvidAdSessionContext;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Lcom/integralads/avid/library/inmobi/AvidContext;->getInstance()Lcom/integralads/avid/library/inmobi/AvidContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/inmobi/AvidContext;->init(Landroid/content/Context;)V

    .line 34
    iput-object p2, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSessionContext;->avidAdSessionId:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSessionContext;->avidAdSessionContext:Lcom/integralads/avid/library/inmobi/session/ExternalAvidAdSessionContext;

    .line 36
    iput-object p3, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSessionContext;->avidAdSessionType:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSessionContext;->mediaType:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public getAvidAdSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSessionContext;->avidAdSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getFullContext()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 53
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 55
    :try_start_0
    const-string v0, "avidAdSessionId"

    iget-object v2, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSessionContext;->avidAdSessionId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string v0, "bundleIdentifier"

    invoke-static {}, Lcom/integralads/avid/library/inmobi/AvidContext;->getInstance()Lcom/integralads/avid/library/inmobi/AvidContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/integralads/avid/library/inmobi/AvidContext;->getBundleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v0, "partner"

    invoke-static {}, Lcom/integralads/avid/library/inmobi/AvidContext;->getInstance()Lcom/integralads/avid/library/inmobi/AvidContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/integralads/avid/library/inmobi/AvidContext;->getPartnerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v0, "partnerVersion"

    iget-object v2, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSessionContext;->avidAdSessionContext:Lcom/integralads/avid/library/inmobi/session/ExternalAvidAdSessionContext;

    invoke-virtual {v2}, Lcom/integralads/avid/library/inmobi/session/ExternalAvidAdSessionContext;->getPartnerVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    const-string v0, "avidLibraryVersion"

    invoke-static {}, Lcom/integralads/avid/library/inmobi/AvidContext;->getInstance()Lcom/integralads/avid/library/inmobi/AvidContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/integralads/avid/library/inmobi/AvidContext;->getAvidVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    const-string v0, "avidAdSessionType"

    iget-object v2, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSessionContext;->avidAdSessionType:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string v0, "mediaType"

    iget-object v2, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSessionContext;->mediaType:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string v0, "isDeferred"

    iget-object v2, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSessionContext;->avidAdSessionContext:Lcom/integralads/avid/library/inmobi/session/ExternalAvidAdSessionContext;

    invoke-virtual {v2}, Lcom/integralads/avid/library/inmobi/session/ExternalAvidAdSessionContext;->isDeferred()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-object v1

    .line 64
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getStubContext()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSessionContext;->getFullContext()Lorg/json/JSONObject;

    move-result-object v1

    .line 72
    :try_start_0
    const-string v0, "avidApiLevel"

    const-string v2, "2"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v0, "mode"

    const-string v2, "stub"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-object v1

    .line 75
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
