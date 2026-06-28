.class public final Lcom/google/android/gms/internal/zzxa;
.super Lcom/google/android/gms/internal/zzxb;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/zzt;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzxb;",
        "Lcom/google/android/gms/ads/internal/gmsg/zzt",
        "<",
        "Lcom/google/android/gms/internal/zzanh;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzavx:Landroid/view/WindowManager;

.field private zzaxm:Landroid/util/DisplayMetrics;

.field private final zzbyk:Lcom/google/android/gms/internal/zzanh;

.field private final zzchj:Lcom/google/android/gms/internal/zzmt;

.field private zzchk:F

.field private zzchl:I

.field private zzchm:I

.field private zzchn:I

.field private zzcho:I

.field private zzchp:I

.field private zzchq:I

.field private zzchr:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzanh;Landroid/content/Context;Lcom/google/android/gms/internal/zzmt;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzxb;-><init>(Lcom/google/android/gms/internal/zzanh;)V

    iput v0, p0, Lcom/google/android/gms/internal/zzxa;->zzchl:I

    iput v0, p0, Lcom/google/android/gms/internal/zzxa;->zzchm:I

    iput v0, p0, Lcom/google/android/gms/internal/zzxa;->zzcho:I

    iput v0, p0, Lcom/google/android/gms/internal/zzxa;->zzchp:I

    iput v0, p0, Lcom/google/android/gms/internal/zzxa;->zzchq:I

    iput v0, p0, Lcom/google/android/gms/internal/zzxa;->zzchr:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxa;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzxa;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzxa;->zzchj:Lcom/google/android/gms/internal/zzmt;

    const-string v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxa;->zzavx:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxa;->zzaxm:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxa;->zzavx:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxa;->zzaxm:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxa;->zzaxm:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/google/android/gms/internal/zzxa;->zzchk:F

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzxa;->zzchn:I

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzia()Lcom/google/android/gms/internal/zzajr;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxa;->zzaxm:Landroid/util/DisplayMetrics;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxa;->zzaxm:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzajr;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzxa;->zzchl:I

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzia()Lcom/google/android/gms/internal/zzajr;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxa;->zzaxm:Landroid/util/DisplayMetrics;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxa;->zzaxm:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzajr;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzxa;->zzchm:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxa;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->zzsi()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzxa;->zzchl:I

    iput v0, p0, Lcom/google/android/gms/internal/zzxa;->zzcho:I

    iget v0, p0, Lcom/google/android/gms/internal/zzxa;->zzchm:I

    iput v0, p0, Lcom/google/android/gms/internal/zzxa;->zzchp:I

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzxa;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->zzsx()Lcom/google/android/gms/internal/zzapa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzapa;->zzuh()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/zzxa;->zzchl:I

    iput v0, p0, Lcom/google/android/gms/internal/zzxa;->zzchq:I

    iget v0, p0, Lcom/google/android/gms/internal/zzxa;->zzchm:I

    iput v0, p0, Lcom/google/android/gms/internal/zzxa;->zzchr:I

    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/zzxa;->zzchl:I

    iget v2, p0, Lcom/google/android/gms/internal/zzxa;->zzchm:I

    iget v3, p0, Lcom/google/android/gms/internal/zzxa;->zzcho:I

    iget v4, p0, Lcom/google/android/gms/internal/zzxa;->zzchp:I

    iget v5, p0, Lcom/google/android/gms/internal/zzxa;->zzchk:F

    iget v6, p0, Lcom/google/android/gms/internal/zzxa;->zzchn:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzxb;->zza(IIIIFI)V

    new-instance v0, Lcom/google/android/gms/internal/zzwz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzwz;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxa;->zzchj:Lcom/google/android/gms/internal/zzmt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzmt;->zzir()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzwz;->zzn(Z)Lcom/google/android/gms/internal/zzwz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxa;->zzchj:Lcom/google/android/gms/internal/zzmt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzmt;->zzis()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzwz;->zzm(Z)Lcom/google/android/gms/internal/zzwz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxa;->zzchj:Lcom/google/android/gms/internal/zzmt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzmt;->zziu()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzwz;->zzo(Z)Lcom/google/android/gms/internal/zzwz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxa;->zzchj:Lcom/google/android/gms/internal/zzmt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzmt;->zzit()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzwz;->zzp(Z)Lcom/google/android/gms/internal/zzwz;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/zzwz;->zzq(Z)Lcom/google/android/gms/internal/zzwz;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzwx;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/zzwx;-><init>(Lcom/google/android/gms/internal/zzwz;Lcom/google/android/gms/internal/zzwy;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxa;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    const-string v2, "onDeviceFeaturesReceived"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzwx;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/zzanh;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V

    new-array v0, v9, [I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxa;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzanh;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzia()Lcom/google/android/gms/internal/zzajr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxa;->mContext:Landroid/content/Context;

    aget v2, v0, v7

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzajr;->zzd(Landroid/content/Context;I)I

    move-result v1

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzia()Lcom/google/android/gms/internal/zzajr;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzxa;->mContext:Landroid/content/Context;

    aget v0, v0, v8

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzajr;->zzd(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzxa;->zzc(II)V

    invoke-static {v9}, Lcom/google/android/gms/internal/zzagf;->zzae(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Dispatching Ready Event."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->zzct(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzxa;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->zzsk()Lcom/google/android/gms/internal/zzakd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzakd;->zzcv:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzxb;->zzbn(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzei()Lcom/google/android/gms/internal/zzahn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzahn;->zzf(Landroid/app/Activity;)[I

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzia()Lcom/google/android/gms/internal/zzajr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxa;->zzaxm:Landroid/util/DisplayMetrics;

    aget v2, v0, v7

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzajr;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/zzxa;->zzcho:I

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzia()Lcom/google/android/gms/internal/zzajr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxa;->zzaxm:Landroid/util/DisplayMetrics;

    aget v0, v0, v8

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzajr;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzxa;->zzchp:I

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzxa;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0, v7, v7}, Lcom/google/android/gms/internal/zzanh;->measure(II)V

    goto/16 :goto_1
.end method

.method public final zzc(II)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxa;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzei()Lcom/google/android/gms/internal/zzahn;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxa;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzahn;->zzh(Landroid/app/Activity;)[I

    move-result-object v0

    aget v0, v0, v1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzxa;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzanh;->zzsx()Lcom/google/android/gms/internal/zzapa;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxa;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzanh;->zzsx()Lcom/google/android/gms/internal/zzapa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzapa;->zzuh()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzia()Lcom/google/android/gms/internal/zzajr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxa;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzxa;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzanh;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzajr;->zzd(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/zzxa;->zzchq:I

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzia()Lcom/google/android/gms/internal/zzajr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxa;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzxa;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzanh;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzajr;->zzd(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/zzxa;->zzchr:I

    :cond_1
    sub-int v0, p2, v0

    iget v1, p0, Lcom/google/android/gms/internal/zzxa;->zzchq:I

    iget v2, p0, Lcom/google/android/gms/internal/zzxa;->zzchr:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzxb;->zzc(IIII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxa;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->zzsz()Lcom/google/android/gms/internal/zzani;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzani;->zzb(II)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method
