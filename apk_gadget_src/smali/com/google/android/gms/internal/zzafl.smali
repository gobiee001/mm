.class public final Lcom/google/android/gms/internal/zzafl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzafn;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Landroid/content/pm/PackageInfo;)Lcom/google/android/gms/internal/zzakv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ")",
            "Lcom/google/android/gms/internal/zzakv",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/zzakl;->zzi(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzaku;

    move-result-object v0

    return-object v0
.end method

.method public final zzab(Landroid/content/Context;)Lcom/google/android/gms/internal/zzakv;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/android/gms/internal/zzakv",
            "<",
            "Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzalf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzalf;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzia()Lcom/google/android/gms/internal/zzajr;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzajr;->zzbf(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zzafm;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/zzafm;-><init>(Lcom/google/android/gms/internal/zzafl;Landroid/content/Context;Lcom/google/android/gms/internal/zzalf;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzahh;->zza(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/zzakv;

    :cond_0
    return-object v0
.end method
