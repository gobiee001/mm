.class final Lcom/google/android/gms/internal/zzapt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzdsu:Lcom/google/android/gms/internal/zzapr;

.field private synthetic zzdsv:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzapr;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzapt;->zzdsu:Lcom/google/android/gms/internal/zzapr;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzapt;->zzdsv:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapt;->zzdsu:Lcom/google/android/gms/internal/zzapr;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzapr;->zza(Lcom/google/android/gms/internal/zzapr;)Lcom/google/android/gms/internal/zzaqo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaqo;->zzyf()V

    return-void
.end method
