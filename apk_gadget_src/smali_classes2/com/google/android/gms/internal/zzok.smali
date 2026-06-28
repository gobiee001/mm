.class final Lcom/google/android/gms/internal/zzok;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbug:Lcom/google/android/gms/internal/zzoj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzoj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzok;->zzbug:Lcom/google/android/gms/internal/zzoj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzok;->zzbug:Lcom/google/android/gms/internal/zzoj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzoj;->zzb(Lcom/google/android/gms/internal/zzoj;)Lcom/google/android/gms/internal/zzos;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzok;->zzbug:Lcom/google/android/gms/internal/zzoj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzoj;->zzb(Lcom/google/android/gms/internal/zzoj;)Lcom/google/android/gms/internal/zzos;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzos;->zzki()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzok;->zzbug:Lcom/google/android/gms/internal/zzoj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzoj;->zzb(Lcom/google/android/gms/internal/zzoj;)Lcom/google/android/gms/internal/zzos;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzos;->zzkh()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzok;->zzbug:Lcom/google/android/gms/internal/zzoj;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzoj;->zza(Lcom/google/android/gms/internal/zzoj;Lcom/google/android/gms/internal/zzos;)Lcom/google/android/gms/internal/zzos;

    return-void
.end method
