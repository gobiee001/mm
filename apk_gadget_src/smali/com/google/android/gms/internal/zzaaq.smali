.class public final Lcom/google/android/gms/internal/zzaaq;
.super Lcom/google/android/gms/internal/zzaan;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzalh;Lcom/google/android/gms/internal/zzaal;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/zzalh",
            "<",
            "Lcom/google/android/gms/internal/zzaat;",
            ">;",
            "Lcom/google/android/gms/internal/zzaal;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/zzaan;-><init>(Lcom/google/android/gms/internal/zzalh;Lcom/google/android/gms/internal/zzaal;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaaq;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zznk()V
    .locals 0

    return-void
.end method

.method public final zznl()Lcom/google/android/gms/internal/zzabb;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaq;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaaq;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaca;->zzk(Landroid/content/Context;)Lcom/google/android/gms/internal/zzaca;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzacb;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzaca;)Lcom/google/android/gms/internal/zzacb;

    move-result-object v0

    return-object v0
.end method
