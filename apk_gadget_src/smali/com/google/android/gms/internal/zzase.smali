.class final Lcom/google/android/gms/internal/zzase;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzarj;


# instance fields
.field final synthetic zzdyw:Ljava/lang/Integer;

.field private synthetic zzdyx:Lcom/google/android/gms/internal/zzaqc;

.field final synthetic zzdyy:Lcom/google/android/gms/internal/zzarv;

.field final synthetic zzdyz:Landroid/app/job/JobParameters;

.field final synthetic zzdza:Lcom/google/android/gms/internal/zzasd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzasd;Ljava/lang/Integer;Lcom/google/android/gms/internal/zzaqc;Lcom/google/android/gms/internal/zzarv;Landroid/app/job/JobParameters;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzase;->zzdza:Lcom/google/android/gms/internal/zzasd;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzase;->zzdyw:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzase;->zzdyx:Lcom/google/android/gms/internal/zzaqc;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzase;->zzdyy:Lcom/google/android/gms/internal/zzarv;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzase;->zzdyz:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzd(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzase;->zzdza:Lcom/google/android/gms/internal/zzasd;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzasd;->zzb(Lcom/google/android/gms/internal/zzasd;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzasf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzasf;-><init>(Lcom/google/android/gms/internal/zzase;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
