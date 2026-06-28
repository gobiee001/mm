.class Lcom/moat/analytics/mobile/mpub/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/mpub/i$a;
    }
.end annotation


# instance fields
.field a:Z

.field private b:I

.field private c:Z

.field private d:Z

.field private final e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/moat/analytics/mobile/mpub/b;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final i:J

.field private j:Lcom/moat/analytics/mobile/mpub/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/moat/analytics/mobile/mpub/a/b/a",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/moat/analytics/mobile/mpub/i$a;

.field private final m:Landroid/content/BroadcastReceiver;

.field private final n:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;Lcom/moat/analytics/mobile/mpub/i$a;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/moat/analytics/mobile/mpub/i;->b:I

    iput-boolean v1, p0, Lcom/moat/analytics/mobile/mpub/i;->c:Z

    iput-boolean v1, p0, Lcom/moat/analytics/mobile/mpub/i;->a:Z

    iput-boolean v1, p0, Lcom/moat/analytics/mobile/mpub/i;->d:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/i;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/moat/analytics/mobile/mpub/i$2;

    invoke-direct {v0, p0}, Lcom/moat/analytics/mobile/mpub/i$2;-><init>(Lcom/moat/analytics/mobile/mpub/i;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/i;->m:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/moat/analytics/mobile/mpub/i$3;

    invoke-direct {v0, p0}, Lcom/moat/analytics/mobile/mpub/i$3;-><init>(Lcom/moat/analytics/mobile/mpub/i;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/i;->n:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/i;->e:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/moat/analytics/mobile/mpub/i;->l:Lcom/moat/analytics/mobile/mpub/i$a;

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/a/b/a;->a()Lcom/moat/analytics/mobile/mpub/a/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/i;->j:Lcom/moat/analytics/mobile/mpub/a/b/a;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/i;->g:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/i;->k:Ljava/util/List;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/i;->f:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/moat/analytics/mobile/mpub/i;->i:J

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "UPDATE_METADATA"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "UPDATE_VIEW_INFO"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/i;->g()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/moat/analytics/mobile/mpub/i;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/i;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v2, p0, Lcom/moat/analytics/mobile/mpub/i;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :try_start_0
    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/i;->b()Z

    move-result v0

    const/4 v1, 0x3

    const-string v2, "MoatJavaScriptBridge"

    if-eqz v0, :cond_0

    const-string v0, "bridge installed"

    :goto_0
    invoke-static {v1, v2, p0, v0}, Lcom/moat/analytics/mobile/mpub/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const-string v0, "bridge not installed"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/l;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/mpub/i;)I
    .locals 1

    iget v0, p0, Lcom/moat/analytics/mobile/mpub/i;->b:I

    return v0
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/mpub/i;I)I
    .locals 0

    iput p1, p0, Lcom/moat/analytics/mobile/mpub/i;->b:I

    return p1
.end method

.method private a(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v1, "MoatJavaScriptBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebView is null. Can\'t "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, p0, v2}, Lcom/moat/analytics/mobile/mpub/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "MoatJavaScriptBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JavaScript is not enabled in the given WebView. Can\'t "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, p0, v2}, Lcom/moat/analytics/mobile/mpub/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/moat/analytics/mobile/mpub/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/i;->f()V

    return-void
.end method

.method private b()Z
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/i;->i()Landroid/webkit/WebView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/i;->i()Landroid/webkit/WebView;

    move-result-object v1

    const-string v2, "installBridge"

    invoke-direct {p0, v1, v2}, Lcom/moat/analytics/mobile/mpub/i;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/i;->a:Z

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/h;->a()Lcom/moat/analytics/mobile/mpub/h;

    move-result-object v1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/i;->g()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/moat/analytics/mobile/mpub/h;->a(Landroid/content/Context;Lcom/moat/analytics/mobile/mpub/i;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/moat/analytics/mobile/mpub/i;)I
    .locals 2

    iget v0, p0, Lcom/moat/analytics/mobile/mpub/i;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/moat/analytics/mobile/mpub/i;->b:I

    return v0
.end method

