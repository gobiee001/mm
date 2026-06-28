.class final Lcom/google/android/gms/internal/zzbpc;
.super Ljava/lang/Object;


# instance fields
.field private zzgpo:Lcom/google/android/gms/drive/events/OnChangeListener;

.field private zzgpp:Lcom/google/android/gms/drive/DriveId;

.field private zzgpq:Lcom/google/android/gms/internal/zzbpy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbnx;Lcom/google/android/gms/drive/events/OnChangeListener;Lcom/google/android/gms/drive/DriveId;)V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v4, p3}, Lcom/google/android/gms/drive/events/zzj;->zza(ILcom/google/android/gms/drive/DriveId;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkState(Z)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpc;->zzgpo:Lcom/google/android/gms/drive/events/OnChangeListener;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbpc;->zzgpp:Lcom/google/android/gms/drive/DriveId;

    new-instance v0, Lcom/google/android/gms/internal/zzbpy;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApi;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApi;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzbpd;->zza(Lcom/google/android/gms/drive/events/OnChangeListener;)Lcom/google/android/gms/drive/events/ChangeListener;

    move-result-object v3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/google/android/gms/internal/zzbpy;-><init>(Landroid/os/Looper;Landroid/content/Context;ILcom/google/android/gms/drive/events/zzi;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpc;->zzgpq:Lcom/google/android/gms/internal/zzbpy;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpc;->zzgpq:Lcom/google/android/gms/internal/zzbpy;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/zzbpy;->zzcv(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbpc;)Lcom/google/android/gms/internal/zzbpy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpc;->zzgpq:Lcom/google/android/gms/internal/zzbpy;

    return-object v0
.end method
