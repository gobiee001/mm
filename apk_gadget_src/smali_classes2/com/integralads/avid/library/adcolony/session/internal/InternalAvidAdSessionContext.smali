.class public Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSessionContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/integralads/avid/library/adcolony/session/ExternalAvidAdSessionContext;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/integralads/avid/library/adcolony/session/ExternalAvidAdSessionContext;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "avidAdSessionId"    # Ljava/lang/String;
    .param p3, "avidAdSessionType"    # Ljava/lang/String;
    .param p4, "mediaType"    # Ljava/lang/String;
    .param p5, "avidAdSessionContext"    # Lcom/integralads/avid/library/adcolony/session/ExternalAvidAdSessionContext;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Lcom/integralads/avid/library/adcolony/AvidContext;->getInstance()Lcom/integralads/avid/library/adcolony/AvidContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/adcolony/AvidContext;->init(Landroid/content/Context;)V

    .line 34
    iput-object p2, p0, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSessionContext;->a:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSessionContext;->b:Lcom/integralads/avid/library/adcolony/session/ExternalAvidAdSessionContext;

    .line 36
    iput-object p3, p0, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSessionContext;->c:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSessionContext;->d:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public getAvidAdSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSessionContext;->a:Ljava/lang/String;

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

    iget-object v2, p0, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSessionContext;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string v0, "bundleIdentifier"

    invoke-static {}, Lcom/integralads/avid/library/adcolony/AvidContext;->getInstance()Lcom/integralads/avid/library/adcolony/AvidContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/integralads/avid/library/adcolony/AvidContext;->getBundleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v0, "partner"

    invoke-static {}, Lcom/integralads/avid/library/adcolony/AvidContext;->getInstance()Lcom/integralads/avid/library/adcolony/AvidContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/integralads/avid/library/adcolony/AvidContext;->getPartnerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v0, "partnerVersion"

    iget-object v2, p0, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSessionContext;->b:Lcom/integralads/avid/library/adcolony/session/ExternalAvidAdSessionContext;

    invoke-virtual {v2}, Lcom/integralads/avid/library/adcolony/session/ExternalAvidAdSessionContext;->getPartnerVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    const-string v0, "avidLibraryVersion"

    invoke-static {}, Lcom/integralads/avid/library/adcolony/AvidContext;->getInstance()Lcom/integralads/avid/library/adcolony/AvidContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/integralads/avid/library/adcolony/AvidContext;->getAvidVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    const-string v0, "avidAdSessionType"

    iget-object v2, p0, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSessionContext;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string v0, "mediaType"

    iget-object v2, p0, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSessionContext;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string v0, "isDeferred"

    iget-object v2, p0, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSessionContext;->b:Lcom/integralads/avid/library/adcolony/session/ExternalAvidAdSessionContext;

    invoke-virtual {v2}, Lcom/integralads/avid/library/adcolony/session/ExternalAvidAdSessionContext;->isDeferred()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-object v1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getStubContext()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSessionContext;->getFullContext()Lorg/json/JSONObject;

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

    .line 74
    :catch_0
    move-exception v0

    .line 75
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