.method private c()V
    .locals 4

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/u;->d()Lcom/moat/analytics/mobile/mpub/u;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lcom/moat/analytics/mobile/mpub/u;->a()Lcom/moat/analytics/mobile/mpub/u$d;

    move-result-object v0

    sget-object v1, Lcom/moat/analytics/mobile/mpub/u$d;->a:Lcom/moat/analytics/mobile/mpub/u$d;

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/i;->d:Z

    if-nez v0, :cond_2

    const/4 v0, 0x3

    const-string v1, "MoatJavaScriptBridge"

    const-string v2, "Ready for communication (setting environment variables)."

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/mpub/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/i;->d:Z

    :cond_2
    const-string v0, "javascript:(function(d,l){function m(){function d(a){var b=a.c,c=a.a,f=a.b;a=a.f;var g=[];if(c)b[c]&&g.push(b[c].fn[0]);else for(key in b)if(b[key])for(var e=0,h=b[key].fn.length;e<h;e++)g.push(b[key].fn[e]);e=0;for(h=g.length;e<h;e++){var k=g[e];if(\'function\'===typeof k)try{f?k(f):k()}catch(l){}a&&delete b[c]}}function f(a,b,c){\'function\'===typeof a&&(b===kuea&&c[b]?c[b].fn.push(a):c[b]={ts:+new Date,fn:[a]})}kuea=+new Date;iymv={};briz=!1;ewat=+new Date;bnkr=[];bjmk={};dptk={};uqaj={};ryup={};yhgt={};this.g=function(a){this.namespace=a.namespace;this.version=a.version;this.appName=a.appName;this.deviceOS=a.deviceOS;this.isNative=a.isNative;this.versionHash=a.versionHash;this.aqzx=a.aqzx;this.appId=a.appId};this.nvsj=function(a){briz||(f(a,ewat,iymv),briz=!0)};this.bpsy=function(a,b){var c=b||kuea;c!==kuea&&bjmk[c]||f(a,c,bjmk)};this.qmrv=function(a,b){var c=b||kuea;c!==kuea&&uqaj[c]||f(a,c,uqaj)};this.lgpr=function(a,b){f(a,b||kuea,yhgt)};this.xrnk=function(a){delete yhgt[a||kuea]};this.vgft=function(a){return dptk[a||kuea]||!1};this.lkpu=function(a){return ryup[a||kuea]||!1};this.crts=function(a){var b={c:iymv,b:a,a:ewat};briz?d(b):bnkr.push(a)};this.mqjh=function(a){var b=a||kuea;dptk[b]=!0;var c={c:bjmk,f:!0};b!==kuea&&(c.b=a,c.a=a);d(c)};this.egpw=function(a){var b=a||kuea;ryup[b]=!0;var c={c:uqaj,f:!0};b!==kuea&&(c.b=a,c.a=a);d(c)};this.sglu=function(a){var b={c:yhgt,b:a.event||a,f:!1};(a.adKey||kuea)!==kuea&&(b.a=a.adKey);d(b);return 0<Object.keys(yhgt).length}}\'undefined\'===typeof d.MoatMAK&&(d.MoatMAK=new m,d.MoatMAK.g(l),d.__zMoatInit__=!0)})(window,%s);"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/i;->k()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/i;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/i;->i()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MoatJavaScriptBridge"

    const-string v2, "Failed to initialize communication (did not set environment variables)."

    invoke-static {v1, p0, v2, v0}, Lcom/moat/analytics/mobile/mpub/n;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/i;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x6

    const-string v1, "MoatJavaScriptBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bridge is not installed in the given WebView. Can\'t "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/mpub/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/moat/analytics/mobile/mpub/u;->d()Lcom/moat/analytics/mobile/mpub/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/mpub/u;->a()Lcom/moat/analytics/mobile/mpub/u$d;

    move-result-object v0

    sget-object v1, Lcom/moat/analytics/mobile/mpub/u$d;->a:Lcom/moat/analytics/mobile/mpub/u$d;

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/i;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/i;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/i;->c:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/i;->i()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/i;->e:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_3

    const/4 v0, 0x3

    const-string v1, "MoatJavaScriptBridge"

    const-string v2, "WebView ref became null, stopping tracking loop"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/mpub/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/i;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/l;->a(Ljava/lang/Exception;)V

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/i;->f()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    :try_start_1
    const-string v2, "MoatJavaScriptBridge"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebView became null"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/i;->i()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, ""

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", stopping tracking loop"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, p0, v0}, Lcom/moat/analytics/mobile/mpub/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v0, "based on null url"

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/i;->i()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/i;->c:Z

    :cond_6
    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/i;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/mpub/b;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/mpub/b;->c()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_9

    :cond_8
    const/4 v2, 0x3

    const-string v3, "MoatJavaScriptBridge"

    const-string v4, "Tracker has no subject"

    invoke-static {v2, v3, p0, v4}, Lcom/moat/analytics/mobile/mpub/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/moat/analytics/mobile/mpub/b;->c:Z

    if-nez v2, :cond_9

    invoke-virtual {p0, v0}, Lcom/moat/analytics/mobile/mpub/i;->c(Lcom/moat/analytics/mobile/mpub/b;)Z

    goto :goto_3

    :cond_9
    iget-boolean v2, v0, Lcom/moat/analytics/mobile/mpub/b;->d:Z

    if-eqz v2, :cond_7

    const-string v2, "javascript: MoatMAK.mqjh(\"%s\")"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/moat/analytics/mobile/mpub/b;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/moat/analytics/mobile/mpub/i;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/mpub/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "javascript: MoatMAK.sglu(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_a

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/i;->i()Landroid/webkit/WebView;

    move-result-object v2

    new-instance v3, Lcom/moat/analytics/mobile/mpub/i$1;

    invoke-direct {v3, p0}, Lcom/moat/analytics/mobile/mpub/i$1;-><init>(Lcom/moat/analytics/mobile/mpub/i;)V

    invoke-virtual {v2, v0, v3}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_3

    :cond_a
    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/i;->i()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private d(Lcom/moat/analytics/mobile/mpub/b;)V
    .locals 3

    const/4 v0, 0x3

    const-string v1, "MoatJavaScriptBridge"

    const-string v2, "Stopping view update loop"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/mpub/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/h;->a()Lcom/moat/analytics/mobile/mpub/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/moat/analytics/mobile/mpub/h;->a(Lcom/moat/analytics/mobile/mpub/b;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/moat/analytics/mobile/mpub/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/i;->e()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/i;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/i;->i()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 3

    const/4 v0, 0x3

    const-string v1, "MoatJavaScriptBridge"

    const-string v2, "Stopping metadata reporting loop"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/mpub/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/h;->a()Lcom/moat/analytics/mobile/mpub/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/moat/analytics/mobile/mpub/h;->a(Lcom/moat/analytics/mobile/mpub/i;)V

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/i;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/moat/analytics/mobile/mpub/i;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method static synthetic e(Lcom/moat/analytics/mobile/mpub/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/i;->c()V

    return-void
.end method

.method static synthetic f(Lcom/moat/analytics/mobile/mpub/i;)J
    .locals 2

    iget-wide v0, p0, Lcom/moat/analytics/mobile/mpub/i;->i:J

    return-wide v0
.end method

.method private f()V
    .locals 3

    const/4 v0, 0x3

    const-string v1, "MoatJavaScriptBridge"

    const-string v2, "Cleaning up"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/mpub/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/i;->e()V

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/i;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/mpub/b;

    invoke-direct {p0, v0}, Lcom/moat/analytics/mobile/mpub/i;->d(Lcom/moat/analytics/mobile/mpub/b;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/i;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/i;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/moat/analytics/mobile/mpub/i;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private g()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/MoatAnalytics;->getInstance()Lcom/moat/analytics/mobile/mpub/MoatAnalytics;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/mpub/j;

    iget-object v0, v0, Lcom/moat/analytics/mobile/mpub/j;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lcom/moat/analytics/mobile/mpub/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/i;->d()V

    return-void
.end method

.method private h()Z
    .locals 1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/i;->i()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/i;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    return-object v0
.end method

.method private j()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/i;->j:Lcom/moat/analytics/mobile/mpub/a/b/a;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/mpub/a/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/i;->j:Lcom/moat/analytics/mobile/mpub/a/b/a;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/mpub/a/b/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "_unknown_"

    :try_start_0
    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/i;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/i;->i()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/a/b/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/mpub/a/b/a;

    move-result-object v1

    iput-object v1, p0, Lcom/moat/analytics/mobile/mpub/i;->j:Lcom/moat/analytics/mobile/mpub/a/b/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/moat/analytics/mobile/mpub/l;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    :try_start_1
    const-string v2, "MoatJavaScriptBridge"

    const-string v3, "Can\'t get app name, WebView is null."

    invoke-static {v1, v2, p0, v3}, Lcom/moat/analytics/mobile/mpub/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private k()Ljava/lang/String;
    .locals 7

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "4981cd50c959e33b894dd4ade34d0115f830973f"

    const-string v0, "MPUB"

    const-string v0, "2.1.0"

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/i;->j()Ljava/lang/String;

    move-result-object v2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/p;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/i;->l:Lcom/moat/analytics/mobile/mpub/i$a;

    sget-object v5, Lcom/moat/analytics/mobile/mpub/i$a;->a:Lcom/moat/analytics/mobile/mpub/i$a;

    if-ne v0, v5, :cond_1

    const-string v0, "0"

    :goto_0
    const-string v5, "versionHash"

    const-string v6, "4981cd50c959e33b894dd4ade34d0115f830973f"

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "appName"

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "namespace"

    const-string v5, "MPUB"

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "version"

    const-string v5, "2.1.0"

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "deviceOS"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "isNative"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_0

    const-string v0, "aqzx"

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    const-string v0, "1"

    goto :goto_0

    :cond_2
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "{}"

    goto :goto_1
.end method


# virtual methods
.method a()V
    .locals 3

    const/4 v0, 0x3

    const-string v1, "MoatJavaScriptBridge"

    const-string v2, "webViewReady"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/mpub/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/i;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/i;->e()V

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/i;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/moat/analytics/mobile/mpub/i;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/i;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method a(Lcom/moat/analytics/mobile/mpub/b;)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    const-string v1, "MoatJavaScriptBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adding tracker"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/moat/analytics/mobile/mpub/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/mpub/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/i;->f:Ljava/util/Map;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "javascript: MoatMAK.crts(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/moat/analytics/mobile/mpub/i;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/moat/analytics/mobile/mpub/i;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/moat/analytics/mobile/mpub/i;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    instance-of v0, p2, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/moat/analytics/mobile/mpub/i;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/i;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "javascript:%s.dispatchEvent(%s);"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/moat/analytics/mobile/mpub/i;->d(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    check-cast p2, Lorg/json/JSONObject;

    invoke-static {p2}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/moat/analytics/mobile/mpub/i;->g:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method b(Ljava/lang/String;)V
    .locals 10

    const/16 v5, 0xa

    const/16 v9, 0xc8

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x3

    const-string v2, "MoatJavaScriptBridge"

    const-string v4, "flushDispatchQueue"

    invoke-static {v0, v2, p0, v4}, Lcom/moat/analytics/mobile/mpub/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/i;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/i;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lt v0, v9, :cond_2

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_0

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/i;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/i;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    div-int/lit16 v0, v0, 0xc8

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit16 v0, v0, 0xc8

    iget-object v2, p0, Lcom/moat/analytics/mobile/mpub/i;->g:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_1

    iget-object v5, p0, Lcom/moat/analytics/mobile/mpub/i;->g:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/moat/analytics/mobile/mpub/i;->g:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_3
    iget-object v2, p0, Lcom/moat/analytics/mobile/mpub/i;->g:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    if-ge v0, v9, :cond_6

    add-int/lit8 v0, v0, 0x1

    const-string v5, "javascript:%s.dispatchMany([%s])"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v3

    :goto_4
    iget-object v4, p0, Lcom/moat/analytics/mobile/mpub/i;->g:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    if-ge v0, v9, :cond_3

    add-int/lit8 v4, v0, 0x1

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/i;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    const/16 v8, 0x7d0

    if-le v7, v8, :cond_4

    move v0, v4

    :cond_3
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/moat/analytics/mobile/mpub/i;->d(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    iget-object v7, p0, Lcom/moat/analytics/mobile/mpub/i;->g:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    if-eqz v2, :cond_5

    move v2, v1

    :goto_5
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v4

    goto :goto_4

    :cond_5
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/i;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method b(Lcom/moat/analytics/mobile/mpub/b;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/i;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/i;->i()Landroid/webkit/WebView;

    move-result-object v2

    const-string v3, "startTracking"

    invoke-direct {p0, v2, v3}, Lcom/moat/analytics/mobile/mpub/i;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "startTracking"

    invoke-direct {p0, v2}, Lcom/moat/analytics/mobile/mpub/i;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/moat/analytics/mobile/mpub/b;->c()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_3

    iget-boolean v2, p1, Lcom/moat/analytics/mobile/mpub/b;->c:Z

    if-nez v2, :cond_2

    const/4 v1, 0x3

    const-string v2, "MoatJavaScriptBridge"

    const-string v3, "Tracker subject is null, won\'t start tracking"

    invoke-static {v1, v2, p0, v3}, Lcom/moat/analytics/mobile/mpub/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MoatJavaScriptBridge"

    const-string v3, "Failed to initialize impression start."

    invoke-static {v2, p0, v3, v1}, Lcom/moat/analytics/mobile/mpub/n;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    :try_start_1
    const-string v3, "MoatJavaScriptBridge"

    const-string v4, "Tracker subject is null at start"

    invoke-static {v2, v3, p0, v4}, Lcom/moat/analytics/mobile/mpub/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    const/4 v2, 0x3

    const-string v3, "MoatJavaScriptBridge"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting tracking on tracker"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/moat/analytics/mobile/mpub/b;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, p0, v4}, Lcom/moat/analytics/mobile/mpub/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "javascript: MoatMAK.mqjh(\"%s\")"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/moat/analytics/mobile/mpub/b;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/moat/analytics/mobile/mpub/i;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/h;->a()Lcom/moat/analytics/mobile/mpub/h;

    move-result-object v2

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/i;->g()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/moat/analytics/mobile/mpub/h;->a(Landroid/content/Context;Lcom/moat/analytics/mobile/mpub/b;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    goto :goto_0
.end method

.method c(Lcom/moat/analytics/mobile/mpub/b;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/i;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/i;->i()Landroid/webkit/WebView;

    move-result-object v2

    const-string v3, "stopTracking"

    invoke-direct {p0, v2, v3}, Lcom/moat/analytics/mobile/mpub/i;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "stopTracking"

    invoke-direct {p0, v2}, Lcom/moat/analytics/mobile/mpub/i;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    :try_start_0
    const-string v2, "MoatJavaScriptBridge"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ending tracking on tracker"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/moat/analytics/mobile/mpub/b;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, p0, v3}, Lcom/moat/analytics/mobile/mpub/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "javascript: MoatMAK.egpw(\"%s\")"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/moat/analytics/mobile/mpub/b;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/moat/analytics/mobile/mpub/i;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/moat/analytics/mobile/mpub/i;->l:Lcom/moat/analytics/mobile/mpub/i$a;

    sget-object v2, Lcom/moat/analytics/mobile/mpub/i$a;->b:Lcom/moat/analytics/mobile/mpub/i$a;

    if-ne v1, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/mpub/i;->d(Lcom/moat/analytics/mobile/mpub/b;)V

    :goto_1
    iget-object v1, p0, Lcom/moat/analytics/mobile/mpub/i;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    :catch_0
    move-exception v1

    const-string v2, "MoatJavaScriptBridge"

    const-string v3, "Failed to end impression."

    invoke-static {v2, p0, v3, v1}, Lcom/moat/analytics/mobile/mpub/n;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/i;->f()V

    goto :goto_1
.end method

.method protected finalize()V
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    const/4 v0, 0x3

    const-string v1, "MoatJavaScriptBridge"

    const-string v2, "finalize"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/mpub/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/i;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/l;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
