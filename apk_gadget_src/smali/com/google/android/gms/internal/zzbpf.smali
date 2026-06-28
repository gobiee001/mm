.class final synthetic Lcom/google/android/gms/internal/zzbpf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbpa;


# instance fields
.field private final zzgpu:Lcom/google/android/gms/internal/zzbpe;

.field private final zzgpv:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbpe;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpf;->zzgpu:Lcom/google/android/gms/internal/zzbpe;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpf;->zzgpv:Lcom/google/android/gms/common/api/Status;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpf;->zzgpu:Lcom/google/android/gms/internal/zzbpe;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpf;->zzgpv:Lcom/google/android/gms/common/api/Status;

    check-cast p1, Lcom/google/android/gms/drive/events/OpenFileCallback;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzbpe;->zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/events/OpenFileCallback;)V

    return-void
.end method
