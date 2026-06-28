.class public Lcom/chartboost/sdk/impl/ax$b;
.super Lcom/chartboost/sdk/e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/ax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public c:Lcom/chartboost/sdk/impl/aw;

.field public d:Lcom/chartboost/sdk/impl/av;

.field public e:Landroid/widget/RelativeLayout;

.field public f:Landroid/widget/RelativeLayout;

.field final synthetic g:Lcom/chartboost/sdk/impl/ax;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/ax;Landroid/content/Context;Ljava/lang/String;)V
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 118
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ax$b;->g:Lcom/chartboost/sdk/impl/ax;

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/e$a;-><init>(Lcom/chartboost/sdk/e;Landroid/content/Context;)V

    .line 121
    invoke-virtual {p0, v11}, Lcom/chartboost/sdk/impl/ax$b;->setFocusable(Z)V

    .line 122
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v7

    .line 123
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ax$b;->e:Landroid/widget/RelativeLayout;

    .line 124
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ax$b;->f:Landroid/widget/RelativeLayout;

    .line 125
    new-instance v0, Lcom/chartboost/sdk/impl/aw;

    invoke-direct {v0, p2}, Lcom/chartboost/sdk/impl/aw;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/aw;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ax$b;->c:Lcom/chartboost/sdk/impl/aw;

    .line 126
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax$b;->c:Lcom/chartboost/sdk/impl/aw;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/ax;->l:Landroid/content/SharedPreferences;

    invoke-static {p2, v0, v1}, Lcom/chartboost/sdk/h;->a(Landroid/content/Context;Landroid/webkit/WebView;Landroid/content/SharedPreferences;)V

    .line 128
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ax$b;->c:Lcom/chartboost/sdk/impl/aw;

    new-instance v0, Lcom/chartboost/sdk/impl/ax$a;

    invoke-direct {v0, p1, v3}, Lcom/chartboost/sdk/impl/ax$a;-><init>(Lcom/chartboost/sdk/impl/ax;Lcom/chartboost/sdk/impl/ax$1;)V

    invoke-virtual {v7, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebViewClient;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/aw;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 129
    new-instance v0, Lcom/chartboost/sdk/impl/av;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ax$b;->e:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ax$b;->f:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ax$b;->c:Lcom/chartboost/sdk/impl/aw;

    iget-object v6, p1, Lcom/chartboost/sdk/impl/ax;->a:Landroid/os/Handler;

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/chartboost/sdk/impl/av;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/chartboost/sdk/impl/aw;Lcom/chartboost/sdk/impl/ax;Landroid/os/Handler;)V

    invoke-virtual {v7, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/av;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ax$b;->d:Lcom/chartboost/sdk/impl/av;

    .line 130
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax$b;->c:Lcom/chartboost/sdk/impl/aw;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ax$b;->d:Lcom/chartboost/sdk/impl/av;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/aw;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 131
    invoke-static {}, Lcom/chartboost/sdk/impl/m;->a()Lcom/chartboost/sdk/impl/m;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/m;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax$b;->c:Lcom/chartboost/sdk/impl/aw;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/chartboost/sdk/impl/aw;->setWebContentsDebuggingEnabled(Z)V

    .line 134
    :cond_0
    iget-object v4, p0, Lcom/chartboost/sdk/impl/ax$b;->c:Lcom/chartboost/sdk/impl/aw;

    iget-object v5, p1, Lcom/chartboost/sdk/impl/ax;->n:Ljava/lang/String;

    const-string v7, "text/html"

    const-string v8, "utf-8"

    move-object v6, p3

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/chartboost/sdk/impl/aw;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax$b;->e:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ax$b;->c:Lcom/chartboost/sdk/impl/aw;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 136
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax$b;->c:Lcom/chartboost/sdk/impl/aw;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/aw;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 138
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 140
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ax$b;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ax$b;->c:Lcom/chartboost/sdk/impl/aw;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/aw;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ax$b;->c:Lcom/chartboost/sdk/impl/aw;

    invoke-virtual {v1, v11}, Lcom/chartboost/sdk/impl/aw;->setBackgroundColor(I)V

    .line 146
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ax$b;->f:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 147
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ax$b;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax$b;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ax$b;->addView(Landroid/view/View;)V

    .line 150
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax$b;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ax$b;->addView(Landroid/view/View;)V

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/chartboost/sdk/impl/ax;->p:J

    .line 153
    instance-of v0, p2, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 154
    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p1, Lcom/chartboost/sdk/impl/ax;->F:I

    .line 159
    :goto_0
    iget-object v0, p1, Lcom/chartboost/sdk/impl/ax;->a:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/ax$b$1;

    invoke-direct {v1, p0, p1}, Lcom/chartboost/sdk/impl/ax$b$1;-><init>(Lcom/chartboost/sdk/impl/ax$b;Lcom/chartboost/sdk/impl/ax;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 169
    return-void

    .line 156
    :cond_1
    iput v10, p1, Lcom/chartboost/sdk/impl/ax;->F:I

    goto :goto_0
.end method


# virtual methods
.method protected a(II)V
    .locals 0

    .prologue
    .line 173
    return-void
.end method
