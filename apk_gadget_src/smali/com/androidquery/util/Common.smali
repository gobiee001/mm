.class public Lcom/androidquery/util/Common;
.super Ljava/lang/Object;
.source "Common.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Ljava/lang/Runnable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "Ljava/lang/Runnable;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private fallback:Z

.field private galleryListen:Z

.field private galleryListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private handler:Ljava/lang/Object;

.field private lastBottom:I

.field private method:Ljava/lang/String;

.field private methodId:I

.field private osl:Landroid/widget/AbsListView$OnScrollListener;

.field private params:[Ljava/lang/Object;

.field private scrollState:I

.field private sig:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput v0, p0, Lcom/androidquery/util/Common;->scrollState:I

    .line 422
    iput-boolean v0, p0, Lcom/androidquery/util/Common;->galleryListen:Z

    .line 50
    return-void
.end method

.method private checkScrolledBottom(Landroid/widget/AbsListView;I)V
    .locals 3

    .prologue
    .line 186
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    .line 187
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    .line 189
    if-nez p2, :cond_1

    add-int/lit8 v2, v1, 0x1

    if-ne v0, v2, :cond_1

    .line 190
    iget v0, p0, Lcom/androidquery/util/Common;->lastBottom:I

    if-eq v1, v0, :cond_0

    .line 191
    iput v1, p0, Lcom/androidquery/util/Common;->lastBottom:I

    .line 192
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/androidquery/util/Common;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/androidquery/util/Common;->lastBottom:I

    goto :goto_0
.end method

.method private varargs invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 82
    iget-object v0, p0, Lcom/androidquery/util/Common;->method:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/androidquery/util/Common;->params:[Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 86
    iget-object v5, p0, Lcom/androidquery/util/Common;->params:[Ljava/lang/Object;

    .line 89
    :goto_0
    iget-object v0, p0, Lcom/androidquery/util/Common;->handler:Ljava/lang/Object;

    .line 90
    if-nez v0, :cond_0

    move-object v0, p0

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/androidquery/util/Common;->method:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/androidquery/util/Common;->fallback:Z

    iget-object v4, p0, Lcom/androidquery/util/Common;->sig:[Ljava/lang/Class;

    invoke-static/range {v0 .. v5}, Lcom/androidquery/util/AQUtility;->invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 112
    :goto_1
    return-object v0

    .line 96
    :cond_1
    iget v0, p0, Lcom/androidquery/util/Common;->methodId:I

    if-eqz v0, :cond_2

    .line 98
    iget v0, p0, Lcom/androidquery/util/Common;->methodId:I

    packed-switch v0, :pswitch_data_0

    .line 112
    :cond_2
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    .line 101
    :pswitch_0
    iget-object v0, p0, Lcom/androidquery/util/Common;->params:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Ljava/io/File;

    iget-object v1, p0, Lcom/androidquery/util/Common;->params:[Ljava/lang/Object;

    aget-object v1, v1, v3

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v1, p0, Lcom/androidquery/util/Common;->params:[Ljava/lang/Object;

    const/4 v4, 0x2

    aget-object v1, v1, v4

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v0, v2, v3, v4, v5}, Lcom/androidquery/util/AQUtility;->cleanCache(Ljava/io/File;JJ)V

    goto :goto_2

    .line 104
    :pswitch_1
    iget-object v0, p0, Lcom/androidquery/util/Common;->params:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Ljava/io/File;

    iget-object v1, p0, Lcom/androidquery/util/Common;->params:[Ljava/lang/Object;

    aget-object v1, v1, v3

    check-cast v1, [B

    invoke-static {v0, v1}, Lcom/androidquery/util/AQUtility;->store(Ljava/io/File;[B)V

    goto :goto_2

    :cond_3
    move-object v5, p1

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onScrollStateChanged(Landroid/widget/ExpandableListView;I)V
    .locals 14

    .prologue
    .line 218
    const v0, 0x40ff0004

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/ExpandableListView;->setTag(ILjava/lang/Object;)V

    .line 220
    if-nez p2, :cond_0

    .line 222
    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getFirstVisiblePosition()I

    move-result v7

    .line 223
    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getLastVisiblePosition()I

    move-result v0

    .line 225
    sub-int v8, v0, v7

    .line 227
    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 229
    const/4 v1, 0x0

    move v6, v1

    :goto_0
    if-le v6, v8, :cond_1

    .line 265
    :cond_0
    return-void

    .line 231
    :cond_1
    add-int v1, v6, v7

    invoke-virtual {p1, v1}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v10

    .line 233
    invoke-static {v10, v11}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    .line 234
    invoke-static {v10, v11}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v2

    .line 236
    if-ltz v1, :cond_2

    .line 238
    invoke-virtual {p1, v6}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 239
    const v3, 0x40ff0004

    invoke-virtual {v4, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 241
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v3, v12, v10

    if-nez v3, :cond_2

    .line 243
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 245
    invoke-virtual {p1, v1}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v2

    invoke-interface {v0, v1, v2, v4, p1}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 252
    :goto_1
    const v1, 0x40ff0004

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 229
    :cond_2
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_0

    .line 249
    :cond_3
    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_4

    const/4 v3, 0x1

    :goto_2
    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private onScrollStateChanged2(Landroid/widget/AbsListView;I)V
    .locals 9

    .prologue
    const v8, 0x40ff0004

    .line 270
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v8, v0}, Landroid/widget/AbsListView;->setTag(ILjava/lang/Object;)V

    .line 272
    if-nez p2, :cond_0

    .line 274
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    .line 275
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    .line 277
    sub-int v4, v0, v3

    .line 279
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 281
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-le v2, v4, :cond_1

    .line 298
    :cond_0
    return-void

    .line 283
    :cond_1
    add-int v1, v2, v3

    int-to-long v6, v1

    .line 285
    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 286
    invoke-virtual {v5, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    .line 288
    if-eqz v1, :cond_2

    .line 289
    long-to-int v1, v6

    invoke-interface {v0, v1, v5, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 290
    const/4 v1, 0x0

    invoke-virtual {v5, v8, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 281
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method public static showProgress(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const v4, 0x40ff0001

    const/4 v3, 0x0

    .line 489
    if-eqz p0, :cond_0

    .line 491
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_4

    move-object v0, p0

    .line 493
    check-cast v0, Landroid/view/View;

    .line 497
    instance-of v2, p0, Landroid/widget/ProgressBar;

    if-eqz v2, :cond_7

    .line 498
    check-cast p0, Landroid/widget/ProgressBar;

    .line 501
    :goto_0
    if-eqz p2, :cond_1

    .line 502
    invoke-virtual {v0, v4, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 503
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 504
    if-eqz p0, :cond_0

    .line 505
    invoke-virtual {p0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 506
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 543
    :cond_0
    :goto_1
    return-void

    .line 510
    :cond_1
    invoke-virtual {v0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 511
    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 512
    :cond_2
    invoke-virtual {v0, v4, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 514
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 515
    :cond_3
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 519
    :cond_4
    instance-of v0, p0, Landroid/app/Dialog;

    if-eqz v0, :cond_6

    .line 521
    check-cast p0, Landroid/app/Dialog;

    .line 523
    new-instance v0, Lcom/androidquery/AQuery;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    .line 525
    if-eqz p2, :cond_5

    .line 526
    invoke-virtual {v0, p0}, Lcom/androidquery/AQuery;->show(Landroid/app/Dialog;)Lcom/androidquery/AbstractAQuery;

    goto :goto_1

    .line 528
    :cond_5
    invoke-virtual {v0, p0}, Lcom/androidquery/AQuery;->dismiss(Landroid/app/Dialog;)Lcom/androidquery/AbstractAQuery;

    goto :goto_1

    .line 531
    :cond_6
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 533
    check-cast p0, Landroid/app/Activity;

    .line 534
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 535
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    .line 537
    if-eqz p2, :cond_0

    .line 538
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setProgress(I)V

    goto :goto_1

    :cond_7
    move-object p0, v1

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 406
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 412
    return-void
.end method

.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 5

    .prologue
    .line 119
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 120
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 122
    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    .line 123
    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    .line 124
    :cond_0
    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 125
    const/4 v0, 0x0

    goto :goto_0

    .line 127
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/androidquery/util/Common;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public varargs method(I[Ljava/lang/Object;)Lcom/androidquery/util/Common;
    .locals 0

    .prologue
    .line 73
    iput p1, p0, Lcom/androidquery/util/Common;->methodId:I

    .line 74
    iput-object p2, p0, Lcom/androidquery/util/Common;->params:[Ljava/lang/Object;

    .line 76
    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 145
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/androidquery/util/Common;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 159
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/androidquery/util/Common;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const v7, 0x40ff0004

    .line 435
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v6

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/androidquery/util/Common;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    iget-object v0, p0, Lcom/androidquery/util/Common;->galleryListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/androidquery/util/Common;->galleryListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 441
    :cond_0
    iget-boolean v0, p0, Lcom/androidquery/util/Common;->galleryListen:Z

    if-eqz v0, :cond_1

    .line 443
    invoke-virtual {p1, v7}, Landroid/widget/AdapterView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 445
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p3, :cond_1

    .line 447
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    .line 448
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Landroid/widget/AdapterView;->setTag(ILjava/lang/Object;)V

    .line 450
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v3

    .line 454
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v4

    move v1, v6

    .line 456
    :goto_0
    if-lt v1, v3, :cond_2

    .line 475
    :cond_1
    return-void

    .line 457
    :cond_2
    invoke-virtual {p1, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 459
    add-int v6, v4, v1

    .line 461
    invoke-virtual {v5, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 463
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v6, :cond_4

    .line 467
    :cond_3
    invoke-interface {v2, v6, v5, p1}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 456
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 150
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/androidquery/util/Common;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 151
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 152
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 154
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 481
    iget-object v0, p0, Lcom/androidquery/util/Common;->galleryListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/androidquery/util/Common;->galleryListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    .line 485
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/androidquery/util/Common;->scrollState:I

    invoke-direct {p0, p1, v0}, Lcom/androidquery/util/Common;->checkScrolledBottom(Landroid/widget/AbsListView;I)V

    .line 171
    iget-object v0, p0, Lcom/androidquery/util/Common;->osl:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidquery/util/Common;->osl:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 173
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 203
    iput p2, p0, Lcom/androidquery/util/Common;->scrollState:I

    .line 205
    invoke-direct {p0, p1, p2}, Lcom/androidquery/util/Common;->checkScrolledBottom(Landroid/widget/AbsListView;I)V

    .line 207
    instance-of v0, p1, Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 208
    check-cast v0, Landroid/widget/ExpandableListView;

    invoke-direct {p0, v0, p2}, Lcom/androidquery/util/Common;->onScrollStateChanged(Landroid/widget/ExpandableListView;I)V

    .line 213
    :goto_0
    iget-object v0, p0, Lcom/androidquery/util/Common;->osl:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidquery/util/Common;->osl:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 214
    :cond_0
    return-void

    .line 210
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/androidquery/util/Common;->onScrollStateChanged2(Landroid/widget/AbsListView;I)V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    .line 418
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/androidquery/util/Common;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/androidquery/util/Common;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    return-void
.end method
