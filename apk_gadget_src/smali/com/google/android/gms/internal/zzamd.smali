.class public final Lcom/google/android/gms/internal/zzamd;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/google/android/gms/internal/zzama;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final zzdgr:Lcom/google/android/gms/internal/zzamp;

.field private final zzdgs:Landroid/widget/FrameLayout;

.field private final zzdgt:Lcom/google/android/gms/internal/zznu;

.field private final zzdgu:Lcom/google/android/gms/internal/zzamr;

.field private final zzdgv:J

.field private zzdgw:Lcom/google/android/gms/internal/zzamb;

.field private zzdgx:Z

.field private zzdgy:Z

.field private zzdgz:Z

.field private zzdha:Z

.field private zzdhb:J

.field private zzdhc:J

.field private zzdhd:Ljava/lang/String;

.field private zzdhe:Landroid/graphics/Bitmap;

.field private zzdhf:Landroid/widget/ImageView;

.field private zzdhg:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzamp;IZLcom/google/android/gms/internal/zznu;Lcom/google/android/gms/internal/zzamo;)V
    .locals 8

    const/4 v7, -0x1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzamd;->zzdgr:Lcom/google/android/gms/internal/zzamp;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzamd;->zzdgt:Lcom/google/android/gms/internal/zznu;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgs:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgs:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzamd;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzamp;->zzbq()Lcom/google/android/gms/ads/internal/zzv;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzc;->zzv(Ljava/lang/Object;)V

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzamp;->zzbq()Lcom/google/android/gms/ads/internal/zzv;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzaom:Lcom/google/android/gms/internal/zzamc;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzamc;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzamp;IZLcom/google/android/gms/internal/zznu;Lcom/google/android/gms/internal/zzamo;)Lcom/google/android/gms/internal/zzamb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgw:Lcom/google/android/gms/internal/zzamb;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgw:Lcom/google/android/gms/internal/zzamb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgs:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamd;->zzdgw:Lcom/google/android/gms/internal/zzamb;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v7, v7, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/google/android/gms/internal/zznh;->zzbin:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamd;->zzrw()V

    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdhf:Landroid/widget/ImageView;

    sget-object v0, Lcom/google/android/gms/internal/zznh;->zzbir:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgv:J

    sget-object v0, Lcom/google/android/gms/internal/zznh;->zzbip:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdha:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgt:Lcom/google/android/gms/internal/zznu;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamd;->zzdgt:Lcom/google/android/gms/internal/zznu;

    const-string v2, "spinner_used"

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdha:Z

    if-eqz v0, :cond_4

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zznu;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzamr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzamr;-><init>(Lcom/google/android/gms/internal/zzamd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgu:Lcom/google/android/gms/internal/zzamr;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgw:Lcom/google/android/gms/internal/zzamb;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgw:Lcom/google/android/gms/internal/zzamb;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzamb;->zza(Lcom/google/android/gms/internal/zzama;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgw:Lcom/google/android/gms/internal/zzamb;

    if-nez v0, :cond_3

    const-string v0, "AdVideoUnderlay Error"

    const-string v1, "Allocating player failed."

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzamd;->zzg(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    const-string v0, "0"

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzamd;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzamd;->zza(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/zzamp;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "no_video_view"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onVideoEvent"

    invoke-interface {p0, v1, v0}, Lcom/google/android/gms/internal/zzamp;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/zzamp;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "decoderProps"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "error"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onVideoEvent"

    invoke-interface {p0, v1, v0}, Lcom/google/android/gms/internal/zzamp;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/zzamp;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzamp;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "decoderProps"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mimeTypes"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onVideoEvent"

    invoke-interface {p0, v1, v0}, Lcom/google/android/gms/internal/zzamp;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final varargs zza(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v0, "event"

    invoke-virtual {v4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v5, p2

    const/4 v0, 0x0

    move v2, v0

    move-object v3, v1

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v0, p2, v2

    if-nez v3, :cond_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move-object v3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgr:Lcom/google/android/gms/internal/zzamp;

    const-string v1, "onVideoEvent"

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/zzamp;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final zzry()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdhf:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final zzrz()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgr:Lcom/google/android/gms/internal/zzamp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzamp;->zzsi()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgy:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgz:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgr:Lcom/google/android/gms/internal/zzamp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzamp;->zzsi()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgy:Z

    goto :goto_0
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgu:Lcom/google/android/gms/internal/zzamr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamr;->pause()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgw:Lcom/google/android/gms/internal/zzamb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgw:Lcom/google/android/gms/internal/zzamb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamb;->stop()V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamd;->zzrz()V

    return-void
.end method

.method public final onPaused()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "pause"

    new-array v1, v2, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzamd;->zza(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamd;->zzrz()V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzamd;->zzdgx:Z

    return-void
.end method

.method public final pause()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgw:Lcom/google/android/gms/internal/zzamb;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgw:Lcom/google/android/gms/internal/zzamb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamb;->pause()V

    goto :goto_0
.end method

.method public final play()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgw:Lcom/google/android/gms/internal/zzamb;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgw:Lcom/google/android/gms/internal/zzamb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamb;->play()V

    goto :goto_0
.end method

.method public final seekTo(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgw:Lcom/google/android/gms/internal/zzamb;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgw:Lcom/google/android/gms/internal/zzamb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzamb;->seekTo(I)V

    goto :goto_0
.end method

.method public final zza(FF)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgw:Lcom/google/android/gms/internal/zzamb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgw:Lcom/google/android/gms/internal/zzamb;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzamb;->zza(FF)V

    :cond_0
    return-void
.end method

.method public final zzb(F)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgw:Lcom/google/android/gms/internal/zzamb;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgw:Lcom/google/android/gms/internal/zzamb;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzamb;->zzdgq:Lcom/google/android/gms/internal/zzams;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzams;->zzb(F)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamb;->zzrm()V

    goto :goto_0
.end method

.method public final zzcv(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzamd;->zzdhd:Ljava/lang/String;

    return-void
.end method

.method public final zzd(IIII)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamd;->zzdgs:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamd;->requestLayout()V

    goto :goto_0
.end method

.method public final zzf(II)V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdha:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/zznh;->zzbiq:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int v0, p1, v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    sget-object v0, Lcom/google/android/gms/internal/zznh;->zzbiq:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int v0, p2, v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzamd;->zzdhe:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzamd;->zzdhe:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzamd;->zzdhe:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v2, v0, :cond_1

    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdhe:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdhg:Z

    :cond_1
    return-void
.end method

.method public final zzf(Landroid/view/MotionEvent;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgw:Lcom/google/android/gms/internal/zzamb;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgw:Lcom/google/android/gms/internal/zzamb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzamb;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method public final zzg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "error"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "what"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string v3, "extra"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzamd;->zza(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final zzrn()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgu:Lcom/google/android/gms/internal/zzamr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamr;->resume()V

    sget-object v0, Lcom/google/android/gms/internal/zzahn;->zzdaw:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzame;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzame;-><init>(Lcom/google/android/gms/internal/zzamd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzro()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgw:Lcom/google/android/gms/internal/zzamb;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdhc:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgw:Lcom/google/android/gms/internal/zzamb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamb;->getDuration()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamd;->zzdgw:Lcom/google/android/gms/internal/zzamb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzamb;->getVideoWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzamd;->zzdgw:Lcom/google/android/gms/internal/zzamb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzamb;->getVideoHeight()I

    move-result v2

    const-string v3, "canplaythrough"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "duration"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x2

    const-string v5, "videoWidth"

    aput-object v5, v4, v0

    const/4 v0, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x4

    const-string v1, "videoHeight"

    aput-object v1, v4, v0

    const/4 v0, 0x5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-direct {p0, v3, v4}, Lcom/google/android/gms/internal/zzamd;->zza(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final zzrp()V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgr:Lcom/google/android/gms/internal/zzamp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzamp;->zzsi()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgy:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgr:Lcom/google/android/gms/internal/zzamp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzamp;->zzsi()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgz:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgz:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgr:Lcom/google/android/gms/internal/zzamp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzamp;->zzsi()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzamd;->zzdgy:Z

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzamd;->zzdgx:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzrq()V
    .locals 2

    const-string v0, "ended"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzamd;->zza(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamd;->zzrz()V

    return-void
.end method

.method public final zzrr()V
    .locals 4

    const/4 v3, -0x1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdhg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdhe:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamd;->zzry()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdhf:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamd;->zzdhe:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdhf:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgs:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamd;->zzdhf:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgs:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamd;->zzdhf:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgu:Lcom/google/android/gms/internal/zzamr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamr;->pause()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdhb:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdhc:J

    sget-object v0, Lcom/google/android/gms/internal/zzahn;->zzdaw:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzamf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzamf;-><init>(Lcom/google/android/gms/internal/zzamd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzrs()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgx:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamd;->zzry()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgs:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamd;->zzdhf:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdhe:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzeo()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzamd;->zzdgw:Lcom/google/android/gms/internal/zzamb;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzamd;->zzdhe:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzamb;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzamd;->zzdhg:Z

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzeo()Lcom/google/android/gms/common/util/zzd;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v2

    sub-long v0, v2, v0

    invoke-static {}, Lcom/google/android/gms/internal/zzagf;->zzpz()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x2e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Spinner frame grab took "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzagf;->v(Ljava/lang/String;)V

    :cond_2
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzamd;->zzdgv:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    const-string v2, "Spinner frame grab crossed jank threshold! Suspending spinner."

    invoke-static {v2}, Lcom/google/android/gms/internal/zzagf;->zzcu(Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzamd;->zzdha:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzamd;->zzdhe:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzamd;->zzdgt:Lcom/google/android/gms/internal/zznu;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzamd;->zzdgt:Lcom/google/android/gms/internal/zznu;

    const-string v3, "spinner_jank"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zznu;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final zzrt()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgw:Lcom/google/android/gms/internal/zzamb;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdhd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgw:Lcom/google/android/gms/internal/zzamb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamd;->zzdhd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzamb;->setVideoPath(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "no_src"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzamd;->zza(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final zzru()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgw:Lcom/google/android/gms/internal/zzamb;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgw:Lcom/google/android/gms/internal/zzamb;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzamb;->zzdgq:Lcom/google/android/gms/internal/zzams;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzams;->setMuted(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamb;->zzrm()V

    goto :goto_0
.end method

.method public final zzrv()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgw:Lcom/google/android/gms/internal/zzamb;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgw:Lcom/google/android/gms/internal/zzamb;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzamb;->zzdgq:Lcom/google/android/gms/internal/zzams;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzams;->setMuted(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamb;->zzrm()V

    goto :goto_0
.end method

.method public final zzrw()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const/4 v4, -0x2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgw:Lcom/google/android/gms/internal/zzamb;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgw:Lcom/google/android/gms/internal/zzamb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamb;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v2, "AdMob - "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgw:Lcom/google/android/gms/internal/zzamb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamb;->zzri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, -0x10000

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, -0x100

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgs:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgs:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method final zzrx()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgw:Lcom/google/android/gms/internal/zzamb;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdgw:Lcom/google/android/gms/internal/zzamb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamb;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzamd;->zzdhb:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    long-to-float v2, v0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    const-string v3, "timeupdate"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "time"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-direct {p0, v3, v4}, Lcom/google/android/gms/internal/zzamd;->zza(Ljava/lang/String;[Ljava/lang/String;)V

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzamd;->zzdhb:J

    goto :goto_0
.end method
