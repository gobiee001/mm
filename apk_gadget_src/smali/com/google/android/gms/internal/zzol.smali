.class public final Lcom/google/android/gms/internal/zzol;
.super Lcom/google/android/gms/internal/zzqj;

# interfaces
.implements Lcom/google/android/gms/internal/zzov;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private mExtras:Landroid/os/Bundle;

.field private mLock:Ljava/lang/Object;

.field private zzbts:Ljava/lang/String;

.field private zzbtt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzoi;",
            ">;"
        }
    .end annotation
.end field

.field private zzbtu:Ljava/lang/String;

.field private zzbtw:Ljava/lang/String;

.field private zzbua:Lcom/google/android/gms/internal/zzog;

.field private zzbub:Lcom/google/android/gms/internal/zzll;

.field private zzbuc:Landroid/view/View;

.field private zzbud:Lcom/google/android/gms/dynamic/IObjectWrapper;

.field private zzbue:Ljava/lang/String;

.field private zzbuf:Lcom/google/android/gms/internal/zzos;

.field private zzbuh:Lcom/google/android/gms/internal/zzpq;

.field private zzbui:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzpq;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzog;Landroid/os/Bundle;Lcom/google/android/gms/internal/zzll;Landroid/view/View;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzoi;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzpq;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzog;",
            "Landroid/os/Bundle;",
            "Lcom/google/android/gms/internal/zzll;",
            "Landroid/view/View;",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqj;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzol;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzol;->zzbts:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzol;->zzbtt:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzol;->zzbtu:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzol;->zzbuh:Lcom/google/android/gms/internal/zzpq;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzol;->zzbtw:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzol;->zzbui:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzol;->zzbua:Lcom/google/android/gms/internal/zzog;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzol;->mExtras:Landroid/os/Bundle;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzol;->zzbub:Lcom/google/android/gms/internal/zzll;

    iput-object p10, p0, Lcom/google/android/gms/internal/zzol;->zzbuc:Landroid/view/View;

    iput-object p11, p0, Lcom/google/android/gms/internal/zzol;->zzbud:Lcom/google/android/gms/dynamic/IObjectWrapper;

    iput-object p12, p0, Lcom/google/android/gms/internal/zzol;->zzbue:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzol;Lcom/google/android/gms/internal/zzos;)Lcom/google/android/gms/internal/zzos;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzol;->zzbuf:Lcom/google/android/gms/internal/zzos;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzol;)Lcom/google/android/gms/internal/zzos;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzol;->zzbuf:Lcom/google/android/gms/internal/zzos;

    return-object v0
.end method


# virtual methods
.method public final destroy()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzahn;->zzdaw:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzom;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzom;-><init>(Lcom/google/android/gms/internal/zzol;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-object v2, p0, Lcom/google/android/gms/internal/zzol;->zzbts:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzol;->zzbtt:Ljava/util/List;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzol;->zzbtu:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzol;->zzbuh:Lcom/google/android/gms/internal/zzpq;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzol;->zzbtw:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzol;->zzbui:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzol;->zzbua:Lcom/google/android/gms/internal/zzog;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzol;->mExtras:Landroid/os/Bundle;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzol;->mLock:Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzol;->zzbub:Lcom/google/android/gms/internal/zzll;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzol;->zzbuc:Landroid/view/View;

    return-void
.end method

.method public final getAdvertiser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzol;->zzbui:Ljava/lang/String;

    return-object v0
.end method

.method public final getBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzol;->zzbtu:Ljava/lang/String;

    return-object v0
.end method

.method public final getCallToAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzol;->zzbtw:Ljava/lang/String;

    return-object v0
.end method

.method public final getCustomTemplateId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzol;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getHeadline()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzol;->zzbts:Ljava/lang/String;

    return-object v0
.end method

.method public final getImages()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzol;->zzbtt:Ljava/util/List;

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzol;->zzbue:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/zzll;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzol;->zzbub:Lcom/google/android/gms/internal/zzll;

    return-object v0
.end method

.method public final performClick(Landroid/os/Bundle;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzol;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzol;->zzbuf:Lcom/google/android/gms/internal/zzos;

    if-nez v0, :cond_0

    const-string v0, "Attempt to perform click before content ad initialized."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzol;->zzbuf:Lcom/google/android/gms/internal/zzos;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzos;->performClick(Landroid/os/Bundle;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final recordImpression(Landroid/os/Bundle;)Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzol;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzol;->zzbuf:Lcom/google/android/gms/internal/zzos;

    if-nez v0, :cond_0

    const-string v0, "Attempt to record impression before content ad initialized."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzol;->zzbuf:Lcom/google/android/gms/internal/zzos;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzos;->recordImpression(Landroid/os/Bundle;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final reportTouchEvent(Landroid/os/Bundle;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzol;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzol;->zzbuf:Lcom/google/android/gms/internal/zzos;

    if-nez v0, :cond_0

    const-string v0, "Attempt to perform click before app install ad initialized."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzol;->zzbuf:Lcom/google/android/gms/internal/zzos;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzos;->reportTouchEvent(Landroid/os/Bundle;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzos;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzol;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzol;->zzbuf:Lcom/google/android/gms/internal/zzos;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzjt()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzol;->zzbuf:Lcom/google/android/gms/internal/zzos;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzn;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzju()Ljava/lang/String;
    .locals 1

    const-string v0, "1"

    return-object v0
.end method

.method public final zzjv()Lcom/google/android/gms/internal/zzog;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzol;->zzbua:Lcom/google/android/gms/internal/zzog;

    return-object v0
.end method

.method public final zzjw()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzol;->zzbuc:Landroid/view/View;

    return-object v0
.end method

.method public final zzjx()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzol;->zzbud:Lcom/google/android/gms/dynamic/IObjectWrapper;

    return-object v0
.end method

.method public final zzjy()Lcom/google/android/gms/internal/zzpm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzol;->zzbua:Lcom/google/android/gms/internal/zzog;

    return-object v0
.end method

.method public final zzjz()Lcom/google/android/gms/internal/zzpq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzol;->zzbuh:Lcom/google/android/gms/internal/zzpq;

    return-object v0
.end method
