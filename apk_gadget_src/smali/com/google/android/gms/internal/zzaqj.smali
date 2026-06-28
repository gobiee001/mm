.class final Lcom/google/android/gms/internal/zzaqj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzdue:Lcom/google/android/gms/internal/zzarr;

.field private synthetic zzduf:Lcom/google/android/gms/internal/zzaqi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaqi;Lcom/google/android/gms/internal/zzarr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaqj;->zzduf:Lcom/google/android/gms/internal/zzaqi;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaqj;->zzdue:Lcom/google/android/gms/internal/zzarr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqj;->zzduf:Lcom/google/android/gms/internal/zzaqi;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaqi;->zzdub:Lcom/google/android/gms/internal/zzaqg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaqg;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqj;->zzduf:Lcom/google/android/gms/internal/zzaqi;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaqi;->zzdub:Lcom/google/android/gms/internal/zzaqg;

    const-string v1, "Connected to service after a timeout"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzapz;->zzdv(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqj;->zzduf:Lcom/google/android/gms/internal/zzaqi;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaqi;->zzdub:Lcom/google/android/gms/internal/zzaqg;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqj;->zzdue:Lcom/google/android/gms/internal/zzarr;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaqg;->zza(Lcom/google/android/gms/internal/zzaqg;Lcom/google/android/gms/internal/zzarr;)V

    :cond_0
    return-void
.end method
