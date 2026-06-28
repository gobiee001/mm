.class Lcom/adcolony/sdk/bb;
.super Landroid/webkit/WebView;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/ai;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adcolony/sdk/bb$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Lorg/json/JSONArray;

.field private u:Lorg/json/JSONObject;

.field private v:Lcom/adcolony/sdk/c;

.field private w:Lcom/adcolony/sdk/af;


# direct methods
.method constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/adcolony/sdk/bb;->c:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/adcolony/sdk/bb;->d:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/adcolony/sdk/bb;->f:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/adcolony/sdk/bb;->g:Ljava/lang/String;

    .line 61
    invoke-static {}, Lcom/adcolony/sdk/y;->b()Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/bb;->t:Lorg/json/JSONArray;

    .line 62
    invoke-static {}, Lcom/adcolony/sdk/y;->a()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/bb;->u:Lorg/json/JSONObject;

    .line 91
    iput p2, p0, Lcom/adcolony/sdk/bb;->m:I

    .line 92
    iput-boolean p3, p0, Lcom/adcolony/sdk/bb;->p:Z

    .line 93
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/adcolony/sdk/af;IILcom/adcolony/sdk/c;)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/adcolony/sdk/bb;->c:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/adcolony/sdk/bb;->d:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/adcolony/sdk/bb;->f:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/adcolony/sdk/bb;->g:Ljava/lang/String;

    .line 61
    invoke-static {}, Lcom/adcolony/sdk/y;->b()Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/bb;->t:Lorg/json/JSONArray;

    .line 62
    invoke-static {}, Lcom/adcolony/sdk/y;->a()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/bb;->u:Lorg/json/JSONObject;

    .line 77
    iput-object p2, p0, Lcom/adcolony/sdk/bb;->w:Lcom/adcolony/sdk/af;

    .line 78
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/adcolony/sdk/bb;->a(Lcom/adcolony/sdk/af;IILcom/adcolony/sdk/c;)V

    .line 79
    invoke-virtual {p0}, Lcom/adcolony/sdk/bb;->d()V

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/bb;)Lcom/adcolony/sdk/c;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/adcolony/sdk/bb;->v:Lcom/adcolony/sdk/c;

    return-object v0
.end method

