.class final Lcom/google/android/gms/internal/zzalu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzdgk:Lcom/google/android/gms/internal/zzalr;

.field private synthetic zzdgl:Ljava/lang/String;

.field private synthetic zzdgm:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzalr;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzalu;->zzdgk:Lcom/google/android/gms/internal/zzalr;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzalu;->zzdgl:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzalu;->zzdgm:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalu;->zzdgk:Lcom/google/android/gms/internal/zzalr;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzalr;->zza(Lcom/google/android/gms/internal/zzalr;)Lcom/google/android/gms/internal/zzama;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalu;->zzdgk:Lcom/google/android/gms/internal/zzalr;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzalr;->zza(Lcom/google/android/gms/internal/zzalr;)Lcom/google/android/gms/internal/zzama;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzalu;->zzdgl:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzalu;->zzdgm:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzama;->zzg(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
