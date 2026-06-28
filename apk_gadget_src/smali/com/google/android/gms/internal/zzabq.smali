.class final Lcom/google/android/gms/internal/zzabq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzcqn:Lcom/google/android/gms/internal/zzabo;

.field final synthetic zzcqo:Lorg/json/JSONObject;

.field final synthetic zzcqp:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzabo;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzabq;->zzcqn:Lcom/google/android/gms/internal/zzabo;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzabq;->zzcqo:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzabq;->zzcqp:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabq;->zzcqn:Lcom/google/android/gms/internal/zzabo;

    invoke-static {}, Lcom/google/android/gms/internal/zzabo;->zznp()Lcom/google/android/gms/ads/internal/js/zzn;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/js/zzn;->zzb(Lcom/google/android/gms/internal/zzcv;)Lcom/google/android/gms/ads/internal/js/zzaa;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzabo;->zza(Lcom/google/android/gms/internal/zzabo;Lcom/google/android/gms/ads/internal/js/zzaa;)Lcom/google/android/gms/ads/internal/js/zzaa;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabq;->zzcqn:Lcom/google/android/gms/internal/zzabo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzabo;->zzb(Lcom/google/android/gms/internal/zzabo;)Lcom/google/android/gms/ads/internal/js/zzaa;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzabr;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzabr;-><init>(Lcom/google/android/gms/internal/zzabq;)V

    new-instance v2, Lcom/google/android/gms/internal/zzabs;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzabs;-><init>(Lcom/google/android/gms/internal/zzabq;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzall;->zza(Lcom/google/android/gms/internal/zzalk;Lcom/google/android/gms/internal/zzali;)V

    return-void
.end method
