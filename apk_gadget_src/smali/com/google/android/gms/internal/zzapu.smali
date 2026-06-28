.class final Lcom/google/android/gms/internal/zzapu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzdsu:Lcom/google/android/gms/internal/zzapr;

.field private synthetic zzdsw:Ljava/lang/String;

.field private synthetic zzdsx:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzapr;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzapu;->zzdsu:Lcom/google/android/gms/internal/zzapr;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzapu;->zzdsw:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzapu;->zzdsx:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapu;->zzdsu:Lcom/google/android/gms/internal/zzapr;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzapr;->zza(Lcom/google/android/gms/internal/zzapr;)Lcom/google/android/gms/internal/zzaqo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapu;->zzdsw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaqo;->zzec(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapu;->zzdsx:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapu;->zzdsx:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
