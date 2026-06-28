.class Lcom/applovin/impl/adview/ar;
.super Landroid/app/Dialog;

# interfaces
.implements Lcom/applovin/impl/adview/aq;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/applovin/sdk/AppLovinSdk;

.field private final c:Lcom/applovin/sdk/AppLovinLogger;

.field private final d:Lcom/applovin/impl/adview/n;

.field private final e:Lcom/applovin/impl/sdk/m;

.field private final f:Ljava/lang/String;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Lcom/applovin/impl/adview/ak;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/m;Ljava/lang/String;Lcom/applovin/impl/adview/n;Landroid/app/Activity;Lcom/applovin/sdk/AppLovinSdk;)V
    .locals 2

    const v0, 0x1030010

    invoke-direct {p0, p4, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No ad specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No main view specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p5, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No sdk specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No activity specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p5, p0, Lcom/applovin/impl/adview/ar;->b:Lcom/applovin/sdk/AppLovinSdk;

    invoke-virtual {p5}, Lcom/applovin/sdk/AppLovinSdk;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/adview/ar;->c:Lcom/applovin/sdk/AppLovinLogger;

    iput-object p4, p0, Lcom/applovin/impl/adview/ar;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/applovin/impl/adview/ar;->d:Lcom/applovin/impl/adview/n;

    iput-object p1, p0, Lcom/applovin/impl/adview/ar;->e:Lcom/applovin/impl/sdk/m;

    iput-object p2, p0, Lcom/applovin/impl/adview/ar;->f:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/ar;->requestWindowFeature(I)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/ar;->setCancelable(Z)V

    return-void
.end method

.method private a(I)I
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/ar;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/applovin/impl/adview/ar;)Lcom/applovin/impl/adview/n;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/ar;->d:Lcom/applovin/impl/adview/n;

    return-object v0
.end method

