.class final Lcom/google/android/gms/internal/zzaps;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzdst:I

.field private synthetic zzdsu:Lcom/google/android/gms/internal/zzapr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzapr;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaps;->zzdsu:Lcom/google/android/gms/internal/zzapr;

    iput p2, p0, Lcom/google/android/gms/internal/zzaps;->zzdst:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->zzdsu:Lcom/google/android/gms/internal/zzapr;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzapr;->zza(Lcom/google/android/gms/internal/zzapr;)Lcom/google/android/gms/internal/zzaqo;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/zzaps;->zzdst:I

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzaqo;->zzr(J)V

    return-void
.end method
