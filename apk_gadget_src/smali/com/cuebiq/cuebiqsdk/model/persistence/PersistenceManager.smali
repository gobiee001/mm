.class public interface abstract Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;
.super Ljava/lang/Object;
.source "PersistenceManager.java"


# virtual methods
.method public abstract getAppOpenCounter(Landroid/content/Context;)I
.end method

.method public abstract getCoverageCounter(Landroid/content/Context;)I
.end method

.method public abstract getCoverageStatus(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;
.end method

.method public abstract getCurrentAcquisitionMills(Landroid/content/Context;)J
.end method

.method public abstract getCustomPublisherID(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getLocationON(Landroid/content/Context;)Z
.end method

.method public abstract getNextFlushCounter(Landroid/content/Context;)I
.end method

.method public abstract increaseAppOpenCounter(Landroid/content/Context;)V
.end method

.method public abstract increaseCoverageCounter(Landroid/content/Context;)V
.end method

.method public abstract isGAIDDisabled(Landroid/content/Context;)Z
.end method

.method public abstract persistRequest(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;)V
.end method

.method public abstract resetAppOpenCounter(Landroid/content/Context;)V
.end method

.method public abstract resetCoverageCounter(Landroid/content/Context;)V
.end method

.method public abstract retrieveAppKey(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract retrieveBeAudienceConfiguration(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/config/Settings;
.end method

.method public abstract retrieveRequest(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;
.end method

.method public abstract saveAppKey(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract saveBeAudienceConfiguration(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/config/Settings;)V
.end method

.method public abstract saveCustomPublisherID(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract setCoverageStatus(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;)V
.end method

.method public abstract setCurrentAcquisitionMills(Landroid/content/Context;J)V
.end method

.method public abstract setIsGAIDDisabled(Landroid/content/Context;Z)V
.end method

.method public abstract setLocationON(Landroid/content/Context;Z)V
.end method

.method public abstract setNextFlushingContent(Landroid/content/Context;I)V
.end method
