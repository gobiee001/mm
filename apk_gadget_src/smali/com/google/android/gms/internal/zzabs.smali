.class final Lcom/google/android/gms/internal/zzabs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzali;


# instance fields
.field private synthetic zzcqq:Lcom/google/android/gms/internal/zzabq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzabq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzabs;->zzcqq:Lcom/google/android/gms/internal/zzabq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/zzabo;->zzno()Lcom/google/android/gms/ads/internal/gmsg/zzy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzabs;->zzcqq:Lcom/google/android/gms/internal/zzabq;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzabq;->zzcqp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/gmsg/zzy;->zzat(Ljava/lang/String;)V

    return-void
.end method
