.class public Lcom/google/android/gms/internal/zzani;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# static fields
.field private static final zzdkm:[Ljava/lang/String;

.field private static final zzdkn:[Ljava/lang/String;


# instance fields
.field private final mLock:Ljava/lang/Object;

.field protected zzaoq:Lcom/google/android/gms/internal/zzafb;

.field private zzavo:Z

.field private zzbdd:Lcom/google/android/gms/internal/zzje;

.field private zzbwv:Lcom/google/android/gms/ads/internal/gmsg/zzb;

.field private zzbyc:Lcom/google/android/gms/ads/internal/gmsg/zzx;

.field private zzbye:Lcom/google/android/gms/ads/internal/zzw;

.field private zzbyf:Lcom/google/android/gms/internal/zzwr;

.field private zzbyi:Lcom/google/android/gms/ads/internal/overlay/zzq;

.field private zzbyj:Lcom/google/android/gms/ads/internal/overlay/zzn;

.field protected zzbyk:Lcom/google/android/gms/internal/zzanh;

.field private zzcgu:Lcom/google/android/gms/internal/zzxc;

.field private final zzckd:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/ads/internal/gmsg/zzt",
            "<-",
            "Lcom/google/android/gms/internal/zzanh;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private zzdko:Lcom/google/android/gms/internal/zzanm;

.field private zzdkp:Lcom/google/android/gms/internal/zzann;

.field private zzdkq:Lcom/google/android/gms/internal/zzano;

.field private zzdkr:Z

.field private zzdks:Z

.field private zzdkt:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private zzdku:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private zzdkv:Z

.field private final zzdkw:Lcom/google/android/gms/internal/zzxa;

.field private zzdkx:Lcom/google/android/gms/internal/zzanq;

.field private zzdky:Z

.field private zzdkz:Z

.field private zzdla:Z

.field private zzdlb:I

.field private zzdlc:Landroid/view/View$OnAttachStateChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "UNKNOWN"

    aput-object v1, v0, v3

    const-string v1, "HOST_LOOKUP"

    aput-object v1, v0, v4

    const-string v1, "UNSUPPORTED_AUTH_SCHEME"

    aput-object v1, v0, v5

    const-string v1, "AUTHENTICATION"

    aput-object v1, v0, v6

    const-string v1, "PROXY_AUTHENTICATION"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "CONNECT"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "IO"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "TIMEOUT"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "REDIRECT_LOOP"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "UNSUPPORTED_SCHEME"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "FAILED_SSL_HANDSHAKE"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "BAD_URL"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "FILE"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "FILE_NOT_FOUND"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "TOO_MANY_REQUESTS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/zzani;->zzdkm:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "NOT_YET_VALID"

    aput-object v1, v0, v3

    const-string v1, "EXPIRED"

    aput-object v1, v0, v4

    const-string v1, "ID_MISMATCH"

    aput-object v1, v0, v5

    const-string v1, "UNTRUSTED"

    aput-object v1, v0, v6

    const-string v1, "DATE_INVALID"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "INVALID"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/zzani;->zzdkn:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzanh;Z)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzxa;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzanh;->zzsu()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzmt;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzanh;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzmt;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/zzxa;-><init>(Lcom/google/android/gms/internal/zzanh;Landroid/content/Context;Lcom/google/android/gms/internal/zzmt;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzani;-><init>(Lcom/google/android/gms/internal/zzanh;ZLcom/google/android/gms/internal/zzxa;Lcom/google/android/gms/internal/zzwr;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzanh;ZLcom/google/android/gms/internal/zzxa;Lcom/google/android/gms/internal/zzwr;)V
    .locals 1

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzckd:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzani;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzani;->zzdkr:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzani;->zzavo:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzani;->zzdkw:Lcom/google/android/gms/internal/zzxa;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzbyf:Lcom/google/android/gms/internal/zzwr;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzani;)Lcom/google/android/gms/internal/zzano;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzdkq:Lcom/google/android/gms/internal/zzano;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzani;Lcom/google/android/gms/internal/zzano;)Lcom/google/android/gms/internal/zzano;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzdkq:Lcom/google/android/gms/internal/zzano;

    return-object v0
