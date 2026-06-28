.class final Lcom/google/android/gms/internal/zzbpi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zzcl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/internal/zzcl",
        "<",
        "Lcom/google/android/gms/drive/events/OpenFileCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzgpy:Lcom/google/android/gms/internal/zzbpa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbpe;Lcom/google/android/gms/internal/zzbpa;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpi;->zzgpy:Lcom/google/android/gms/internal/zzbpa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzahz()V
    .locals 0

    return-void
.end method

.method public final synthetic zzu(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/drive/events/OpenFileCallback;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpi;->zzgpy:Lcom/google/android/gms/internal/zzbpa;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbpa;->accept(Ljava/lang/Object;)V

    return-void
.end method
