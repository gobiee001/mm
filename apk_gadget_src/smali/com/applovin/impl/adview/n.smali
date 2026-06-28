.class Lcom/applovin/impl/adview/n;
.super Landroid/webkit/WebView;


# instance fields
.field private final a:Lcom/applovin/sdk/AppLovinLogger;

.field private final b:Lcom/applovin/sdk/AppLovinSdk;

.field private c:Lcom/applovin/impl/sdk/g;

.field private d:Lcom/applovin/sdk/AppLovinAd;

.field private e:Ljava/lang/String;

.field private f:Z


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/ah;Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/applovin/impl/adview/n;->d:Lcom/applovin/sdk/AppLovinAd;

    iput-object v0, p0, Lcom/applovin/impl/adview/n;->e:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/applovin/impl/adview/n;->f:Z

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No sdk specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/applovin/impl/adview/n;->b:Lcom/applovin/sdk/AppLovinSdk;

    invoke-virtual {p2}, Lcom/applovin/sdk/AppLovinSdk;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/adview/n;->a:Lcom/applovin/sdk/AppLovinLogger;

    invoke-virtual {p0, v2}, Lcom/applovin/impl/adview/n;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/applovin/impl/adview/n;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/n;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lcom/applovin/impl/adview/m;

    invoke-direct {v0, p2}, Lcom/applovin/impl/adview/m;-><init>(Lcom/applovin/sdk/AppLovinSdk;)V

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/n;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p0, v2}, Lcom/applovin/impl/adview/n;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/applovin/impl/adview/n;->setHorizontalScrollBarEnabled(Z)V

    const/high16 v0, 0x2000000

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/n;->setScrollBarStyle(I)V

    new-instance v0, Lcom/applovin/impl/adview/o;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/o;-><init>(Lcom/applovin/impl/adview/n;)V

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/n;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lcom/applovin/impl/adview/z;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/z;-><init>(Lcom/applovin/impl/adview/n;)V

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/n;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/adview/n;)Lcom/applovin/sdk/AppLovinLogger;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/n;->a:Lcom/applovin/sdk/AppLovinLogger;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/applovin/impl/sdk/fy;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3, p1}, Lcom/applovin/impl/sdk/fy;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "{SOURCE}"

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/applovin/impl/sdk/am;)V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/applovin/impl/sdk/eb;

    iget-object v1, p0, Lcom/applovin/impl/adview/n;->b:Lcom/applovin/sdk/AppLovinSdk;

    invoke-direct {v0, v1}, Lcom/applovin/impl/sdk/eb;-><init>(Lcom/applovin/sdk/AppLovinSdk;)V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/eb;->I()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/am;->ah()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/applovin/impl/adview/aa;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/aa;-><init>(Lcom/applovin/impl/adview/n;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/n;->a(Ljava/lang/Runnable;)V

    :cond_1
    invoke-static {}, Lcom/applovin/impl/sdk/ab;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/applovin/impl/adview/ab;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/adview/ab;-><init>(Lcom/applovin/impl/adview/n;Lcom/applovin/impl/sdk/am;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/n;->a(Ljava/lang/Runnable;)V

    :cond_2
    invoke-static {}, Lcom/applovin/impl/sdk/ab;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/am;->aj()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/applovin/impl/adview/ac;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/ac;-><init>(Lcom/applovin/impl/adview/n;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/n;->a(Ljava/lang/Runnable;)V

    :cond_3
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/am;->ak()Lcom/applovin/impl/sdk/fz;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/applovin/impl/adview/n;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/fz;->b()Landroid/webkit/WebSettings$PluginState;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v3, Lcom/applovin/impl/adview/ad;

    invoke-direct {v3, p0, v1, v2}, Lcom/applovin/impl/adview/ad;-><init>(Lcom/applovin/impl/adview/n;Landroid/webkit/WebSettings;Landroid/webkit/WebSettings$PluginState;)V

    invoke-direct {p0, v3}, Lcom/applovin/impl/adview/n;->a(Ljava/lang/Runnable;)V

    :cond_4
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/fz;->c()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_5

    new-instance v3, Lcom/applovin/impl/adview/ae;

    invoke-direct {v3, p0, v1, v2}, Lcom/applovin/impl/adview/ae;-><init>(Lcom/applovin/impl/adview/n;Landroid/webkit/WebSettings;Ljava/lang/Boolean;)V

    invoke-direct {p0, v3}, Lcom/applovin/impl/adview/n;->a(Ljava/lang/Runnable;)V

    :cond_5
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/fz;->d()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_6

    new-instance v3, Lcom/applovin/impl/adview/af;

    invoke-direct {v3, p0, v1, v2}, Lcom/applovin/impl/adview/af;-><init>(Lcom/applovin/impl/adview/n;Landroid/webkit/WebSettings;Ljava/lang/Boolean;)V

    invoke-direct {p0, v3}, Lcom/applovin/impl/adview/n;->a(Ljava/lang/Runnable;)V

    :cond_6
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/fz;->e()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_7

    new-instance v3, Lcom/applovin/impl/adview/ag;

    invoke-direct {v3, p0, v1, v2}, Lcom/applovin/impl/adview/ag;-><init>(Lcom/applovin/impl/adview/n;Landroid/webkit/WebSettings;Ljava/lang/Boolean;)V

    invoke-direct {p0, v3}, Lcom/applovin/impl/adview/n;->a(Ljava/lang/Runnable;)V

    :cond_7
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/fz;->f()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_8

    new-instance v3, Lcom/applovin/impl/adview/p;

    invoke-direct {v3, p0, v1, v2}, Lcom/applovin/impl/adview/p;-><init>(Lcom/applovin/impl/adview/n;Landroid/webkit/WebSettings;Ljava/lang/Boolean;)V

    invoke-direct {p0, v3}, Lcom/applovin/impl/adview/n;->a(Ljava/lang/Runnable;)V

    :cond_8
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/fz;->g()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_9

    new-instance v3, Lcom/applovin/impl/adview/q;

    invoke-direct {v3, p0, v1, v2}, Lcom/applovin/impl/adview/q;-><init>(Lcom/applovin/impl/adview/n;Landroid/webkit/WebSettings;Ljava/lang/Boolean;)V

    invoke-direct {p0, v3}, Lcom/applovin/impl/adview/n;->a(Ljava/lang/Runnable;)V

    :cond_9
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/fz;->h()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_a

    new-instance v3, Lcom/applovin/impl/adview/r;

    invoke-direct {v3, p0, v1, v2}, Lcom/applovin/impl/adview/r;-><init>(Lcom/applovin/impl/adview/n;Landroid/webkit/WebSettings;Ljava/lang/Boolean;)V

    invoke-direct {p0, v3}, Lcom/applovin/impl/adview/n;->a(Ljava/lang/Runnable;)V

    :cond_a
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/fz;->i()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_b

    new-instance v3, Lcom/applovin/impl/adview/s;

    invoke-direct {v3, p0, v1, v2}, Lcom/applovin/impl/adview/s;-><init>(Lcom/applovin/impl/adview/n;Landroid/webkit/WebSettings;Ljava/lang/Boolean;)V

    invoke-direct {p0, v3}, Lcom/applovin/impl/adview/n;->a(Ljava/lang/Runnable;)V

    :cond_b
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/fz;->j()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_c

    new-instance v3, Lcom/applovin/impl/adview/t;

    invoke-direct {v3, p0, v1, v2}, Lcom/applovin/impl/adview/t;-><init>(Lcom/applovin/impl/adview/n;Landroid/webkit/WebSettings;Ljava/lang/Boolean;)V

    invoke-direct {p0, v3}, Lcom/applovin/impl/adview/n;->a(Ljava/lang/Runnable;)V

    :cond_c
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/fz;->k()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_d

    new-instance v3, Lcom/applovin/impl/adview/u;

    invoke-direct {v3, p0, v1, v2}, Lcom/applovin/impl/adview/u;-><init>(Lcom/applovin/impl/adview/n;Landroid/webkit/WebSettings;Ljava/lang/Boolean;)V

    invoke-direct {p0, v3}, Lcom/applovin/impl/adview/n;->a(Ljava/lang/Runnable;)V

    :cond_d
    invoke-static {}, Lcom/applovin/impl/sdk/ab;->d()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/fz;->l()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_e

    new-instance v3, Lcom/applovin/impl/adview/v;

    invoke-direct {v3, p0, v1, v2}, Lcom/applovin/impl/adview/v;-><init>(Lcom/applovin/impl/adview/n;Landroid/webkit/WebSettings;Ljava/lang/Boolean;)V

    invoke-direct {p0, v3}, Lcom/applovin/impl/adview/n;->a(Ljava/lang/Runnable;)V

    :cond_e
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/fz;->m()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_f

    new-instance v3, Lcom/applovin/impl/adview/w;

    invoke-direct {v3, p0, v1, v2}, Lcom/applovin/impl/adview/w;-><init>(Lcom/applovin/impl/adview/n;Landroid/webkit/WebSettings;Ljava/lang/Boolean;)V

    invoke-direct {p0, v3}, Lcom/applovin/impl/adview/n;->a(Ljava/lang/Runnable;)V

    :cond_f
    invoke-static {}, Lcom/applovin/impl/sdk/ab;->g()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/fz;->a()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_10

    new-instance v3, Lcom/applovin/impl/adview/x;

    invoke-direct {v3, p0, v1, v2}, Lcom/applovin/impl/adview/x;-><init>(Lcom/applovin/impl/adview/n;Landroid/webkit/WebSettings;Ljava/lang/Integer;)V

    invoke-direct {p0, v3}, Lcom/applovin/impl/adview/n;->a(Ljava/lang/Runnable;)V

    :cond_10
    invoke-static {}, Lcom/applovin/impl/sdk/ab;->h()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/fz;->n()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_11

    new-instance v2, Lcom/applovin/impl/adview/y;

    invoke-direct {v2, p0, v1, v0}, Lcom/applovin/impl/adview/y;-><init>(Lcom/applovin/impl/adview/n;Landroid/webkit/WebSettings;Ljava/lang/Boolean;)V

    invoke-direct {p0, v2}, Lcom/applovin/impl/adview/n;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_11
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/n;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "AdWebView"

    const-string v3, "Unable to apply WebView settings"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 4

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/n;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "AdWebView"

    const-string v3, "Unable to apply WebView setting"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;)V
    .locals 6

    const/4 v4, 0x0

    invoke-direct {p0, p3, p1, p4}, Lcom/applovin/impl/adview/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/impl/sdk/fy;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/n;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "AdWebView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rendering webview for VAST ad with resourceContents : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "text/html"

    const-string v5, ""

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/impl/adview/n;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/applovin/impl/sdk/eb;

    invoke-direct {v0, p5}, Lcom/applovin/impl/sdk/eb;-><init>(Lcom/applovin/sdk/AppLovinSdk;)V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/eb;->X()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p4}, Lcom/applovin/impl/adview/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/impl/sdk/fy;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/adview/n;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "AdWebView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rendering webview for VAST ad with resourceContents : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "text/html"

    const-string v5, ""

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/impl/adview/n;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/n;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "AdWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rendering webview for VAST ad with resourceURL : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/n;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method a()Lcom/applovin/sdk/AppLovinAd;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/n;->d:Lcom/applovin/sdk/AppLovinAd;

    return-object v0
.end method

.method public a(Lcom/applovin/impl/sdk/g;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/n;->c:Lcom/applovin/impl/sdk/g;

    return-void
.end method

.method public a(Lcom/applovin/sdk/AppLovinAd;Ljava/lang/String;)V
    .locals 9

    iget-boolean v1, p0, Lcom/applovin/impl/adview/n;->f:Z

    if-nez v1, :cond_f

    iput-object p1, p0, Lcom/applovin/impl/adview/n;->d:Lcom/applovin/sdk/AppLovinAd;

    iput-object p2, p0, Lcom/applovin/impl/adview/n;->e:Ljava/lang/String;

    :try_start_0
    instance-of v1, p1, Lcom/applovin/impl/sdk/aq;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/applovin/impl/sdk/aq;

    const-string v2, "/"

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/aq;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "text/html"

    const/4 v5, 0x0

    const-string v6, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/applovin/impl/adview/n;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/adview/n;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "AdWebView"

    const-string v3, "Empty ad rendered"

    invoke-interface {v1, v2, v3}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/applovin/impl/sdk/am;

    move-object v1, v0

    invoke-direct {p0, v1}, Lcom/applovin/impl/adview/n;->a(Lcom/applovin/impl/sdk/am;)V

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/am;->aa()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/applovin/impl/adview/n;->setVisibility(I)V

    :cond_2
    instance-of v2, p1, Lcom/applovin/impl/sdk/m;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/applovin/impl/sdk/m;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/m;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/applovin/impl/sdk/fy;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/am;->ai()Ljava/lang/String;

    move-result-object v2

    const-string v4, "text/html"

    const/4 v5, 0x0

    const-string v6, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/applovin/impl/adview/n;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/adview/n;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "AdWebView"

    const-string v3, "AppLovinAd rendered"

    invoke-interface {v1, v2, v3}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/applovin/impl/adview/n;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v3, "AdWebView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to render AppLovinAd with placement = \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_1
    instance-of v2, p1, Lcom/applovin/impl/a/a;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/applovin/impl/a/a;

    invoke-virtual {p1}, Lcom/applovin/impl/a/a;->e()Lcom/applovin/impl/a/f;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/applovin/impl/a/f;->b()Lcom/applovin/impl/a/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/impl/a/i;->b()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3}, Lcom/applovin/impl/a/i;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/applovin/impl/a/a;->i()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/applovin/impl/sdk/eb;

    iget-object v7, p0, Lcom/applovin/impl/adview/n;->b:Lcom/applovin/sdk/AppLovinSdk;

    invoke-direct {v6, v7}, Lcom/applovin/impl/sdk/eb;-><init>(Lcom/applovin/sdk/AppLovinSdk;)V

    invoke-static {v2}, Lcom/applovin/impl/sdk/fy;->isValidString(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v5}, Lcom/applovin/impl/sdk/fy;->isValidString(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    :cond_4
    invoke-virtual {v3}, Lcom/applovin/impl/a/i;->a()Lcom/applovin/impl/a/j;

    move-result-object v7

    sget-object v8, Lcom/applovin/impl/a/j;->b:Lcom/applovin/impl/a/j;

    if-ne v7, v8, :cond_6

    iget-object v3, p0, Lcom/applovin/impl/adview/n;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v4, "AdWebView"

    const-string v5, "Rendering WebView for static VAST ad"

    invoke-interface {v3, v4, v5}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/applovin/impl/sdk/eb;->W()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2, p2}, Lcom/applovin/impl/adview/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/am;->ai()Ljava/lang/String;

    move-result-object v2

    const-string v4, "text/html"

    const/4 v5, 0x0

    const-string v6, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/applovin/impl/adview/n;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v2, ""

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Lcom/applovin/impl/a/i;->a()Lcom/applovin/impl/a/j;

    move-result-object v6

    sget-object v7, Lcom/applovin/impl/a/j;->d:Lcom/applovin/impl/a/j;

    if-ne v6, v7, :cond_9

    invoke-static {v5}, Lcom/applovin/impl/sdk/fy;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-direct {p0, v4, v5, p2}, Lcom/applovin/impl/adview/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/applovin/impl/sdk/fy;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    :goto_2
    iget-object v2, p0, Lcom/applovin/impl/adview/n;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v4, "AdWebView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rendering WebView for HTML VAST ad with resourceContents: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/am;->ai()Ljava/lang/String;

    move-result-object v2

    const-string v4, "text/html"

    const/4 v5, 0x0

    const-string v6, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/applovin/impl/adview/n;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move-object v3, v5

    goto :goto_2

    :cond_8
    invoke-static {v2}, Lcom/applovin/impl/sdk/fy;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/applovin/impl/adview/n;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v5, "AdWebView"

    const-string v6, "Preparing to load HTML VAST ad resourceUri"

    invoke-interface {v3, v5, v6}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/am;->ai()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/applovin/impl/adview/n;->b:Lcom/applovin/sdk/AppLovinSdk;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/applovin/impl/adview/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v3}, Lcom/applovin/impl/a/i;->a()Lcom/applovin/impl/a/j;

    move-result-object v3

    sget-object v6, Lcom/applovin/impl/a/j;->c:Lcom/applovin/impl/a/j;

    if-ne v3, v6, :cond_c

    invoke-static {v2}, Lcom/applovin/impl/sdk/fy;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/applovin/impl/adview/n;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v5, "AdWebView"

    const-string v6, "Preparing to load iFrame VAST ad resourceUri"

    invoke-interface {v3, v5, v6}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/am;->ai()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/applovin/impl/adview/n;->b:Lcom/applovin/sdk/AppLovinSdk;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/applovin/impl/adview/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;)V

    goto/16 :goto_0

    :cond_a
    invoke-static {v5}, Lcom/applovin/impl/sdk/fy;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v4, v5, p2}, Lcom/applovin/impl/adview/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/applovin/impl/sdk/fy;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    :goto_3
    iget-object v2, p0, Lcom/applovin/impl/adview/n;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v4, "AdWebView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rendering WebView for iFrame VAST ad with resourceContents: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/am;->ai()Ljava/lang/String;

    move-result-object v2

    const-string v4, "text/html"

    const/4 v5, 0x0

    const-string v6, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/applovin/impl/adview/n;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    move-object v3, v5

    goto :goto_3

    :cond_c
    iget-object v1, p0, Lcom/applovin/impl/adview/n;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "AdWebView"

    const-string v3, "Failed to render VAST companion ad of invalid type"

    invoke-interface {v1, v2, v3}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    iget-object v1, p0, Lcom/applovin/impl/adview/n;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "AdWebView"

    const-string v3, "Unable to load companion ad. No resources provided."

    invoke-interface {v1, v2, v3}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    iget-object v1, p0, Lcom/applovin/impl/adview/n;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "AdWebView"

    const-string v3, "No companion ad provided."

    invoke-interface {v1, v2, v3}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_f
    iget-object v1, p0, Lcom/applovin/impl/adview/n;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "AdWebView"

    const-string v3, "Ad can not be loaded in a destroyed webview"

    invoke-interface {v1, v2, v3}, Lcom/applovin/sdk/AppLovinLogger;->userError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/adview/n;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/adview/n;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "AdWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Forwarding \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" to ad template"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/n;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/n;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "AdWebView"

    const-string v3, "Unable to forward to template"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/n;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/applovin/impl/sdk/g;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/n;->c:Lcom/applovin/impl/sdk/g;

    return-object v0
.end method

.method public computeScroll()V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/adview/n;->f:Z

    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    iget-object v0, p0, Lcom/applovin/impl/adview/n;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "AdWebView"

    const-string v2, "Web view destroyed"

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/n;->a:Lcom/applovin/sdk/AppLovinLogger;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/adview/n;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "AdWebView"

    const-string v3, "destroy() threw exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 4

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->onFocusChanged(ZILandroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/n;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "AdWebView"

    const-string v3, "onFocusChanged() threw exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowFocusChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/n;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "AdWebView"

    const-string v3, "onWindowFocusChanged() threw exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 4

    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowVisibilityChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/n;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "AdWebView"

    const-string v3, "onWindowVisibilityChanged() threw exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 4

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->requestFocus(ILandroid/graphics/Rect;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/n;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "AdWebView"

    const-string v3, "requestFocus() threw exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 0

    return-void
.end method
