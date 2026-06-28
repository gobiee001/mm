.class public Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;
.super Ljava/lang/Object;
.source "InternalAvidAdSessionContext.java"


# static fields
.field public static final AVID_API_LEVEL:Ljava/lang/String; = "2"

.field public static final AVID_STUB_MODE:Ljava/lang/String; = "stub"

.field public static final CONTEXT_AVID_AD_SESSION_ID:Ljava/lang/String; = "avidAdSessionId"

.field public static final CONTEXT_AVID_AD_SESSION_TYPE:Ljava/lang/String; = "avidAdSessionType"

.field public static final CONTEXT_AVID_API_LEVEL:Ljava/lang/String; = "avidApiLevel"

.field public static final CONTEXT_AVID_LIBRARY_VERSION:Ljava/lang/String; = "avidLibraryVersion"

.field public static final CONTEXT_BUNDLE_IDENTIFIER:Ljava/lang/String; = "bundleIdentifier"

.field public static final CONTEXT_IS_DEFERRED:Ljava/lang/String; = "isDeferred"

.field public static final CONTEXT_MEDIA_TYPE:Ljava/lang/String; = "mediaType"

.field public static final CONTEXT_MODE:Ljava/lang/String; = "mode"

.field public static final CONTEXT_PARTNER:Ljava/lang/String; = "partner"

.field public static final CONTEXT_PARTNER_VERSION:Ljava/lang/String; = "partnerVersion"


# instance fields
.field private avidAdSessionContext:Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;

.field private avidAdSessionId:Ljava/lang/String;

.field private avidAdSessionType:Ljava/lang/String;

.field private mediaType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "avidAdSessionId"    # Ljava/lang/String;
    .param p3, "avidAdSessionType"    # Ljava/lang/String;
    .param p4, "mediaType"    # Ljava/lang/String;
    .param p5, "avidAdSessionContext"    # Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidContext;->getInstance()Lcom/integralads/avid/library/mopub/AvidContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/mopub/AvidContext;->init(Landroid/content/Context;)V

    .line 34
    iput-object p2, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;->avidAdSessionId:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;->avidAdSessionContext:Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;

    .line 36
    iput-object p3, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;->avidAdSessionType:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;->mediaType:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public getAvidAdSessionContext()Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;->avidAdSessionContext:Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;

    return-object v0
.end method

.method public getAvidAdSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;->avidAdSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getFullContext()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 53
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 55
    .local v1, "fullContext":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "avidAdSessionId"

    iget-object v3, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;->avidAdSessionId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string v2, "bundleIdentifier"

    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidContext;->getInstance()Lcom/integralads/avid/library/mopub/AvidContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/integralads/avid/library/mopub/AvidContext;->getBundleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v2, "partner"

    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidContext;->getInstance()Lcom/integralads/avid/library/mopub/AvidContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/integralads/avid/library/mopub/AvidContext;->getPartnerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v2, "partnerVersion"

    iget-object v3, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;->avidAdSessionContext:Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;

    invoke-virtual {v3}, Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;->getPartnerVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    const-string v2, "avidLibraryVersion"

    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidContext;->getInstance()Lcom/integralads/avid/library/mopub/AvidContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/integralads/avid/library/mopub/AvidContext;->getAvidVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    const-string v2, "avidAdSessionType"

    iget-object v3, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;->avidAdSessionType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string v2, "mediaType"

    iget-object v3, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;->mediaType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string v2, "isDeferred"

    iget-object v3, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;->avidAdSessionContext:Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;

    invoke-virtual {v3}, Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;->isDeferred()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-object v1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getStubContext()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;->getFullContext()Lorg/json/JSONObject;

    move-result-object v1

    .line 72
    .local v1, "stubContext":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "avidApiLevel"

    const-string v3, "2"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v2, "mode"

    const-string v3, "stub"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-object v1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public setAvidAdSessionContext(Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;)V
    .locals 0
    .param p1, "avidAdSessionContext"    # Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;->avidAdSessionContext:Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;

    .line 50
    return-void
.end method
