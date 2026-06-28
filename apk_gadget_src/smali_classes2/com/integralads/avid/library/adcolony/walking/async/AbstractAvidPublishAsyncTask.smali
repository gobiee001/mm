.class public abstract Lcom/integralads/avid/library/adcolony/walking/async/AbstractAvidPublishAsyncTask;
.super Lcom/integralads/avid/library/adcolony/walking/async/AvidAsyncTask;
.source "SourceFile"


# instance fields
.field protected final adSessionRegistry:Lcom/integralads/avid/library/adcolony/registration/AvidAdSessionRegistry;

.field protected final sessionIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final state:Lorg/json/JSONObject;

.field protected final timestamp:D


# direct methods
.method public constructor <init>(Lcom/integralads/avid/library/adcolony/walking/async/AvidAsyncTask$StateProvider;Lcom/integralads/avid/library/adcolony/registration/AvidAdSessionRegistry;Ljava/util/HashSet;Lorg/json/JSONObject;D)V
    .locals 1
    .param p1, "stateProvider"    # Lcom/integralads/avid/library/adcolony/walking/async/AvidAsyncTask$StateProvider;
    .param p2, "adSessionRegistry"    # Lcom/integralads/avid/library/adcolony/registration/AvidAdSessionRegistry;
    .param p4, "state"    # Lorg/json/JSONObject;
    .param p5, "timestamp"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/integralads/avid/library/adcolony/walking/async/AvidAsyncTask$StateProvider;",
            "Lcom/integralads/avid/library/adcolony/registration/AvidAdSessionRegistry;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "D)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p3, "sessionIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/integralads/avid/library/adcolony/walking/async/AvidAsyncTask;-><init>(Lcom/integralads/avid/library/adcolony/walking/async/AvidAsyncTask$StateProvider;)V

    .line 34
    iput-object p2, p0, Lcom/integralads/avid/library/adcolony/walking/async/AbstractAvidPublishAsyncTask;->adSessionRegistry:Lcom/integralads/avid/library/adcolony/registration/AvidAdSessionRegistry;

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/integralads/avid/library/adcolony/walking/async/AbstractAvidPublishAsyncTask;->sessionIds:Ljava/util/HashSet;

    .line 36
    iput-object p4, p0, Lcom/integralads/avid/library/adcolony/walking/async/AbstractAvidPublishAsyncTask;->state:Lorg/json/JSONObject;

    .line 37
    iput-wide p5, p0, Lcom/integralads/avid/library/adcolony/walking/async/AbstractAvidPublishAsyncTask;->timestamp:D

    .line 38
    return-void
.end method
