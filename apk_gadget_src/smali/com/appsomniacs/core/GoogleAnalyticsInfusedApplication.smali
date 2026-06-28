.class public Lcom/appsomniacs/core/GoogleAnalyticsInfusedApplication;
.super Landroid/app/Application;
.source "GoogleAnalyticsInfusedApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsomniacs/core/GoogleAnalyticsInfusedApplication$TrackerName;
    }
.end annotation


# instance fields
.field mTrackers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/appsomniacs/core/GoogleAnalyticsInfusedApplication$TrackerName;",
            "Lcom/google/android/gms/analytics/Tracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appsomniacs/core/GoogleAnalyticsInfusedApplication;->mTrackers:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 29
    invoke-static {p0}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public declared-synchronized getTracker(Lcom/appsomniacs/core/GoogleAnalyticsInfusedApplication$TrackerName;)Lcom/google/android/gms/analytics/Tracker;
    .locals 3
    .param p1, "trackerId"    # Lcom/appsomniacs/core/GoogleAnalyticsInfusedApplication$TrackerName;

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/appsomniacs/core/GoogleAnalyticsInfusedApplication;->mTrackers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 37
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    .line 39
    .local v0, "analytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    sget-object v2, Lcom/appsomniacs/core/GoogleAnalyticsInfusedApplication$TrackerName;->APP_TRACKER:Lcom/appsomniacs/core/GoogleAnalyticsInfusedApplication$TrackerName;

    if-ne p1, v2, :cond_1

    const/high16 v2, 0x7f050000

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(I)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    .line 42
    .local v1, "t":Lcom/google/android/gms/analytics/Tracker;
    :goto_0
    iget-object v2, p0, Lcom/appsomniacs/core/GoogleAnalyticsInfusedApplication;->mTrackers:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .end local v0    # "analytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    .end local v1    # "t":Lcom/google/android/gms/analytics/Tracker;
    :cond_0
    iget-object v2, p0, Lcom/appsomniacs/core/GoogleAnalyticsInfusedApplication;->mTrackers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/analytics/Tracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 39
    .restart local v0    # "analytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    :cond_1
    :try_start_1
    sget-object v2, Lcom/appsomniacs/core/GoogleAnalyticsInfusedApplication$TrackerName;->GLOBAL_TRACKER:Lcom/appsomniacs/core/GoogleAnalyticsInfusedApplication$TrackerName;

    if-ne p1, v2, :cond_2

    const v2, 0x7f050002

    .line 40
    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(I)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    goto :goto_0

    :cond_2
    const v2, 0x7f050001

    .line 41
    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(I)Lcom/google/android/gms/analytics/Tracker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 35
    .end local v0    # "analytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