.method static synthetic a(Lcom/adcolony/sdk/bb;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/adcolony/sdk/bb;->t:Lorg/json/JSONArray;

    return-object p1
.end method

.method static synthetic a(Lcom/adcolony/sdk/bb;Z)Z
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/adcolony/sdk/bb;->r:Z

    return p1
.end method

.method static synthetic b(Lcom/adcolony/sdk/bb;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/adcolony/sdk/bb;->h:I

    return v0
.end method

.method static synthetic b(Lcom/adcolony/sdk/bb;Z)Z
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/adcolony/sdk/bb;->q:Z

    return p1
.end method

.method static synthetic c(Lcom/adcolony/sdk/bb;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/adcolony/sdk/bb;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/adcolony/sdk/bb;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/adcolony/sdk/bb;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/adcolony/sdk/bb;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/adcolony/sdk/bb;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/adcolony/sdk/bb;)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/adcolony/sdk/bb;->t:Lorg/json/JSONArray;

    return-object v0
.end method

.method static synthetic g(Lcom/adcolony/sdk/bb;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/adcolony/sdk/bb;->n:Z

    return v0
.end method

.method static synthetic h(Lcom/adcolony/sdk/bb;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/adcolony/sdk/bb;->m:I

    return v0
.end method

.method static synthetic i(Lcom/adcolony/sdk/bb;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/adcolony/sdk/bb;->o:Z

    return v0
.end method

.method static synthetic j(Lcom/adcolony/sdk/bb;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/adcolony/sdk/bb;->q:Z

    return v0
.end method

.method static synthetic k(Lcom/adcolony/sdk/bb;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/adcolony/sdk/bb;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/adcolony/sdk/bb;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/adcolony/sdk/bb;->r:Z

    return v0
.end method

.method static synthetic m(Lcom/adcolony/sdk/bb;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/adcolony/sdk/bb;->u:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic n(Lcom/adcolony/sdk/bb;)Lcom/adcolony/sdk/af;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/adcolony/sdk/bb;->w:Lcom/adcolony/sdk/af;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/adcolony/sdk/bb;->m:I

    return v0
.end method

.method a(Lcom/adcolony/sdk/af;IILcom/adcolony/sdk/c;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 430
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v2

    .line 431
    const-string v0, "url"

    invoke-static {v2, v0}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/bb;->a:Ljava/lang/String;

    .line 432
    iget-object v0, p0, Lcom/adcolony/sdk/bb;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    const-string v0, "data"

    invoke-static {v2, v0}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/bb;->a:Ljava/lang/String;

    .line 435
    :cond_0
    const-string v0, "base_url"

    invoke-static {v2, v0}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/bb;->d:Ljava/lang/String;

    .line 436
    const-string v0, "custom_js"

    invoke-static {v2, v0}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/bb;->c:Ljava/lang/String;

    .line 437
    const-string v0, "ad_session_id"

    invoke-static {v2, v0}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/bb;->e:Ljava/lang/String;

    .line 438
    const-string v0, "info"

    invoke-static {v2, v0}, Lcom/adcolony/sdk/y;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/bb;->u:Lorg/json/JSONObject;

    .line 439
    const-string v0, "mraid_filepath"

    invoke-static {v2, v0}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/bb;->g:Ljava/lang/String;

    .line 442
    iget-boolean v0, p0, Lcom/adcolony/sdk/bb;->p:Z

    if-nez v0, :cond_1

    .line 444
    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/l;->j()Lcom/adcolony/sdk/t;

    move-result-object v0

    iget-object v3, p0, Lcom/adcolony/sdk/bb;->g:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/adcolony/sdk/t;->a(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/bb;->f:Ljava/lang/String;

    .line 445
    const-string v3, "bridge.os_name\\s*=\\s*\"\"\\s*;"

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bridge.os_name = \"\";\nvar ADC_DEVICE_INFO = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/adcolony/sdk/bb;->u:Lorg/json/JSONObject;

    instance-of v5, v0, Lorg/json/JSONObject;

    if-nez v5, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ";\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    iget-object v4, p0, Lcom/adcolony/sdk/bb;->f:Ljava/lang/String;

    invoke-virtual {v4, v3, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/bb;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :cond_1
    :goto_1
    iput p2, p0, Lcom/adcolony/sdk/bb;->h:I

    .line 457
    iput-object p4, p0, Lcom/adcolony/sdk/bb;->v:Lcom/adcolony/sdk/c;

    .line 458
    if-ltz p3, :cond_4

    .line 459
    iput p3, p0, Lcom/adcolony/sdk/bb;->m:I

    .line 463
    :goto_2
    const-string v0, "width"

    invoke-static {v2, v0}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/bb;->k:I

    .line 464
    const-string v0, "height"

    invoke-static {v2, v0}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/bb;->l:I

    .line 465
    const-string v0, "x"

    invoke-static {v2, v0}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/bb;->i:I

    .line 466
    const-string v0, "y"

    invoke-static {v2, v0}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/bb;->j:I

    .line 467
    const-string v0, "enable_messages"

    invoke-static {v2, v0}, Lcom/adcolony/sdk/y;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/adcolony/sdk/bb;->o:Z

    if-eqz v0, :cond_5

    :cond_2
    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/adcolony/sdk/bb;->n:Z

    .line 468
    return-void

    .line 446
    :cond_3
    :try_start_1
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 449
    :catch_0
    move-exception v0

    .line 450
    sget-object v0, Lcom/adcolony/sdk/aa;->g:Lcom/adcolony/sdk/aa;

    const-string v3, "Could not load MRAID from filepath: "

    invoke-virtual {v0, v3}, Lcom/adcolony/sdk/aa;->a(Ljava/lang/String;)Lcom/adcolony/sdk/aa;

    move-result-object v0

    iget-object v3, p0, Lcom/adcolony/sdk/bb;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 451
    invoke-static {}, Lcom/adcolony/sdk/y;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 452
    const-string v3, "id"

    iget-object v4, p0, Lcom/adcolony/sdk/bb;->e:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 453
    new-instance v3, Lcom/adcolony/sdk/af;

    const-string v4, "AdSession.on_error"

    invoke-virtual {p4}, Lcom/adcolony/sdk/c;->c()I

    move-result v5

    invoke-direct {v3, v4, v5, v0}, Lcom/adcolony/sdk/af;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v3}, Lcom/adcolony/sdk/af;->b()V

    goto :goto_1

    .line 461
    :cond_4
    invoke-virtual {p0}, Lcom/adcolony/sdk/bb;->e()V

    goto :goto_2

    :cond_5
    move v0, v1

    .line 467
    goto :goto_3
.end method

.method a(Lcom/adcolony/sdk/af;ILcom/adcolony/sdk/c;)V
    .locals 1

    .prologue
    .line 417
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/adcolony/sdk/bb;->a(Lcom/adcolony/sdk/af;IILcom/adcolony/sdk/c;)V

    .line 418
    invoke-virtual {p0}, Lcom/adcolony/sdk/bb;->f()V

    .line 419
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/adcolony/sdk/bb;->s:Z

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lcom/adcolony/sdk/aa;->b:Lcom/adcolony/sdk/aa;

    const-string v1, "Ignoring call to execute_js as WebView has been destroyed."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 113
    :goto_0
    return-void

    .line 108
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/adcolony/sdk/bb;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 111
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/bb;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 524
    iget-object v1, p0, Lcom/adcolony/sdk/bb;->t:Lorg/json/JSONArray;

    monitor-enter v1

    .line 525
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bb;->t:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 526
    monitor-exit v1

    .line 527
    return-void

    .line 526
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 675
    iput-boolean p1, p0, Lcom/adcolony/sdk/bb;->s:Z

    .line 676
    return-void
.end method

.method a(ZLcom/adcolony/sdk/af;)V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 157
    iget-object v0, p0, Lcom/adcolony/sdk/bb;->w:Lcom/adcolony/sdk/af;

    if-nez v0, :cond_0

    .line 158
    iput-object p2, p0, Lcom/adcolony/sdk/bb;->w:Lcom/adcolony/sdk/af;

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/bb;->w:Lcom/adcolony/sdk/af;

    invoke-virtual {v0}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v3

    .line 161
    iput-boolean p1, p0, Lcom/adcolony/sdk/bb;->o:Z

    .line 162
    const-string v0, "is_display_module"

    invoke-static {v3, v0}, Lcom/adcolony/sdk/y;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adcolony/sdk/bb;->p:Z

    .line 163
    if-eqz p1, :cond_1

    .line 164
    const-string v0, "filepath"

    invoke-static {v3, v0}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    iput-object v0, p0, Lcom/adcolony/sdk/bb;->b:Ljava/lang/String;

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/bb;->a:Ljava/lang/String;

    .line 174
    const-string v0, "info"

    invoke-static {v3, v0}, Lcom/adcolony/sdk/y;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/bb;->u:Lorg/json/JSONObject;

    .line 175
    iput-boolean v5, p0, Lcom/adcolony/sdk/bb;->n:Z

    .line 178
    :cond_1
    invoke-virtual {p0, v5}, Lcom/adcolony/sdk/bb;->setFocusable(Z)V

    .line 179
    invoke-virtual {p0, v6}, Lcom/adcolony/sdk/bb;->setHorizontalScrollBarEnabled(Z)V

    .line 180
    invoke-virtual {p0, v6}, Lcom/adcolony/sdk/bb;->setVerticalScrollBarEnabled(Z)V

    .line 181
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 182
    invoke-static {v5}, Lcom/adcolony/sdk/bb;->setWebContentsDebuggingEnabled(Z)V

    .line 186
    :cond_2
    new-instance v0, Lcom/adcolony/sdk/bb$1;

    invoke-direct {v0, p0, v3}, Lcom/adcolony/sdk/bb$1;-><init>(Lcom/adcolony/sdk/bb;Lorg/json/JSONObject;)V

    .line 215
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/bb;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 218
    invoke-virtual {p0}, Lcom/adcolony/sdk/bb;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 219
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 220
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 221
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 222
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 224
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_3

    .line 225
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 228
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_4

    .line 229
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 230
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 236
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_9

    .line 237
    new-instance v0, Lcom/adcolony/sdk/bb$2;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/bb$2;-><init>(Lcom/adcolony/sdk/bb;)V

    .line 292
    :goto_0
    new-instance v1, Lcom/adcolony/sdk/bb$4;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/bb$4;-><init>(Lcom/adcolony/sdk/bb;)V

    const-string v2, "NativeLayer"

    invoke-virtual {p0, v1, v2}, Lcom/adcolony/sdk/bb;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/bb;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 308
    iget-boolean v0, p0, Lcom/adcolony/sdk/bb;->p:Z

    if-eqz v0, :cond_c

    .line 309
    const-string v2, ""

    .line 313
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/adcolony/sdk/bb;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 320
    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 322
    :goto_1
    const/4 v6, 0x0

    const/16 v7, 0x400

    invoke-virtual {v0, v5, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-ltz v6, :cond_b

    .line 326
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "ISO-8859-1"

    invoke-direct {v7, v5, v8, v6, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 336
    :catch_0
    move-exception v0

    .line 337
    sget-object v1, Lcom/adcolony/sdk/aa;->g:Lcom/adcolony/sdk/aa;

    const-string v3, "Failed to find or open display module at URL: "

    invoke-virtual {v1, v3}, Lcom/adcolony/sdk/aa;->a(Ljava/lang/String;)Lcom/adcolony/sdk/aa;

    move-result-object v1

    iget-object v3, p0, Lcom/adcolony/sdk/bb;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/adcolony/sdk/aa;->a(Ljava/lang/String;)Lcom/adcolony/sdk/aa;

    move-result-object v1

    const-string v3, " with error: "

    invoke-virtual {v1, v3}, Lcom/adcolony/sdk/aa;->a(Ljava/lang/String;)Lcom/adcolony/sdk/aa;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 340
    :goto_2
    iget-object v1, p0, Lcom/adcolony/sdk/bb;->a:Ljava/lang/String;

    const-string v3, "text/html"

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/adcolony/sdk/bb;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :goto_3
    if-nez p1, :cond_5

    .line 349
    invoke-virtual {p0}, Lcom/adcolony/sdk/bb;->e()V

    .line 350
    invoke-virtual {p0}, Lcom/adcolony/sdk/bb;->f()V

    .line 354
    :cond_5
    if-nez p1, :cond_6

    iget-boolean v0, p0, Lcom/adcolony/sdk/bb;->n:Z

    if-eqz v0, :cond_7

    .line 355
    :cond_6
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/l;->q()Lcom/adcolony/sdk/ag;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adcolony/sdk/ag;->a(Lcom/adcolony/sdk/ai;)Lcom/adcolony/sdk/ai;

    .line 359
    :cond_7
    iget-object v0, p0, Lcom/adcolony/sdk/bb;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 360
    iget-object v0, p0, Lcom/adcolony/sdk/bb;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/bb;->a(Ljava/lang/String;)V

    .line 362
    :cond_8
    return-void

    .line 269
    :cond_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a

    .line 270
    new-instance v0, Lcom/adcolony/sdk/bb$3;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/bb$3;-><init>(Lcom/adcolony/sdk/bb;)V

    goto/16 :goto_0

    .line 288
    :cond_a
    new-instance v0, Lcom/adcolony/sdk/bb$a;

    invoke-direct {v0, p0, v4}, Lcom/adcolony/sdk/bb$a;-><init>(Lcom/adcolony/sdk/bb;Lcom/adcolony/sdk/bb$1;)V

    goto/16 :goto_0

    .line 329
    :cond_b
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 332
    const-string v1, "var\\s*ADC_DEVICE_INFO\\s*=\\s*null\\s*;"

    .line 333
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "var ADC_DEVICE_INFO = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "info"

    invoke-static {v3, v6}, Lcom/adcolony/sdk/y;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v6, "metadata"

    invoke-static {v3, v6}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ";\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 334
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_2

    .line 341
    :cond_c
    iget-object v0, p0, Lcom/adcolony/sdk/bb;->a:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/adcolony/sdk/bb;->a:Ljava/lang/String;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 342
    :cond_d
    iget-object v0, p0, Lcom/adcolony/sdk/bb;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/bb;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 344
    :cond_e
    iget-object v0, p0, Lcom/adcolony/sdk/bb;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v1, "data"

    :goto_4
    if-eqz p1, :cond_10

    const-string v0, "data"

    invoke-static {v3, v0}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_5
    const-string v3, "text/html"

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/adcolony/sdk/bb;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_f
    iget-object v1, p0, Lcom/adcolony/sdk/bb;->d:Ljava/lang/String;

    goto :goto_4

    :cond_10
    iget-object v2, p0, Lcom/adcolony/sdk/bb;->a:Ljava/lang/String;

    goto :goto_5
.end method

.method a(Lcom/adcolony/sdk/af;)Z
    .locals 3

    .prologue
    .line 132
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 133
    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/adcolony/sdk/bb;->h:I

    if-ne v1, v2, :cond_0

    const-string v1, "container_id"

    .line 134
    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/adcolony/sdk/bb;->v:Lcom/adcolony/sdk/c;

    invoke-virtual {v2}, Lcom/adcolony/sdk/c;->d()I

    move-result v2

    if-ne v1, v2, :cond_0

    const-string v1, "ad_session_id"

    .line 135
    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/bb;->v:Lcom/adcolony/sdk/c;

    invoke-virtual {v1}, Lcom/adcolony/sdk/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const/4 v0, 0x1

    .line 139
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 533
    return-void
.end method

.method b(Lcom/adcolony/sdk/af;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 476
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 477
    const-string v1, "x"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/adcolony/sdk/bb;->i:I

    .line 478
    const-string v1, "y"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/adcolony/sdk/bb;->j:I

    .line 479
    const-string v1, "width"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/adcolony/sdk/bb;->k:I

    .line 480
    const-string v1, "height"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/bb;->l:I

    .line 482
    invoke-virtual {p0}, Lcom/adcolony/sdk/bb;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 483
    iget v1, p0, Lcom/adcolony/sdk/bb;->i:I

    iget v2, p0, Lcom/adcolony/sdk/bb;->j:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 484
    iget v1, p0, Lcom/adcolony/sdk/bb;->k:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 485
    iget v1, p0, Lcom/adcolony/sdk/bb;->l:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 486
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/bb;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 488
    iget-boolean v0, p0, Lcom/adcolony/sdk/bb;->o:Z

    if-eqz v0, :cond_0

    .line 489
    invoke-static {}, Lcom/adcolony/sdk/y;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 490
    const-string v1, "success"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 491
    const-string v1, "id"

    iget v2, p0, Lcom/adcolony/sdk/bb;->m:I

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 492
    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/af;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/af;->b()V

    .line 494
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 541
    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adcolony/sdk/bb;->q:Z

    if-eqz v0, :cond_0

    .line 542
    new-instance v0, Lcom/adcolony/sdk/bb$8;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/bb$8;-><init>(Lcom/adcolony/sdk/bb;)V

    invoke-static {v0}, Lcom/adcolony/sdk/az;->a(Ljava/lang/Runnable;)Z

    .line 560
    :cond_0
    return-void
.end method

.method c(Lcom/adcolony/sdk/af;)V
    .locals 3

    .prologue
    .line 503
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "visible"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    .line 504
    if-eqz v0, :cond_1

    .line 505
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/bb;->setVisibility(I)V

    .line 510
    :goto_0
    iget-boolean v0, p0, Lcom/adcolony/sdk/bb;->o:Z

    if-eqz v0, :cond_0

    .line 511
    invoke-static {}, Lcom/adcolony/sdk/y;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 512
    const-string v1, "success"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 513
    const-string v1, "id"

    iget v2, p0, Lcom/adcolony/sdk/bb;->m:I

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 514
    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/af;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/af;->b()V

    .line 516
    :cond_0
    return-void

    .line 507
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/bb;->setVisibility(I)V

    goto :goto_0
.end method

.method d()V
    .locals 2

    .prologue
    .line 146
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adcolony/sdk/bb;->a(ZLcom/adcolony/sdk/af;)V

    .line 147
    return-void
.end method

.method e()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 368
    iget-object v0, p0, Lcom/adcolony/sdk/bb;->v:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->n()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "WebView.set_visible"

    new-instance v2, Lcom/adcolony/sdk/bb$5;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/bb$5;-><init>(Lcom/adcolony/sdk/bb;)V

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;Z)Lcom/adcolony/sdk/ah;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    iget-object v0, p0, Lcom/adcolony/sdk/bb;->v:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->n()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "WebView.set_bounds"

    new-instance v2, Lcom/adcolony/sdk/bb$6;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/bb$6;-><init>(Lcom/adcolony/sdk/bb;)V

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;Z)Lcom/adcolony/sdk/ah;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    iget-object v0, p0, Lcom/adcolony/sdk/bb;->v:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->n()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "WebView.execute_js"

    new-instance v2, Lcom/adcolony/sdk/bb$7;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/bb$7;-><init>(Lcom/adcolony/sdk/bb;)V

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;Z)Lcom/adcolony/sdk/ah;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    iget-object v0, p0, Lcom/adcolony/sdk/bb;->v:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->o()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "WebView.set_visible"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v0, p0, Lcom/adcolony/sdk/bb;->v:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->o()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "WebView.set_bounds"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object v0, p0, Lcom/adcolony/sdk/bb;->v:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->o()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "WebView.execute_js"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    return-void
.end method

.method f()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 401
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/bb;->setVisibility(I)V

    .line 402
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/adcolony/sdk/bb;->k:I

    iget v2, p0, Lcom/adcolony/sdk/bb;->l:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 403
    iget v1, p0, Lcom/adcolony/sdk/bb;->i:I

    iget v2, p0, Lcom/adcolony/sdk/bb;->j:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 404
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 405
    iget-object v1, p0, Lcom/adcolony/sdk/bb;->v:Lcom/adcolony/sdk/c;

    invoke-virtual {v1, p0, v0}, Lcom/adcolony/sdk/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
    return-void
.end method

.method g()Z
    .locals 1

    .prologue
    .line 667
    iget-boolean v0, p0, Lcom/adcolony/sdk/bb;->p:Z

    return v0
.end method
