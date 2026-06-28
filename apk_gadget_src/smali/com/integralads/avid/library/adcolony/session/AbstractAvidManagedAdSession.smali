.class public abstract Lcom/integralads/avid/library/adcolony/session/AbstractAvidManagedAdSession;
.super Lcom/integralads/avid/library/adcolony/session/AbstractAvidAdSession;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/integralads/avid/library/adcolony/session/AbstractAvidAdSession",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/integralads/avid/library/adcolony/session/AbstractAvidAdSession;-><init>()V

    return-void
.end method


# virtual methods
.method public injectJavaScriptResource(Ljava/lang/String;)V
    .locals 2
    .param p1, "javaScriptResource"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-static {}, Lcom/integralads/avid/library/adcolony/AvidManager;->getInstance()Lcom/integralads/avid/library/adcolony/AvidManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/integralads/avid/library/adcolony/session/AbstractAvidManagedAdSession;->getAvidAdSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/adcolony/AvidManager;->findInternalAvidAdSessionById(Ljava/lang/String;)Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession;

    move-result-object v0

    check-cast v0, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidManagedAdSession;

    .line 12
    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0}, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidManagedAdSession;->getJavaScriptResourceInjector()Lcom/integralads/avid/library/adcolony/session/internal/trackingwebview/AvidJavaScriptResourceInjector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/integralads/avid/library/adcolony/session/internal/trackingwebview/AvidJavaScriptResourceInjector;->injectJavaScriptResource(Ljava/lang/String;)V

    .line 15
    :cond_0
    return-void
.end method
