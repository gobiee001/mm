.class Lcom/adcolony/sdk/bb$3;
.super Lcom/adcolony/sdk/bb$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bb;->a(ZLcom/adcolony/sdk/af;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/bb;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bb;)V
    .locals 1

    .prologue
    .line 270
    iput-object p1, p0, Lcom/adcolony/sdk/bb$3;->a:Lcom/adcolony/sdk/bb;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/adcolony/sdk/bb$a;-><init>(Lcom/adcolony/sdk/bb;Lcom/adcolony/sdk/bb$1;)V

    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;

    .prologue
    const/4 v1, 0x0

    .line 273
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mraid.js"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v0, p0, Lcom/adcolony/sdk/bb$3;->a:Lcom/adcolony/sdk/bb;

    invoke-static {v0}, Lcom/adcolony/sdk/bb;->e(Lcom/adcolony/sdk/bb;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 276
    iget-object v0, p0, Lcom/adcolony/sdk/bb$3;->a:Lcom/adcolony/sdk/bb;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/adcolony/sdk/bb;->a(Lcom/adcolony/sdk/bb;Z)Z

    .line 277
    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string v3, "text/javascript"

    const-string v4, "UTF-8"

    invoke-direct {v0, v3, v4, v2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :goto_0
    return-object v0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    sget-object v0, Lcom/adcolony/sdk/aa;->h:Lcom/adcolony/sdk/aa;

    const-string v2, "UTF-8 not supported."

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    move-object v0, v1

    .line 281
    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 284
    goto :goto_0
.end method
