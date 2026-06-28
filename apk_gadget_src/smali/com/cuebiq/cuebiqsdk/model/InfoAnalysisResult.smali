.class public Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;
.super Ljava/lang/Object;
.source "InfoAnalysisResult.java"


# instance fields
.field private mNextAcquisitionMills:J

.field private mTrackRequest:Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNextAcquisitionMills()J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;->mNextAcquisitionMills:J

    return-wide v0
.end method

.method public getTrackRequest()Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;->mTrackRequest:Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    return-object v0
.end method

.method public setNextAcquisitionMills(J)V
    .locals 1
    .param p1, "nextAcquisitionMills"    # J

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;->mNextAcquisitionMills:J

    .line 29
    return-void
.end method

.method public setTrackRequest(Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;)V
    .locals 0
    .param p1, "trackRequest"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;->mTrackRequest:Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    .line 21
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->GSON:Lcom/google/gson/Gson;

    instance-of v1, v0, Lcom/google/gson/Gson;

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/gson/Gson;

    invoke-static {v0, p0}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->toJson(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
