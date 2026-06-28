.class final Lcom/google/android/gms/internal/zzanu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/android/gms/internal/zzanh;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$context:Landroid/content/Context;

.field private synthetic zzcbd:Lcom/google/android/gms/internal/zzcv;

.field private synthetic zzdln:Lcom/google/android/gms/internal/zzapa;

.field private synthetic zzdlo:Ljava/lang/String;

.field private synthetic zzdlp:Z

.field private synthetic zzdlq:Z

.field private synthetic zzdlr:Lcom/google/android/gms/internal/zzakd;

.field private synthetic zzdls:Lcom/google/android/gms/internal/zznu;

.field private synthetic zzdlt:Lcom/google/android/gms/ads/internal/zzbl;

.field private synthetic zzdlu:Lcom/google/android/gms/ads/internal/zzv;

.field private synthetic zzdlv:Lcom/google/android/gms/internal/zzis;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzanr;Landroid/content/Context;Lcom/google/android/gms/internal/zzapa;Ljava/lang/String;ZZLcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/internal/zzakd;Lcom/google/android/gms/internal/zznu;Lcom/google/android/gms/ads/internal/zzbl;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzis;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzanu;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzanu;->zzdln:Lcom/google/android/gms/internal/zzapa;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzanu;->zzdlo:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzanu;->zzdlp:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzanu;->zzdlq:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/zzanu;->zzcbd:Lcom/google/android/gms/internal/zzcv;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzanu;->zzdlr:Lcom/google/android/gms/internal/zzakd;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzanu;->zzdls:Lcom/google/android/gms/internal/zznu;

    iput-object p10, p0, Lcom/google/android/gms/internal/zzanu;->zzdlt:Lcom/google/android/gms/ads/internal/zzbl;

    iput-object p11, p0, Lcom/google/android/gms/internal/zzanu;->zzdlu:Lcom/google/android/gms/ads/internal/zzv;

    iput-object p12, p0, Lcom/google/android/gms/internal/zzanu;->zzdlv:Lcom/google/android/gms/internal/zzis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v11, Lcom/google/android/gms/internal/zzanw;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanu;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanu;->zzdln:Lcom/google/android/gms/internal/zzapa;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzanu;->zzdlo:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzanu;->zzdlp:Z

    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzanu;->zzdlq:Z

    iget-object v5, p0, Lcom/google/android/gms/internal/zzanu;->zzcbd:Lcom/google/android/gms/internal/zzcv;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzanu;->zzdlr:Lcom/google/android/gms/internal/zzakd;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzanu;->zzdls:Lcom/google/android/gms/internal/zznu;

    iget-object v8, p0, Lcom/google/android/gms/internal/zzanu;->zzdlt:Lcom/google/android/gms/ads/internal/zzbl;

    iget-object v9, p0, Lcom/google/android/gms/internal/zzanu;->zzdlu:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v10, p0, Lcom/google/android/gms/internal/zzanu;->zzdlv:Lcom/google/android/gms/internal/zzis;

    invoke-static/range {v0 .. v10}, Lcom/google/android/gms/internal/zzanx;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zzapa;Ljava/lang/String;ZZLcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/internal/zzakd;Lcom/google/android/gms/internal/zznu;Lcom/google/android/gms/ads/internal/zzbl;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzis;)Lcom/google/android/gms/internal/zzanx;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/google/android/gms/internal/zzanw;-><init>(Lcom/google/android/gms/internal/zzanh;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzek()Lcom/google/android/gms/internal/zzaht;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzanu;->zzdlq:Z

    invoke-virtual {v0, v11, v1}, Lcom/google/android/gms/internal/zzaht;->zzb(Lcom/google/android/gms/internal/zzanh;Z)Lcom/google/android/gms/internal/zzani;

    move-result-object v0

    invoke-interface {v11, v0}, Lcom/google/android/gms/internal/zzanh;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzek()Lcom/google/android/gms/internal/zzaht;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/zzaht;->zzk(Lcom/google/android/gms/internal/zzanh;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-interface {v11, v0}, Lcom/google/android/gms/internal/zzanh;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-object v11
.end method
