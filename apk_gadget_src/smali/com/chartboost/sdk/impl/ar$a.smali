.class Lcom/chartboost/sdk/impl/ar$a;
.super Lcom/chartboost/sdk/impl/aq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/chartboost/sdk/impl/ar;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/ar;Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 83
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ar$a;->b:Lcom/chartboost/sdk/impl/ar;

    .line 84
    invoke-direct {p0, p2}, Lcom/chartboost/sdk/impl/aq;-><init>(Landroid/content/Context;)V

    .line 81
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ar$a;->c:Z

    .line 86
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ar$a;->c:Z

    .line 87
    return-void
.end method


# virtual methods
.method protected a(Z)V
    .locals 3

    .prologue
    const/high16 v2, 0x77000000

    .line 90
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ar$a;->b:Lcom/chartboost/sdk/impl/ar;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/ar;->e:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 91
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ar$a;->c:Z

    if-nez v0, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ar$a;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 93
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ar$a;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 96
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ar$a;->invalidate()V

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ar$a;->c:Z

    .line 109
    :cond_1
    :goto_1
    return-void

    .line 94
    :cond_2
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ar$a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ar$a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 100
    :cond_3
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ar$a;->c:Z

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ar$a;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 102
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ar$a;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 105
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ar$a;->invalidate()V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ar$a;->c:Z

    goto :goto_1

    .line 103
    :cond_5
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ar$a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 104
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ar$a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_2
.end method
