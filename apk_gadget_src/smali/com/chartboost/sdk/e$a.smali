.class public abstract Lcom/chartboost/sdk/e$a;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/Integer;

.field final synthetic b:Lcom/chartboost/sdk/e;

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/e;Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 45
    iput-object p1, p0, Lcom/chartboost/sdk/e$a;->b:Lcom/chartboost/sdk/e;

    .line 46
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/e$a;->c:Z

    .line 41
    iput v1, p0, Lcom/chartboost/sdk/e$a;->d:I

    iput v1, p0, Lcom/chartboost/sdk/e$a;->e:I

    .line 42
    iput v1, p0, Lcom/chartboost/sdk/e$a;->f:I

    iput v1, p0, Lcom/chartboost/sdk/e$a;->g:I

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/e$a;->a:Ljava/lang/Integer;

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/e$a;->setFocusableInTouchMode(Z)V

    .line 49
    invoke-virtual {p0}, Lcom/chartboost/sdk/e$a;->requestFocus()Z

    .line 50
    return-void
.end method

.method private b(II)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 64
    iget-object v2, p0, Lcom/chartboost/sdk/e$a;->b:Lcom/chartboost/sdk/e;

    iget-object v2, v2, Lcom/chartboost/sdk/e;->e:Lcom/chartboost/sdk/Model/c;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/chartboost/sdk/e$a;->b:Lcom/chartboost/sdk/e;

    iget-object v2, v2, Lcom/chartboost/sdk/e;->e:Lcom/chartboost/sdk/Model/c;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v2, v2, Lcom/chartboost/sdk/Model/a;->b:I

    if-ne v2, v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 67
    :cond_1
    iget-boolean v2, p0, Lcom/chartboost/sdk/e$a;->c:Z

    if-eqz v2, :cond_2

    move v0, v1

    .line 68
    goto :goto_0

    .line 70
    :cond_2
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()I

    move-result v2

    .line 71
    iget v3, p0, Lcom/chartboost/sdk/e$a;->d:I

    if-ne v3, p1, :cond_3

    iget v3, p0, Lcom/chartboost/sdk/e$a;->e:I

    if-ne v3, p2, :cond_3

    iget-object v3, p0, Lcom/chartboost/sdk/e$a;->a:Ljava/lang/Integer;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/chartboost/sdk/e$a;->a:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 74
    :cond_3
    iput-boolean v0, p0, Lcom/chartboost/sdk/e$a;->c:Z

    .line 77
    :try_start_0
    iget-object v3, p0, Lcom/chartboost/sdk/e$a;->b:Lcom/chartboost/sdk/e;

    iget-boolean v3, v3, Lcom/chartboost/sdk/e;->h:Z

    if-eqz v3, :cond_5

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 78
    iget-object v3, p0, Lcom/chartboost/sdk/e$a;->b:Lcom/chartboost/sdk/e;

    iput v2, v3, Lcom/chartboost/sdk/e;->f:I

    .line 81
    :cond_4
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/chartboost/sdk/e$a;->a(II)V

    .line 82
    new-instance v3, Lcom/chartboost/sdk/e$a$1;

    invoke-direct {v3, p0}, Lcom/chartboost/sdk/e$a$1;-><init>(Lcom/chartboost/sdk/e$a;)V

    invoke-virtual {p0, v3}, Lcom/chartboost/sdk/e$a;->post(Ljava/lang/Runnable;)Z

    .line 88
    iput p1, p0, Lcom/chartboost/sdk/e$a;->d:I

    .line 89
    iput p2, p0, Lcom/chartboost/sdk/e$a;->e:I

    .line 90
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/chartboost/sdk/e$a;->a:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_2
    iput-boolean v1, p0, Lcom/chartboost/sdk/e$a;->c:Z

    goto :goto_0

    .line 79
    :cond_5
    :try_start_1
    iget-object v3, p0, Lcom/chartboost/sdk/e$a;->b:Lcom/chartboost/sdk/e;

    iget-boolean v3, v3, Lcom/chartboost/sdk/e;->i:Z

    if-eqz v3, :cond_4

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->b(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 80
    iget-object v3, p0, Lcom/chartboost/sdk/e$a;->b:Lcom/chartboost/sdk/e;

    iput v2, v3, Lcom/chartboost/sdk/e;->f:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    const-string v2, "CBViewProtocol"

    const-string v3, "Exception raised while layouting Subviews"

    invoke-static {v2, v3, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "tryLayout"

    invoke-static {v2, v3, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/e$a;->a(Z)V

    .line 105
    return-void
.end method

.method protected abstract a(II)V
.end method

.method public final a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 167
    const/16 v0, 0xc8

    .line 168
    invoke-virtual {p0}, Lcom/chartboost/sdk/e$a;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 169
    const/16 v0, 0xc9

    .line 170
    :cond_0
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/e$a;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    move v1, v0

    move-object v0, v2

    .line 171
    :goto_0
    if-eqz v0, :cond_1

    .line 172
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/e$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    .line 175
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSaveEnabled(Z)V

    .line 176
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 109
    if-eqz p1, :cond_0

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/e$a;->a:Ljava/lang/Integer;

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/e$a;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/e$a;->a(Landroid/app/Activity;)Z

    .line 112
    return-void
.end method

.method public a(Landroid/app/Activity;)Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 124
    iget v0, p0, Lcom/chartboost/sdk/e$a;->f:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/chartboost/sdk/e$a;->g:I

    if-ne v0, v1, :cond_6

    .line 127
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/e$a;->getWidth()I

    move-result v1

    .line 128
    invoke-virtual {p0}, Lcom/chartboost/sdk/e$a;->getHeight()I

    move-result v0

    .line 129
    if-eqz v1, :cond_1

    if-nez v0, :cond_3

    .line 130
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 131
    if-nez v0, :cond_2

    .line 132
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 133
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 134
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 139
    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    if-nez v0, :cond_5

    .line 140
    :cond_4
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 141
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 142
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 143
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 146
    :cond_5
    iput v1, p0, Lcom/chartboost/sdk/e$a;->f:I

    .line 147
    iput v0, p0, Lcom/chartboost/sdk/e$a;->g:I

    .line 150
    :cond_6
    iget v0, p0, Lcom/chartboost/sdk/e$a;->f:I

    iget v1, p0, Lcom/chartboost/sdk/e$a;->g:I

    invoke-direct {p0, v0, v1}, Lcom/chartboost/sdk/e$a;->b(II)Z

    move-result v0

    return v0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 155
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 156
    iget-object v0, p0, Lcom/chartboost/sdk/e$a;->b:Lcom/chartboost/sdk/e;

    iget-object v1, v0, Lcom/chartboost/sdk/e;->g:Ljava/util/Map;

    monitor-enter v1

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/e$a;->b:Lcom/chartboost/sdk/e;

    iget-object v0, v0, Lcom/chartboost/sdk/e;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 158
    iget-object v3, p0, Lcom/chartboost/sdk/e$a;->b:Lcom/chartboost/sdk/e;

    iget-object v3, v3, Lcom/chartboost/sdk/e;->a:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 160
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/e$a;->b:Lcom/chartboost/sdk/e;

    iget-object v0, v0, Lcom/chartboost/sdk/e;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 161
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v1, -0x1

    .line 54
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 55
    iput p1, p0, Lcom/chartboost/sdk/e$a;->f:I

    .line 56
    iput p2, p0, Lcom/chartboost/sdk/e$a;->g:I

    .line 58
    iget v0, p0, Lcom/chartboost/sdk/e$a;->d:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/chartboost/sdk/e$a;->e:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/e$a;->b:Lcom/chartboost/sdk/e;

    iget-object v0, v0, Lcom/chartboost/sdk/e;->e:Lcom/chartboost/sdk/Model/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/e$a;->b:Lcom/chartboost/sdk/e;

    iget-object v0, v0, Lcom/chartboost/sdk/e;->e:Lcom/chartboost/sdk/Model/c;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v0, v0, Lcom/chartboost/sdk/Model/a;->b:I

    if-nez v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/chartboost/sdk/e$a;->a()V

    .line 61
    :cond_0
    return-void
.end method
