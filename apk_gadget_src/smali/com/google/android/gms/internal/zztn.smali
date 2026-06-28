.class final Lcom/google/android/gms/internal/zztn;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# static fields
.field private static final zzcal:Lcom/google/android/gms/internal/zztk;

.field private static final zzcam:F

.field private static final zzcan:J

.field private static final zzcao:F

.field private static final zzcap:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/zztk;->zzlc()Lcom/google/android/gms/internal/zztk;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zztn;->zzcal:Lcom/google/android/gms/internal/zztk;

    sget-object v0, Lcom/google/android/gms/internal/zznh;->zzbmg:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Lcom/google/android/gms/internal/zztn;->zzcam:F

    sget-object v0, Lcom/google/android/gms/internal/zznh;->zzbme:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/zztn;->zzcan:J

    sget-object v0, Lcom/google/android/gms/internal/zznh;->zzbmh:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Lcom/google/android/gms/internal/zztn;->zzcao:F

    sget-object v0, Lcom/google/android/gms/internal/zznh;->zzbmf:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/zztn;->zzcap:J

    return-void
.end method

.method private static zzb(JI)I
    .locals 4

    rem-int/lit8 v0, p2, 0x10

    mul-int/lit8 v0, v0, 0x4

    ushr-long v0, p0, v0

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method static zzlm()Z
    .locals 12

    const-wide/16 v10, 0x0

    const v0, 0x7fffffff

    const/16 v9, 0x10

    const/4 v8, 0x0

    sget-object v1, Lcom/google/android/gms/internal/zztn;->zzcal:Lcom/google/android/gms/internal/zztk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zztk;->zzlj()I

    move-result v2

    sget-object v1, Lcom/google/android/gms/internal/zztn;->zzcal:Lcom/google/android/gms/internal/zztk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zztk;->zzlk()I

    move-result v3

    sget-object v1, Lcom/google/android/gms/internal/zztn;->zzcal:Lcom/google/android/gms/internal/zztk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zztk;->zzli()I

    move-result v1

    sget-object v4, Lcom/google/android/gms/internal/zztn;->zzcal:Lcom/google/android/gms/internal/zztk;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zztk;->zzlh()I

    move-result v4

    add-int/2addr v4, v1

    if-ge v2, v9, :cond_1

    sget-wide v6, Lcom/google/android/gms/internal/zztn;->zzcap:J

    cmp-long v1, v6, v10

    if-eqz v1, :cond_1

    sget-wide v6, Lcom/google/android/gms/internal/zztn;->zzcap:J

    invoke-static {v6, v7, v2}, Lcom/google/android/gms/internal/zztn;->zzb(JI)I

    move-result v1

    :goto_0
    if-gt v3, v1, :cond_4

    if-ge v2, v9, :cond_3

    sget-wide v6, Lcom/google/android/gms/internal/zztn;->zzcan:J

    cmp-long v1, v6, v10

    if-eqz v1, :cond_3

    sget-wide v0, Lcom/google/android/gms/internal/zztn;->zzcan:J

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zztn;->zzb(JI)I

    move-result v0

    :cond_0
    :goto_1
    if-gt v4, v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_1
    sget v1, Lcom/google/android/gms/internal/zztn;->zzcao:F

    cmpl-float v1, v1, v8

    if-eqz v1, :cond_2

    sget v1, Lcom/google/android/gms/internal/zztn;->zzcao:F

    int-to-float v5, v2

    mul-float/2addr v1, v5

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_0

    :cond_3
    sget v1, Lcom/google/android/gms/internal/zztn;->zzcam:F

    cmpl-float v1, v1, v8

    if-eqz v1, :cond_0

    sget v0, Lcom/google/android/gms/internal/zztn;->zzcam:F

    int-to-float v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method
