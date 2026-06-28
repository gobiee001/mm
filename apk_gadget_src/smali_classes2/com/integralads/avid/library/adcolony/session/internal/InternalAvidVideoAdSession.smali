.class public Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidVideoAdSession;
.super Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidHtmlAdSession;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/integralads/avid/library/adcolony/session/ExternalAvidAdSessionContext;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "avidAdSessionId"    # Ljava/lang/String;
    .param p3, "avidAdSessionContext"    # Lcom/integralads/avid/library/adcolony/session/ExternalAvidAdSessionContext;

    .prologue
    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidHtmlAdSession;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/integralads/avid/library/adcolony/session/ExternalAvidAdSessionContext;)V

    .line 11
    return-void
.end method


# virtual methods
.method public getMediaType()Lcom/integralads/avid/library/adcolony/session/internal/MediaType;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/integralads/avid/library/adcolony/session/internal/MediaType;->VIDEO:Lcom/integralads/avid/library/adcolony/session/internal/MediaType;

    return-object v0
.end method

.method public getSessionType()Lcom/integralads/avid/library/adcolony/session/internal/SessionType;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/integralads/avid/library/adcolony/session/internal/SessionType;->VIDEO:Lcom/integralads/avid/library/adcolony/session/internal/SessionType;

    return-object v0
.end method
