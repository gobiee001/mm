.class public Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;
.super Ljava/lang/Object;
.source "AchievementsNativeHandler.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "AchievementsNativeHandler"

    sput-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->TAG:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initializeNativeHandler(Lcom/amazon/ags/api/AmazonGamesClient;)V
    .locals 1
    .param p0, "amazonGamesClient"    # Lcom/amazon/ags/api/AmazonGamesClient;

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/amazon/ags/api/AmazonGamesClient;->getAchievementsClient()Lcom/amazon/ags/api/achievements/AchievementsClient;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    .line 32
    return-void
.end method

.method public static requestAchievement(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 5
    .param p0, "achievementId"    # Ljava/lang/String;
    .param p1, "playerId"    # Ljava/lang/String;
    .param p2, "developerTag"    # I
    .param p3, "callbackPointer"    # J

    .prologue
    .line 54
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    if-nez v0, :cond_0

    .line 55
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "requestAchievement - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, p0, p1, v1}, Lcom/amazon/ags/api/achievements/AchievementsClient;->getAchievementForPlayer(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    new-instance v1, Lcom/amazon/ags/jni/achievements/GetAchievementJniRespHandler;

    invoke-direct {v1, p2, p3, p4}, Lcom/amazon/ags/jni/achievements/GetAchievementJniRespHandler;-><init>(IJ)V

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    goto :goto_0
.end method

.method public static requestAchievementHandle(Ljava/lang/String;Ljava/lang/String;I)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .param p0, "achievementId"    # Ljava/lang/String;
    .param p1, "playerId"    # Ljava/lang/String;
    .param p2, "developerTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/achievements/GetAchievementResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    if-nez v0, :cond_0

    .line 65
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "requestAchievementHandle - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v0, 0x0

    .line 68
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, p0, p1, v1}, Lcom/amazon/ags/api/achievements/AchievementsClient;->getAchievementForPlayer(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public static requestAchievements(Ljava/lang/String;IJ)V
    .locals 4
    .param p0, "playerId"    # Ljava/lang/String;
    .param p1, "developerTag"    # I
    .param p2, "callbackPointer"    # J

    .prologue
    .line 35
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    if-nez v0, :cond_0

    .line 36
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "requestAchievements - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, p0, v1}, Lcom/amazon/ags/api/achievements/AchievementsClient;->getAchievementsForPlayer(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    new-instance v1, Lcom/amazon/ags/jni/achievements/GetAchievementsJniRespHandler;

    invoke-direct {v1, p1, p2, p3}, Lcom/amazon/ags/jni/achievements/GetAchievementsJniRespHandler;-><init>(IJ)V

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    goto :goto_0
.end method

.method public static requestAchievementsHandle(Ljava/lang/String;I)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .param p0, "playerId"    # Ljava/lang/String;
    .param p1, "developerTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/achievements/GetAchievementsResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    if-nez v0, :cond_0

    .line 47
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "requestAchievementsHandle - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v0, 0x0

    .line 50
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, p0, v1}, Lcom/amazon/ags/api/achievements/AchievementsClient;->getAchievementsForPlayer(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public static showAchievementsOverlay()Lcom/amazon/ags/api/AGResponseHandle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/RequestResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    if-nez v0, :cond_0

    .line 91
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "showAchievementsOverlay - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v0, 0x0

    .line 94
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/achievements/AchievementsClient;->showAchievementsOverlay([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public static updateProgress(Ljava/lang/String;FIJ)V
    .locals 3
    .param p0, "achievementId"    # Ljava/lang/String;
    .param p1, "percentComplete"    # F
    .param p2, "developerTag"    # I
    .param p3, "callbackPointer"    # J

    .prologue
    .line 72
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    if-nez v0, :cond_0

    .line 73
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "updateProgress - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p0, p1, v1}, Lcom/amazon/ags/api/achievements/AchievementsClient;->updateProgress(Ljava/lang/String;F[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    new-instance v1, Lcom/amazon/ags/jni/achievements/UpdateProgressJniRespHandler;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/amazon/ags/jni/achievements/UpdateProgressJniRespHandler;-><init>(Ljava/lang/String;IJ)V

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    goto :goto_0
.end method

.method public static updateProgressHandle(Ljava/lang/String;FI)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .param p0, "achievementId"    # Ljava/lang/String;
    .param p1, "percentComplete"    # F
    .param p2, "developerTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "FI)",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/achievements/UpdateProgressResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    if-nez v0, :cond_0

    .line 83
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "updateProgressHandle - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v0, 0x0

    .line 86
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, p0, p1, v1}, Lcom/amazon/ags/api/achievements/AchievementsClient;->updateProgress(Ljava/lang/String;F[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method
