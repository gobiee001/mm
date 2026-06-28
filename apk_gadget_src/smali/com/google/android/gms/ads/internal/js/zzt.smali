.class final Lcom/google/android/gms/ads/internal/js/zzt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/zzt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/zzt",
        "<",
        "Lcom/google/android/gms/ads/internal/js/zzaj;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzcbg:Lcom/google/android/gms/ads/internal/js/zzc;

.field private synthetic zzcbh:Lcom/google/android/gms/ads/internal/js/zzo;

.field private synthetic zzcbk:Lcom/google/android/gms/internal/zzajj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/js/zzo;Lcom/google/android/gms/ads/internal/js/zzc;Lcom/google/android/gms/internal/zzajj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/js/zzt;->zzcbh:Lcom/google/android/gms/ads/internal/js/zzo;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/js/zzt;->zzcbg:Lcom/google/android/gms/ads/internal/js/zzc;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/js/zzt;->zzcbk:Lcom/google/android/gms/internal/zzajj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzt;->zzcbh:Lcom/google/android/gms/ads/internal/js/zzo;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/js/zzo;->zzcbf:Lcom/google/android/gms/ads/internal/js/zzn;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/js/zzn;->zzc(Lcom/google/android/gms/ads/internal/js/zzn;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string v0, "JS Engine is requesting an update"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->zzct(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzt;->zzcbh:Lcom/google/android/gms/ads/internal/js/zzo;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/js/zzo;->zzcbf:Lcom/google/android/gms/ads/internal/js/zzn;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/js/zzn;->zze(Lcom/google/android/gms/ads/internal/js/zzn;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Starting reload."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->zzct(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzt;->zzcbh:Lcom/google/android/gms/ads/internal/js/zzo;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/js/zzo;->zzcbf:Lcom/google/android/gms/ads/internal/js/zzn;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/google/android/gms/ads/internal/js/zzn;->zza(Lcom/google/android/gms/ads/internal/js/zzn;I)I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzt;->zzcbh:Lcom/google/android/gms/ads/internal/js/zzo;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/js/zzo;->zzcbf:Lcom/google/android/gms/ads/internal/js/zzn;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/js/zzt;->zzcbh:Lcom/google/android/gms/ads/internal/js/zzo;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/js/zzo;->zzcbd:Lcom/google/android/gms/internal/zzcv;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/js/zzn;->zza(Lcom/google/android/gms/internal/zzcv;)Lcom/google/android/gms/ads/internal/js/zzae;

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/js/zzt;->zzcbg:Lcom/google/android/gms/ads/internal/js/zzc;

    const-string v3, "/requestReload"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzt;->zzcbk:Lcom/google/android/gms/internal/zzajj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzajj;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/ads/internal/js/zzc;->zzb(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
