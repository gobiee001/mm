.class public final Lcom/google/android/gms/internal/zzapa;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field public final heightPixels:I

.field private final type:I

.field public final widthPixels:I


# direct methods
.method private constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzapa;->type:I

    iput p2, p0, Lcom/google/android/gms/internal/zzapa;->widthPixels:I

    iput p3, p0, Lcom/google/android/gms/internal/zzapa;->heightPixels:I

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/zzjn;)Lcom/google/android/gms/internal/zzapa;
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjn;->zzbel:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzapa;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzapa;-><init>(III)V

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjn;->zzbeo:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzapa;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzapa;-><init>(III)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjn;->zzben:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/zzapa;->zzuf()Lcom/google/android/gms/internal/zzapa;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/zzjn;->widthPixels:I

    iget v1, p0, Lcom/google/android/gms/internal/zzjn;->heightPixels:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzapa;->zzi(II)Lcom/google/android/gms/internal/zzapa;

    move-result-object v0

    goto :goto_0
.end method

.method public static zzi(II)Lcom/google/android/gms/internal/zzapa;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzapa;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/internal/zzapa;-><init>(III)V

    return-object v0
.end method

.method public static zzuf()Lcom/google/android/gms/internal/zzapa;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzapa;

    invoke-direct {v0, v1, v1, v1}, Lcom/google/android/gms/internal/zzapa;-><init>(III)V

    return-object v0
.end method

.method public static zzug()Lcom/google/android/gms/internal/zzapa;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzapa;

    const/4 v1, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzapa;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public final isFluid()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzapa;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzuh()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzapa;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzui()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzapa;->type:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzuj()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzapa;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
