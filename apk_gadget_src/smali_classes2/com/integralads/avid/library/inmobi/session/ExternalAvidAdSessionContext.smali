.class public Lcom/integralads/avid/library/inmobi/session/ExternalAvidAdSessionContext;
.super Ljava/lang/Object;
.source "ExternalAvidAdSessionContext.java"


# instance fields
.field private isDeferred:Z

.field private partnerVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/integralads/avid/library/inmobi/session/ExternalAvidAdSessionContext;->partnerVersion:Ljava/lang/String;

    .line 14
    iput-boolean p2, p0, Lcom/integralads/avid/library/inmobi/session/ExternalAvidAdSessionContext;->isDeferred:Z

    .line 15
    return-void
.end method


# virtual methods
.method public getPartnerVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/ExternalAvidAdSessionContext;->partnerVersion:Ljava/lang/String;

    return-object v0
.end method

.method public isDeferred()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/integralads/avid/library/inmobi/session/ExternalAvidAdSessionContext;->isDeferred:Z

    return v0
.end method
