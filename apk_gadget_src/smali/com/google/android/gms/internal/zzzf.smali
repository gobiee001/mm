.class public final Lcom/google/android/gms/internal/zzzf;
.super Lcom/google/android/gms/internal/zzyk;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzyk",
        "<",
        "Lcom/google/android/gms/internal/zzzf;",
        ">;"
    }
.end annotation


# static fields
.field private static final sLock:Ljava/lang/Object;

.field private static final zzclr:J

.field private static zzcls:Z

.field private static zzclt:Lcom/google/android/gms/ads/internal/js/zzn;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final zzarf:Lcom/google/android/gms/internal/zzakd;

.field private zzaro:Ljava/lang/String;

.field private final zzbuv:Lcom/google/android/gms/internal/zzcv;

.field private final zzclf:Lcom/google/android/gms/ads/internal/zzba;

.field private zzclp:Lcom/google/android/gms/ads/internal/js/JavascriptEngineFactory;

.field private zzclq:Lcom/google/android/gms/internal/zzakv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzakv",
            "<",
            "Lcom/google/android/gms/internal/zzanh;",
            ">;"
        }
    .end annotation
.end field

.field private final zzclu:Lcom/google/android/gms/ads/internal/gmsg/zzz;

.field private final zzclv:Lcom/google/android/gms/internal/zzox;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/zzzf;->zzclr:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzzf;->sLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/zzzf;->zzcls:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzzf;->zzclt:Lcom/google/android/gms/ads/internal/js/zzn;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzba;Ljava/lang/String;Lcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/internal/zzakd;)V
    .locals 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzyk;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzf;->mLock:Ljava/lang/Object;

    const-string v0, "Webview loading for native ads."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->zzct(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzzf;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzzf;->zzclf:Lcom/google/android/gms/ads/internal/zzba;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzzf;->zzbuv:Lcom/google/android/gms/internal/zzcv;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzzf;->zzarf:Lcom/google/android/gms/internal/zzakd;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzzf;->zzaro:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/ads/internal/js/JavascriptEngineFactory;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/js/JavascriptEngineFactory;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzf;->zzclp:Lcom/google/android/gms/ads/internal/js/JavascriptEngineFactory;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzej()Lcom/google/android/gms/internal/zzanr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzf;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzf;->zzarf:Lcom/google/android/gms/internal/zzakd;

    sget-object v0, Lcom/google/android/gms/internal/zznh;->zzbol:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzzf;->zzbuv:Lcom/google/android/gms/internal/zzcv;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzzf;->zzclf:Lcom/google/android/gms/ads/internal/zzba;

    invoke-virtual {v4}, Lcom/google/android/gms/ads/internal/zza;->zzbq()Lcom/google/android/gms/ads/internal/zzv;

    move-result-object v4

    invoke-static {v1, v2, v0, v3, v4}, Lcom/google/android/gms/internal/zzanr;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;Ljava/lang/String;Lcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/ads/internal/zzv;)Lcom/google/android/gms/internal/zzakv;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/internal/gmsg/zzz;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzf;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/gmsg/zzz;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzzf;->zzclu:Lcom/google/android/gms/ads/internal/gmsg/zzz;

    new-instance v1, Lcom/google/android/gms/internal/zzox;

    invoke-direct {v1, p2, p3}, Lcom/google/android/gms/internal/zzox;-><init>(Lcom/google/android/gms/internal/zzot;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzzf;->zzclv:Lcom/google/android/gms/internal/zzox;

    new-instance v1, Lcom/google/android/gms/internal/zzzg;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzzg;-><init>(Lcom/google/android/gms/internal/zzzf;)V

    sget-object v2, Lcom/google/android/gms/internal/zzala;->zzdff:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzakl;->zza(Lcom/google/android/gms/internal/zzakv;Lcom/google/android/gms/internal/zzakg;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/zzakv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzf;->zzclq:Lcom/google/android/gms/internal/zzakv;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf;->zzclq:Lcom/google/android/gms/internal/zzakv;

    const-string v1, "WebViewNativeAdsUtil.constructor"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzakj;->zza(Lcom/google/android/gms/internal/zzakv;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method final synthetic zza(Lorg/json/JSONObject;Lcom/google/android/gms/internal/zzanh;)Lcom/google/android/gms/internal/zzakv;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "ads_id"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzf;->zzaro:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "google.afma.nativeAds.handleImpressionPing"

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/zzanh;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzakl;->zzi(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzaku;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zza(Lcom/google/android/gms/internal/zzanh;Lcom/google/android/gms/internal/zzyl;Lcom/google/android/gms/internal/zzalf;Lcom/google/android/gms/internal/zzanh;Ljava/util/Map;)V
    .locals 5

    :try_start_0
    const-string v0, "success"

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "failure"

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzzf;->zzaro:Ljava/lang/String;

    const-string v3, "ads_id"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    return-void

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "/nativeAdPreProcess"

    iget-object v3, p2, Lcom/google/android/gms/internal/zzyl;->zzcke:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-interface {p1, v2, v3}, Lcom/google/android/gms/internal/zzanh;->zzb(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "success"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "json"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p3, v2}, Lcom/google/android/gms/internal/zzalf;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Error while preprocessing json."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzagf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/zzalf;->setException(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf;->zzclq:Lcom/google/android/gms/internal/zzakv;

    new-instance v1, Lcom/google/android/gms/internal/zzzl;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzzl;-><init>(Lcom/google/android/gms/internal/zzzf;Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    sget-object v2, Lcom/google/android/gms/internal/zzala;->zzdfe:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzakl;->zza(Lcom/google/android/gms/internal/zzakv;Lcom/google/android/gms/internal/zzaki;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf;->zzclq:Lcom/google/android/gms/internal/zzakv;

    new-instance v1, Lcom/google/android/gms/internal/zzzn;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzzn;-><init>(Lcom/google/android/gms/internal/zzzf;Ljava/lang/String;Lorg/json/JSONObject;)V

    sget-object v2, Lcom/google/android/gms/internal/zzala;->zzdfe:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzakl;->zza(Lcom/google/android/gms/internal/zzakv;Lcom/google/android/gms/internal/zzaki;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method final synthetic zzb(Lorg/json/JSONObject;Lcom/google/android/gms/internal/zzanh;)Lcom/google/android/gms/internal/zzakv;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "ads_id"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzf;->zzaro:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "google.afma.nativeAds.handleClickGmsg"

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/zzanh;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzakl;->zzi(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzaku;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf;->zzclq:Lcom/google/android/gms/internal/zzakv;

    new-instance v1, Lcom/google/android/gms/internal/zzzm;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzzm;-><init>(Lcom/google/android/gms/internal/zzzf;Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    sget-object v2, Lcom/google/android/gms/internal/zzala;->zzdfe:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzakl;->zza(Lcom/google/android/gms/internal/zzakv;Lcom/google/android/gms/internal/zzaki;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method final synthetic zzc(Lorg/json/JSONObject;Lcom/google/android/gms/internal/zzanh;)Lcom/google/android/gms/internal/zzakv;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "ads_id"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzf;->zzaro:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lcom/google/android/gms/internal/zzalf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzalf;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/zzyl;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzyl;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/zzzk;

    invoke-direct {v2, p0, p2, v1, v0}, Lcom/google/android/gms/internal/zzzk;-><init>(Lcom/google/android/gms/internal/zzzf;Lcom/google/android/gms/internal/zzanh;Lcom/google/android/gms/internal/zzyl;Lcom/google/android/gms/internal/zzalf;)V

    iput-object v2, v1, Lcom/google/android/gms/internal/zzyl;->zzcke:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    const-string v1, "/nativeAdPreProcess"

    invoke-interface {p2, v1, v2}, Lcom/google/android/gms/internal/zzanh;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v1, "google.afma.nativeAds.preProcessJsonGmsg"

    invoke-interface {p2, v1, p1}, Lcom/google/android/gms/internal/zzanh;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method final synthetic zzh(Lcom/google/android/gms/internal/zzanh;)Lcom/google/android/gms/internal/zzakv;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, 0x0

    const-string v0, "Javascript has loaded for native ads."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->zzct(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzanh;->zzsz()Lcom/google/android/gms/internal/zzani;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzf;->zzclf:Lcom/google/android/gms/ads/internal/zzba;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzf;->zzclf:Lcom/google/android/gms/ads/internal/zzba;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzzf;->zzclf:Lcom/google/android/gms/ads/internal/zzba;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzzf;->zzclf:Lcom/google/android/gms/ads/internal/zzba;

    const/4 v5, 0x0

    new-instance v7, Lcom/google/android/gms/ads/internal/zzw;

    iget-object v8, p0, Lcom/google/android/gms/internal/zzzf;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8, v6, v6}, Lcom/google/android/gms/ads/internal/zzw;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzafb;Lcom/google/android/gms/internal/zzaaz;)V

    move-object v8, v6

    move-object v9, v6

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/internal/zzani;->zza(Lcom/google/android/gms/internal/zzje;Lcom/google/android/gms/ads/internal/overlay/zzn;Lcom/google/android/gms/ads/internal/gmsg/zzb;Lcom/google/android/gms/ads/internal/overlay/zzq;ZLcom/google/android/gms/ads/internal/gmsg/zzx;Lcom/google/android/gms/ads/internal/zzw;Lcom/google/android/gms/internal/zzxc;Lcom/google/android/gms/internal/zzafb;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzanh;->zzsz()Lcom/google/android/gms/internal/zzani;

    move-result-object v0

    const-string v1, "/logScionEvent"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzf;->zzclu:Lcom/google/android/gms/ads/internal/gmsg/zzz;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzani;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzanh;->zzsz()Lcom/google/android/gms/internal/zzani;

    move-result-object v0

    const-string v1, "/logScionEvent"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzf;->zzclv:Lcom/google/android/gms/internal/zzox;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzani;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzakl;->zzi(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzaku;

    move-result-object v0

    return-object v0
.end method

.method public final zzi(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzakv;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/zzakv",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf;->zzclq:Lcom/google/android/gms/internal/zzakv;

    new-instance v1, Lcom/google/android/gms/internal/zzzh;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzzh;-><init>(Lcom/google/android/gms/internal/zzzf;Lorg/json/JSONObject;)V

    sget-object v2, Lcom/google/android/gms/internal/zzala;->zzdfe:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzakl;->zza(Lcom/google/android/gms/internal/zzakv;Lcom/google/android/gms/internal/zzakg;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/zzakv;

    move-result-object v0

    return-object v0
.end method

.method public final zzj(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzakv;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/zzakv",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf;->zzclq:Lcom/google/android/gms/internal/zzakv;

    new-instance v1, Lcom/google/android/gms/internal/zzzi;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzzi;-><init>(Lcom/google/android/gms/internal/zzzf;Lorg/json/JSONObject;)V

    sget-object v2, Lcom/google/android/gms/internal/zzala;->zzdfe:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzakl;->zza(Lcom/google/android/gms/internal/zzakv;Lcom/google/android/gms/internal/zzakg;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/zzakv;

    move-result-object v0

    return-object v0
.end method

.method public final zzk(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzakv;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/zzakv",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf;->zzclq:Lcom/google/android/gms/internal/zzakv;

    new-instance v1, Lcom/google/android/gms/internal/zzzj;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzzj;-><init>(Lcom/google/android/gms/internal/zzzf;Lorg/json/JSONObject;)V

    sget-object v2, Lcom/google/android/gms/internal/zzala;->zzdfe:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzakl;->zza(Lcom/google/android/gms/internal/zzakv;Lcom/google/android/gms/internal/zzakg;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/zzakv;

    move-result-object v0

    return-object v0
.end method

.method public final zzls()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf;->zzclq:Lcom/google/android/gms/internal/zzakv;

    new-instance v1, Lcom/google/android/gms/internal/zzzo;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzzo;-><init>(Lcom/google/android/gms/internal/zzzf;)V

    sget-object v2, Lcom/google/android/gms/internal/zzala;->zzdfe:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzakl;->zza(Lcom/google/android/gms/internal/zzakv;Lcom/google/android/gms/internal/zzaki;Ljava/util/concurrent/Executor;)V

    return-void
.end method
