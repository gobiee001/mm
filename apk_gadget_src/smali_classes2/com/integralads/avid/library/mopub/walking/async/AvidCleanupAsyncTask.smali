.class public Lcom/integralads/avid/library/mopub/walking/async/AvidCleanupAsyncTask;
.super Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask;
.source "AvidCleanupAsyncTask.java"


# direct methods
.method public constructor <init>(Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$StateProvider;)V
    .locals 0
    .param p1, "stateProvider"    # Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$StateProvider;

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask;-><init>(Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$StateProvider;)V

    .line 7
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3
    invoke-virtual {p0, p1}, Lcom/integralads/avid/library/mopub/walking/async/AvidCleanupAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 11
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/walking/async/AvidCleanupAsyncTask;->stateProvider:Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$StateProvider;

    invoke-interface {v0, v1}, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$StateProvider;->setPreviousState(Lorg/json/JSONObject;)V

    .line 12
    return-object v1
.end method