.method private a(Lcom/applovin/impl/adview/al;)V
    .locals 13

    const/16 v2, 0xb

    const/16 v12, 0xa

    const/16 v1, 0x9

    const/4 v11, 0x5

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/applovin/impl/adview/ar;->h:Lcom/applovin/impl/adview/ak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/ar;->c:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "ExpandedAdDialog"

    const-string v2, "Attempting to create duplicate close button"

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/ar;->b:Lcom/applovin/sdk/AppLovinSdk;

    invoke-virtual {p0}, Lcom/applovin/impl/adview/ar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3, p1}, Lcom/applovin/impl/adview/ak;->a(Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;Lcom/applovin/impl/adview/al;)Lcom/applovin/impl/adview/ak;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/adview/ar;->h:Lcom/applovin/impl/adview/ak;

    iget-object v0, p0, Lcom/applovin/impl/adview/ar;->h:Lcom/applovin/impl/adview/ak;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/applovin/impl/adview/ak;->setVisibility(I)V

    iget-object v0, p0, Lcom/applovin/impl/adview/ar;->h:Lcom/applovin/impl/adview/ak;

    new-instance v3, Lcom/applovin/impl/adview/av;

    invoke-direct {v3, p0}, Lcom/applovin/impl/adview/av;-><init>(Lcom/applovin/impl/adview/ar;)V

    invoke-virtual {v0, v3}, Lcom/applovin/impl/adview/ak;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/ar;->h:Lcom/applovin/impl/adview/ak;

    invoke-virtual {v0, v10}, Lcom/applovin/impl/adview/ak;->setClickable(Z)V

    new-instance v3, Lcom/applovin/impl/sdk/eb;

    iget-object v0, p0, Lcom/applovin/impl/adview/ar;->b:Lcom/applovin/sdk/AppLovinSdk;

    invoke-direct {v3, v0}, Lcom/applovin/impl/sdk/eb;-><init>(Lcom/applovin/sdk/AppLovinSdk;)V

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/eb;->R()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/ar;->a(I)I

    move-result v4

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/eb;->U()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/applovin/impl/adview/ar;->h:Lcom/applovin/impl/adview/ak;

    invoke-virtual {v0, v4}, Lcom/applovin/impl/adview/ak;->a(I)V

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/eb;->T()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/ar;->a(I)I

    move-result v0

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/eb;->S()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/applovin/impl/adview/ar;->a(I)I

    move-result v6

    invoke-virtual {v5, v6, v0, v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v7, p0, Lcom/applovin/impl/adview/ar;->g:Landroid/widget/RelativeLayout;

    iget-object v8, p0, Lcom/applovin/impl/adview/ar;->h:Lcom/applovin/impl/adview/ak;

    invoke-virtual {v7, v8, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/applovin/impl/adview/ar;->h:Lcom/applovin/impl/adview/ak;

    invoke-virtual {v5}, Lcom/applovin/impl/adview/ak;->bringToFront()V

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/eb;->V()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/applovin/impl/adview/ar;->a(I)I

    move-result v5

    new-instance v7, Landroid/view/View;

    iget-object v8, p0, Lcom/applovin/impl/adview/ar;->a:Landroid/app/Activity;

    invoke-direct {v7, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v10}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    add-int v9, v4, v5

    add-int/2addr v4, v5

    invoke-direct {v8, v9, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/eb;->U()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-direct {p0, v11}, Lcom/applovin/impl/adview/ar;->a(I)I

    move-result v1

    sub-int v1, v6, v1

    invoke-direct {p0, v11}, Lcom/applovin/impl/adview/ar;->a(I)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-direct {p0, v11}, Lcom/applovin/impl/adview/ar;->a(I)I

    move-result v2

    sub-int v2, v6, v2

    invoke-virtual {v8, v1, v0, v2, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v0, Lcom/applovin/impl/adview/aw;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/aw;-><init>(Lcom/applovin/impl/adview/ar;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/ar;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7}, Landroid/view/View;->bringToFront()V

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method static synthetic b(Lcom/applovin/impl/adview/ar;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/ar;->g:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private b()V
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/applovin/impl/adview/ar;->d:Lcom/applovin/impl/adview/n;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/adview/n;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/applovin/impl/adview/ar;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/applovin/impl/adview/ar;->g:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/applovin/impl/adview/ar;->g:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/ar;->g:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x45000000    # -0.001953125f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/applovin/impl/adview/ar;->g:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/applovin/impl/adview/ar;->d:Lcom/applovin/impl/adview/n;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/ar;->e:Lcom/applovin/impl/sdk/m;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/m;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/ar;->e:Lcom/applovin/impl/sdk/m;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/m;->k()Lcom/applovin/impl/adview/al;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/ar;->a(Lcom/applovin/impl/adview/al;)V

    invoke-direct {p0}, Lcom/applovin/impl/adview/ar;->d()V

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/ar;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/ar;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/adview/ar;->d:Lcom/applovin/impl/adview/n;

    const-string v1, "javascript:al_onCloseTapped();"

    new-instance v2, Lcom/applovin/impl/adview/as;

    invoke-direct {v2, p0}, Lcom/applovin/impl/adview/as;-><init>(Lcom/applovin/impl/adview/ar;)V

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/adview/n;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/adview/ar;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/ar;->a:Landroid/app/Activity;

    new-instance v1, Lcom/applovin/impl/adview/ax;

    invoke-direct {v1, p0}, Lcom/applovin/impl/adview/ax;-><init>(Lcom/applovin/impl/adview/ar;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic d(Lcom/applovin/impl/adview/ar;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/adview/ar;->c()V

    return-void
.end method

.method static synthetic e(Lcom/applovin/impl/adview/ar;)Lcom/applovin/impl/adview/ak;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/ar;->h:Lcom/applovin/impl/adview/ak;

    return-object v0
.end method

.method static synthetic f(Lcom/applovin/impl/adview/ar;)Lcom/applovin/sdk/AppLovinSdk;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/ar;->b:Lcom/applovin/sdk/AppLovinSdk;

    return-object v0
.end method

.method static synthetic g(Lcom/applovin/impl/adview/ar;)Lcom/applovin/sdk/AppLovinLogger;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/ar;->c:Lcom/applovin/sdk/AppLovinLogger;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/applovin/impl/sdk/m;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/ar;->e:Lcom/applovin/impl/sdk/m;

    return-object v0
.end method

.method public dismiss()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/ar;->d:Lcom/applovin/impl/adview/n;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/n;->c()Lcom/applovin/impl/sdk/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/g;->e()V

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/ar;->a:Landroid/app/Activity;

    new-instance v1, Lcom/applovin/impl/adview/au;

    invoke-direct {v1, p0}, Lcom/applovin/impl/adview/au;-><init>(Lcom/applovin/impl/adview/ar;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/adview/ar;->d:Lcom/applovin/impl/adview/n;

    const-string v1, "javascript:al_onBackPressed();"

    new-instance v2, Lcom/applovin/impl/adview/at;

    invoke-direct {v2, p0}, Lcom/applovin/impl/adview/at;-><init>(Lcom/applovin/impl/adview/ar;)V

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/adview/n;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/applovin/impl/adview/ar;->b()V

    return-void
.end method

.method protected onStart()V
    .locals 4

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    :try_start_0
    invoke-virtual {p0}, Lcom/applovin/impl/adview/ar;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/adview/ar;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v2, p0, Lcom/applovin/impl/adview/ar;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    iget-object v1, p0, Lcom/applovin/impl/adview/ar;->e:Lcom/applovin/impl/sdk/m;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/m;->F()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/ar;->c:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "ExpandedAdDialog"

    const-string v2, "Unable to turn on hardware acceleration - window is null"

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/ar;->c:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "ExpandedAdDialog"

    const-string v3, "Setting window flags failed."

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