.end method

.method private final zza(Landroid/view/View;Lcom/google/android/gms/internal/zzafb;I)V
    .locals 4

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzafb;->zzol()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/zzafb;->zzq(Landroid/view/View;)V

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzafb;->zzol()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzahn;->zzdaw:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzanj;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzanj;-><init>(Lcom/google/android/gms/internal/zzani;Landroid/view/View;Lcom/google/android/gms/internal/zzafb;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private final zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzbyf:Lcom/google/android/gms/internal/zzwr;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzbyf:Lcom/google/android/gms/internal/zzwr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzwr;->zzmr()Z

    move-result v0

    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzeg()Lcom/google/android/gms/ads/internal/overlay/zzl;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzanh;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, p1, v1}, Lcom/google/android/gms/ads/internal/overlay/zzl;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzaoq:Lcom/google/android/gms/internal/zzafb;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzciv:Lcom/google/android/gms/ads/internal/overlay/zzc;

    if-eqz v1, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzciv:Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->url:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzani;->zzaoq:Lcom/google/android/gms/internal/zzafb;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzafb;->zzbv(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzani;Landroid/view/View;Lcom/google/android/gms/internal/zzafb;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzani;->zza(Landroid/view/View;Lcom/google/android/gms/internal/zzafb;I)V

    return-void
.end method

.method private final zzd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/zznh;->zzbmu:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "err"

    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "code"

    invoke-virtual {v4, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "host"

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzei()Lcom/google/android/gms/internal/zzahn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzanh;->zzsk()Lcom/google/android/gms/internal/zzakd;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/internal/zzakd;->zzcv:Ljava/lang/String;

    const-string v3, "gmob-apps"

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzahn;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method private final zzdb(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v9, 0x2710

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    move v0, v3

    :goto_0
    add-int/lit8 v4, v0, 0x1

    const/16 v0, 0x14

    if-gt v4, v0, :cond_7

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->openConnection(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, v9}, Ljava/net/URLConnection;->setReadTimeout(I)V

    instance-of v5, v0, Ljava/net/HttpURLConnection;

    if-nez v5, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid protocol."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzei()Lcom/google/android/gms/internal/zzahn;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzanh;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v7}, Lcom/google/android/gms/internal/zzanh;->zzsk()Lcom/google/android/gms/internal/zzakd;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/gms/internal/zzakd;->zzcv:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v3, v0}, Lcom/google/android/gms/internal/zzahn;->zza(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    new-instance v5, Lcom/google/android/gms/internal/zzajv;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzajv;-><init>()V

    invoke-virtual {v5, v0, v2}, Lcom/google/android/gms/internal/zzajv;->zza(Ljava/net/HttpURLConnection;[B)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzei()Lcom/google/android/gms/internal/zzahn;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/internal/zzahn;->zzci(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzei()Lcom/google/android/gms/internal/zzahn;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/internal/zzahn;->zzcj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v0, v6}, Lcom/google/android/gms/internal/zzajv;->zza(Ljava/net/HttpURLConnection;I)V

    const/16 v5, 0x12c

    if-lt v6, v5, :cond_6

    const/16 v5, 0x190

    if-ge v6, v5, :cond_6

    const-string v5, "Location"

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing Location header in redirect"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v1, v6}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v0, "Protocol is null"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->zzcu(Ljava/lang/String;)V

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_2
    const-string v7, "http"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "https"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v3, "Unsupported scheme: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->zzcu(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v7, "Redirecting to "

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v7, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-static {v1}, Lcom/google/android/gms/internal/zzagf;->zzbx(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move v0, v4

    move-object v1, v5

    goto/16 :goto_0

    :cond_5
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    new-instance v1, Landroid/webkit/WebResourceResponse;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v7, v8, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    move-object v0, v1

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/io/IOException;

    const/16 v1, 0x20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Too many redirects (20)"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzh(Landroid/net/Uri;)V
    .locals 7

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzckd:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzei()Lcom/google/android/gms/internal/zzahn;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzahn;->zzf(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v3

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzagf;->zzae(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Received GMSG: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/zzagf;->v(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "  "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ": "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzagf;->v(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/gmsg/zzt;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/ads/internal/gmsg/zzt;->zza(Ljava/lang/Object;Ljava/util/Map;)V

    goto :goto_2

    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "No GMSG handler found for GMSG: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->v(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private final zzts()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzdlc:Landroid/view/View$OnAttachStateChangeListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    throw v0

    :cond_1
    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzani;->zzdlc:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0
.end method

.method private final zztx()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzdko:Lcom/google/android/gms/internal/zzanm;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzani;->zzdkz:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzani;->zzdlb:I

    if-lez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzani;->zzdla:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzani;->zzdko:Lcom/google/android/gms/internal/zzanm;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzani;->zzdla:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/zzanm;->zza(Lcom/google/android/gms/internal/zzanh;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzdko:Lcom/google/android/gms/internal/zzanm;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->zzti()V

    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    const-string v1, "Loading resource: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->v(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "gmsg"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "mobileads.google.com"

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzani;->zzh(Landroid/net/Uri;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzani;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzani;->zzdky:Z

    if-eqz v0, :cond_0

    const-string v0, "Blank page loaded, 1..."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->zztd()V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzani;->zzdkz:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzdkp:Lcom/google/android/gms/internal/zzann;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzdkp:Lcom/google/android/gms/internal/zzann;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzann;->zzg(Lcom/google/android/gms/internal/zzanh;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzdkp:Lcom/google/android/gms/internal/zzann;

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzani;->zztx()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-gez p2, :cond_0

    neg-int v0, p2

    add-int/lit8 v0, v0, -0x1

    sget-object v1, Lcom/google/android/gms/internal/zzani;->zzdkm:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzani;->zzdkm:[Ljava/lang/String;

    neg-int v1, p2

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzanh;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "http_err"

    invoke-direct {p0, v1, v2, v0, p4}, Lcom/google/android/gms/internal/zzani;->zzd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 4

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v0

    if-ltz v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/zzani;->zzdkn:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/zzani;->zzdkn:[Ljava/lang/String;

    aget-object v0, v1, v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzanh;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ssl_err"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzek()Lcom/google/android/gms/internal/zzaht;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/google/android/gms/internal/zzaht;->zza(Landroid/net/http/SslError;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/google/android/gms/internal/zzani;->zzd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void

    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final reset()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzaoq:Lcom/google/android/gms/internal/zzafb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzaoq:Lcom/google/android/gms/internal/zzafb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzafb;->zzon()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzani;->zzaoq:Lcom/google/android/gms/internal/zzafb;

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzani;->zzts()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzani;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzckd:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzbdd:Lcom/google/android/gms/internal/zzje;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzbyj:Lcom/google/android/gms/ads/internal/overlay/zzn;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzdko:Lcom/google/android/gms/internal/zzanm;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzdkp:Lcom/google/android/gms/internal/zzann;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzbwv:Lcom/google/android/gms/ads/internal/gmsg/zzb;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzani;->zzdkr:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzani;->zzavo:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzani;->zzdks:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzani;->zzdkv:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzbyi:Lcom/google/android/gms/ads/internal/overlay/zzq;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzdkq:Lcom/google/android/gms/internal/zzano;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzbyf:Lcom/google/android/gms/internal/zzwr;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzbyf:Lcom/google/android/gms/internal/zzwr;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzwr;->zzl(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzbyf:Lcom/google/android/gms/internal/zzwr;

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/zzafi;->zzb(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzani;->zzdb(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/zzil;->zzab(Ljava/lang/String;)Lcom/google/android/gms/internal/zzil;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzen()Lcom/google/android/gms/internal/zzid;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzid;->zza(Lcom/google/android/gms/internal/zzil;)Lcom/google/android/gms/internal/zzii;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzii;->zzhf()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzii;->zzhg()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v3, v4, v2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzem()Lcom/google/android/gms/internal/zzaft;

    move-result-object v2

    const-string v3, "AdWebViewClient.interceptRequest"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/zzaft;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/zzajv;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/zznh;->zzbmj:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzani;->zzdb(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x59 -> :sswitch_0
        0x5a -> :sswitch_0
        0x5b -> :sswitch_0
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
        0x80 -> :sswitch_0
        0x81 -> :sswitch_0
        0x82 -> :sswitch_0
        0xde -> :sswitch_0
    .end sparse-switch
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v3, 0x0

    const-string v1, "AdWebView shouldOverrideUrlLoading: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->v(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v0, "gmsg"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "mobileads.google.com"

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzani;->zzh(Landroid/net/Uri;)V

    :goto_1
    move v0, v8

    :goto_2
    return v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzani;->zzdkr:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-ne p1, v0, :cond_6

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "http"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "https"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    move v0, v8

    :goto_3
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzbdd:Lcom/google/android/gms/internal/zzje;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/android/gms/internal/zznh;->zzbkj:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzbdd:Lcom/google/android/gms/internal/zzje;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzje;->onAdClicked()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzaoq:Lcom/google/android/gms/internal/zzafb;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzaoq:Lcom/google/android/gms/internal/zzafb;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/zzafb;->zzbv(Ljava/lang/String;)V

    :cond_3
    iput-object v3, p0, Lcom/google/android/gms/internal/zzani;->zzbdd:Lcom/google/android/gms/internal/zzje;

    :cond_4
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->willNotDraw()Z

    move-result v0

    if-nez v0, :cond_b

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->zztb()Lcom/google/android/gms/internal/zzcv;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzcv;->zzb(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    if-nez v0, :cond_8

    throw v3
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzcw; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "Unable to append parameter to URL: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->zzcu(Ljava/lang/String;)V

    move-object v2, v1

    :goto_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzbye:Lcom/google/android/gms/ads/internal/zzw;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzbye:Lcom/google/android/gms/ads/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzw;->zzda()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_7
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzc;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzani;->zza(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    goto/16 :goto_1

    :cond_8
    :try_start_1
    check-cast v0, Landroid/view/View;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzanh;->zzsi()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v2, v1, v4, v0, v5}, Lcom/google/android/gms/internal/zzcv;->zza(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzcw; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_6
    move-object v2, v0

    goto :goto_5

    :cond_9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzbye:Lcom/google/android/gms/ads/internal/zzw;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/internal/zzw;->zzt(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    const-string v1, "AdWebView unable to handle URL: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->zzcu(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :cond_d
    move-object v0, v1

    goto :goto_6
.end method

.method public final zza(IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzdkw:Lcom/google/android/gms/internal/zzxa;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzxa;->zzc(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzbyf:Lcom/google/android/gms/internal/zzwr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzbyf:Lcom/google/android/gms/internal/zzwr;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzwr;->zza(IIZ)V

    :cond_0
    return-void
.end method

.method public final zza(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzani;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzani;->zzdks:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->zzth()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzani;->zzdkt:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzani;->zzdku:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzc;)V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->zztc()Z

    move-result v1

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzanh;->zzsx()Lcom/google/android/gms/internal/zzapa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzapa;->zzuh()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v3

    :goto_0
    if-eqz v1, :cond_1

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/zzani;->zzbyi:Lcom/google/android/gms/ads/internal/overlay/zzq;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzanh;->zzsk()Lcom/google/android/gms/internal/zzakd;

    move-result-object v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/internal/zzje;Lcom/google/android/gms/ads/internal/overlay/zzn;Lcom/google/android/gms/ads/internal/overlay/zzq;Lcom/google/android/gms/internal/zzakd;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzani;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzani;->zzbdd:Lcom/google/android/gms/internal/zzje;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/zzani;->zzbyj:Lcom/google/android/gms/ads/internal/overlay/zzn;

    goto :goto_1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzanm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzani;->zzdko:Lcom/google/android/gms/internal/zzanm;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzann;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzani;->zzdkp:Lcom/google/android/gms/internal/zzann;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzano;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzani;->zzdkq:Lcom/google/android/gms/internal/zzano;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzanq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzani;->zzdkx:Lcom/google/android/gms/internal/zzanq;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzje;Lcom/google/android/gms/ads/internal/overlay/zzn;Lcom/google/android/gms/ads/internal/gmsg/zzb;Lcom/google/android/gms/ads/internal/overlay/zzq;ZLcom/google/android/gms/ads/internal/gmsg/zzx;Lcom/google/android/gms/ads/internal/zzw;Lcom/google/android/gms/internal/zzxc;Lcom/google/android/gms/internal/zzafb;)V
    .locals 12

    if-nez p7, :cond_2

    new-instance v9, Lcom/google/android/gms/ads/internal/zzw;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzanh;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p9

    invoke-direct {v9, v1, v0, v2}, Lcom/google/android/gms/ads/internal/zzw;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzafb;Lcom/google/android/gms/internal/zzaaz;)V

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/zzwr;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    move-object/from16 v0, p8

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/zzwr;-><init>(Lcom/google/android/gms/internal/zzanh;Lcom/google/android/gms/internal/zzxc;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzani;->zzbyf:Lcom/google/android/gms/internal/zzwr;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzaoq:Lcom/google/android/gms/internal/zzafb;

    const-string v1, "/appEvent"

    new-instance v2, Lcom/google/android/gms/ads/internal/gmsg/zza;

    invoke-direct {v2, p3}, Lcom/google/android/gms/ads/internal/gmsg/zza;-><init>(Lcom/google/android/gms/ads/internal/gmsg/zzb;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/zzani;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v1, "/backButton"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/zzd;->zzbxg:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/zzani;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v1, "/refresh"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/zzd;->zzbxh:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/zzani;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v1, "/canOpenURLs"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/zzd;->zzbwx:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/zzani;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v1, "/canOpenIntents"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/zzd;->zzbwy:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/zzani;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v1, "/click"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/zzd;->zzbwz:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/zzani;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v1, "/close"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/zzd;->zzbxa:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/zzani;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v1, "/customClose"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/zzd;->zzbxb:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/zzani;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v1, "/instrument"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/zzd;->zzbxk:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/zzani;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v1, "/delayPageLoaded"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/zzd;->zzbxm:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/zzani;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v1, "/delayPageClosed"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/zzani;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v1, "/getLocationInfo"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/zzd;->zzbxo:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/zzani;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v1, "/httpTrack"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/zzd;->zzbxc:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/zzani;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v1, "/log"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/zzd;->zzbxd:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/zzani;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v1, "/mraid"

    new-instance v2, Lcom/google/android/gms/ads/internal/gmsg/zzaa;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzani;->zzbyf:Lcom/google/android/gms/internal/zzwr;

    invoke-direct {v2, v9, v3}, Lcom/google/android/gms/ads/internal/gmsg/zzaa;-><init>(Lcom/google/android/gms/ads/internal/zzw;Lcom/google/android/gms/internal/zzwr;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/zzani;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v1, "/mraidLoaded"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzani;->zzdkw:Lcom/google/android/gms/internal/zzxa;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/zzani;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v11, "/open"

    new-instance v1, Lcom/google/android/gms/ads/internal/gmsg/zzab;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzanh;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzanh;->zzsk()Lcom/google/android/gms/internal/zzakd;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzanh;->zztb()Lcom/google/android/gms/internal/zzcv;

    move-result-object v4

    iget-object v10, p0, Lcom/google/android/gms/internal/zzani;->zzbyf:Lcom/google/android/gms/internal/zzwr;

    move-object/from16 v5, p4

    move-object v6, p1

    move-object v7, p3

    move-object v8, p2

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/ads/internal/gmsg/zzab;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;Lcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/ads/internal/overlay/zzq;Lcom/google/android/gms/internal/zzje;Lcom/google/android/gms/ads/internal/gmsg/zzb;Lcom/google/android/gms/ads/internal/overlay/zzn;Lcom/google/android/gms/ads/internal/zzw;Lcom/google/android/gms/internal/zzwr;)V

    invoke-virtual {p0, v11, v1}, Lcom/google/android/gms/internal/zzani;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v1, "/precache"

    new-instance v2, Lcom/google/android/gms/internal/zzane;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzane;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/zzani;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v1, "/touch"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/zzd;->zzbxf:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/zzani;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v1, "/video"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/zzd;->zzbxi:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/zzani;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v1, "/videoMeta"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/zzd;->zzbxj:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/zzani;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzfd()Lcom/google/android/gms/internal/zzaff;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzanh;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzaff;->zzq(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "/logScionEvent"

    new-instance v2, Lcom/google/android/gms/ads/internal/gmsg/zzz;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzanh;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/ads/internal/gmsg/zzz;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/zzani;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    :cond_0
    if-eqz p6, :cond_1

    const-string v1, "/setInterstitialProperties"

    new-instance v2, Lcom/google/android/gms/ads/internal/gmsg/zzw;

    move-object/from16 v0, p6

    invoke-direct {v2, v0}, Lcom/google/android/gms/ads/internal/gmsg/zzw;-><init>(Lcom/google/android/gms/ads/internal/gmsg/zzx;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/zzani;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/zzani;->zzbdd:Lcom/google/android/gms/internal/zzje;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzani;->zzbyj:Lcom/google/android/gms/ads/internal/overlay/zzn;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzani;->zzbwv:Lcom/google/android/gms/ads/internal/gmsg/zzb;

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzbyi:Lcom/google/android/gms/ads/internal/overlay/zzq;

    iput-object v9, p0, Lcom/google/android/gms/internal/zzani;->zzbye:Lcom/google/android/gms/ads/internal/zzw;

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzcgu:Lcom/google/android/gms/internal/zzxc;

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzbyc:Lcom/google/android/gms/ads/internal/gmsg/zzx;

    move/from16 v0, p5

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzani;->zzdkr:Z

    return-void

    :cond_2
    move-object/from16 v9, p7

    goto/16 :goto_0
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/gmsg/zzt",
            "<-",
            "Lcom/google/android/gms/internal/zzanh;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzani;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzckd:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzani;->zzckd:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/common/util/zzr;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/util/zzr",
            "<",
            "Lcom/google/android/gms/ads/internal/gmsg/zzt",
            "<-",
            "Lcom/google/android/gms/internal/zzanh;",
            ">;>;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/gms/internal/zzani;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzckd:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-interface {p2, v1}, Lcom/google/android/gms/common/util/zzr;->apply(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    invoke-interface {v0, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final zza(ZI)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->zztc()Z

    move-result v1

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzanh;->zzsx()Lcom/google/android/gms/internal/zzapa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzapa;->zzuh()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzani;->zzbyj:Lcom/google/android/gms/ads/internal/overlay/zzn;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzani;->zzbyi:Lcom/google/android/gms/ads/internal/overlay/zzq;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzanh;->zzsk()Lcom/google/android/gms/internal/zzakd;

    move-result-object v7

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/zzje;Lcom/google/android/gms/ads/internal/overlay/zzn;Lcom/google/android/gms/ads/internal/overlay/zzq;Lcom/google/android/gms/internal/zzanh;ZILcom/google/android/gms/internal/zzakd;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzani;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzani;->zzbdd:Lcom/google/android/gms/internal/zzje;

    goto :goto_0
.end method

.method public final zza(ZILjava/lang/String;)V
    .locals 10

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->zztc()Z

    move-result v3

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzanh;->zzsx()Lcom/google/android/gms/internal/zzapa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzapa;->zzuh()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v2

    :goto_0
    if-eqz v3, :cond_1

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/zzani;->zzbwv:Lcom/google/android/gms/ads/internal/gmsg/zzb;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzani;->zzbyi:Lcom/google/android/gms/ads/internal/overlay/zzq;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzanh;->zzsk()Lcom/google/android/gms/internal/zzakd;

    move-result-object v9

    move v6, p1

    move v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/zzje;Lcom/google/android/gms/ads/internal/overlay/zzn;Lcom/google/android/gms/ads/internal/gmsg/zzb;Lcom/google/android/gms/ads/internal/overlay/zzq;Lcom/google/android/gms/internal/zzanh;ZILjava/lang/String;Lcom/google/android/gms/internal/zzakd;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzani;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzani;->zzbdd:Lcom/google/android/gms/internal/zzje;

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/zzanp;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzani;->zzbyj:Lcom/google/android/gms/ads/internal/overlay/zzn;

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/zzanp;-><init>(Lcom/google/android/gms/internal/zzanh;Lcom/google/android/gms/ads/internal/overlay/zzn;)V

    goto :goto_1
.end method

.method public final zza(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 11

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->zztc()Z

    move-result v3

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzanh;->zzsx()Lcom/google/android/gms/internal/zzapa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzapa;->zzuh()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v2

    :goto_0
    if-eqz v3, :cond_1

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/zzani;->zzbwv:Lcom/google/android/gms/ads/internal/gmsg/zzb;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzani;->zzbyi:Lcom/google/android/gms/ads/internal/overlay/zzq;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzanh;->zzsk()Lcom/google/android/gms/internal/zzakd;

    move-result-object v10

    move v6, p1

    move v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/zzje;Lcom/google/android/gms/ads/internal/overlay/zzn;Lcom/google/android/gms/ads/internal/gmsg/zzb;Lcom/google/android/gms/ads/internal/overlay/zzq;Lcom/google/android/gms/internal/zzanh;ZILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzakd;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzani;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzani;->zzbdd:Lcom/google/android/gms/internal/zzje;

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/zzanp;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzani;->zzbyj:Lcom/google/android/gms/ads/internal/overlay/zzn;

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/zzanp;-><init>(Lcom/google/android/gms/internal/zzanh;Lcom/google/android/gms/ads/internal/overlay/zzn;)V

    goto :goto_1
.end method

.method public final zzac(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzani;->zzdkr:Z

    return-void
.end method

.method public final zzb(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzbyf:Lcom/google/android/gms/internal/zzwr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzbyf:Lcom/google/android/gms/internal/zzwr;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzwr;->zzb(II)V

    :cond_0
    return-void
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/gmsg/zzt",
            "<-",
            "Lcom/google/android/gms/internal/zzanh;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzani;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzckd:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzfv()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzani;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzani;->zzavo:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzmv()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzani;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzani;->zzdkr:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzani;->zzavo:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzei()Lcom/google/android/gms/internal/zzahn;

    new-instance v0, Lcom/google/android/gms/internal/zzanl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzanl;-><init>(Lcom/google/android/gms/internal/zzani;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzahn;->runOnUiThread(Ljava/lang/Runnable;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zztm()Lcom/google/android/gms/ads/internal/zzw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzbye:Lcom/google/android/gms/ads/internal/zzw;

    return-object v0
.end method

.method public final zztn()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzani;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzani;->zzdks:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzto()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzani;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzdkt:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zztp()Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzani;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzdku:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zztq()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzani;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzani;->zzdkv:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zztr()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzani;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "Loading blank page in WebView, 2..."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->v(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzani;->zzdky:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    const-string v2, "about:blank"

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzanh;->zzcz(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zztt()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzaoq:Lcom/google/android/gms/internal/zzafb;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzanh;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xa

    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/gms/internal/zzani;->zza(Landroid/view/View;Lcom/google/android/gms/internal/zzafb;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzani;->zzts()V

    new-instance v1, Lcom/google/android/gms/internal/zzank;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzank;-><init>(Lcom/google/android/gms/internal/zzani;Lcom/google/android/gms/internal/zzafb;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzani;->zzdlc:Landroid/view/View$OnAttachStateChangeListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    throw v0

    :cond_2
    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzani;->zzdlc:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0
.end method

.method public final zztu()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzani;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzani;->zzdkv:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/google/android/gms/internal/zzani;->zzdlb:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzani;->zzdlb:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzani;->zztx()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zztv()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzani;->zzdlb:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzani;->zzdlb:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzani;->zztx()V

    return-void
.end method

.method public final zztw()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzani;->zzdla:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzani;->zztx()V

    return-void
.end method

.method public final zzty()Lcom/google/android/gms/internal/zzanq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzani;->zzdkx:Lcom/google/android/gms/internal/zzanq;

    return-object v0
.end method
