.class public Lcom/androidquery/util/Progress;
.super Ljava/lang/Object;
.source "Progress.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private act:Landroid/app/Activity;

.field private bytes:I

.field private current:I

.field private pb:Landroid/widget/ProgressBar;

.field private pd:Landroid/app/ProgressDialog;

.field private unknown:Z

.field private url:Ljava/lang/String;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    instance-of v0, p1, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 25
    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    instance-of v0, p1, Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    .line 27
    check-cast p1, Landroid/app/ProgressDialog;

    iput-object p1, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 28
    :cond_2
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 29
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/androidquery/util/Progress;->act:Landroid/app/Activity;

    goto :goto_0

    .line 30
    :cond_3
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 31
    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/androidquery/util/Progress;->view:Landroid/view/View;

    goto :goto_0
.end method

.method private dismiss(Ljava/lang/String;)V
    .locals 4

    .prologue
    const v3, 0x40ff0001

    const/4 v2, 0x0

    .line 164
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Lcom/androidquery/AQuery;

    iget-object v1, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    .line 166
    iget-object v1, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Lcom/androidquery/AQuery;->dismiss(Landroid/app/Dialog;)Lcom/androidquery/AbstractAQuery;

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/androidquery/util/Progress;->act:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/androidquery/util/Progress;->act:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 171
    iget-object v0, p0, Lcom/androidquery/util/Progress;->act:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3, p1}, Landroid/widget/ProgressBar;->setTag(ILjava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    .line 180
    if-nez v0, :cond_3

    .line 181
    iget-object v0, p0, Lcom/androidquery/util/Progress;->view:Landroid/view/View;

    .line 184
    :cond_3
    if-eqz v0, :cond_5

    .line 186
    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 187
    if-eqz v1, :cond_4

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 188
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 190
    iget-object v1, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 191
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 196
    :cond_5
    return-void
.end method


# virtual methods
.method public done()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/androidquery/util/Progress;->act:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/androidquery/util/Progress;->act:Landroid/app/Activity;

    const/16 v1, 0x270f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgress(I)V

    .line 118
    :cond_2
    return-void
.end method

.method public increment(I)V
    .locals 4

    .prologue
    const/16 v2, 0x270f

    const/4 v1, 0x1

    .line 80
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 81
    iget-object v3, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    iget-boolean v0, p0, Lcom/androidquery/util/Progress;->unknown:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    iget-boolean v3, p0, Lcom/androidquery/util/Progress;->unknown:Z

    if-eqz v3, :cond_5

    :goto_1
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/androidquery/util/Progress;->act:Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 90
    iget-boolean v0, p0, Lcom/androidquery/util/Progress;->unknown:Z

    if-eqz v0, :cond_6

    .line 91
    iget v0, p0, Lcom/androidquery/util/Progress;->current:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/androidquery/util/Progress;->current:I

    .line 96
    :goto_2
    if-le v0, v2, :cond_2

    move v0, v2

    .line 99
    :cond_2
    iget-object v1, p0, Lcom/androidquery/util/Progress;->act:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setProgress(I)V

    .line 102
    :cond_3
    return-void

    :cond_4
    move v0, p1

    .line 81
    goto :goto_0

    :cond_5
    move v1, p1

    .line 85
    goto :goto_1

    .line 93
    :cond_6
    iget v0, p0, Lcom/androidquery/util/Progress;->current:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/androidquery/util/Progress;->current:I

    .line 94
    iget v0, p0, Lcom/androidquery/util/Progress;->current:I

    mul-int/lit16 v0, v0, 0x2710

    iget v1, p0, Lcom/androidquery/util/Progress;->bytes:I

    div-int/2addr v0, v1

    goto :goto_2
.end method

.method public reset()V
    .locals 3

    .prologue
    const/16 v2, 0x2710

    const/4 v1, 0x0

    .line 38
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 40
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 44
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/androidquery/util/Progress;->act:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 48
    iget-object v0, p0, Lcom/androidquery/util/Progress;->act:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgress(I)V

    .line 51
    :cond_2
    iput-boolean v1, p0, Lcom/androidquery/util/Progress;->unknown:Z

    .line 52
    iput v1, p0, Lcom/androidquery/util/Progress;->current:I

    .line 53
    iput v2, p0, Lcom/androidquery/util/Progress;->bytes:I

    .line 55
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/androidquery/util/Progress;->url:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/androidquery/util/Progress;->dismiss(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public setBytes(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    if-gtz p1, :cond_0

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androidquery/util/Progress;->unknown:Z

    .line 61
    const/16 p1, 0x2710

    .line 64
    :cond_0
    iput p1, p0, Lcom/androidquery/util/Progress;->bytes:I

    .line 66
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 68
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 72
    iget-object v0, p0, Lcom/androidquery/util/Progress;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 76
    :cond_2
    return-void
.end method
