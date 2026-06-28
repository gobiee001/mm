.class Lcom/adcolony/sdk/bh;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adcolony/sdk/bh$a;,
        Lcom/adcolony/sdk/bh$b;
    }
.end annotation


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 779
    sput v0, Lcom/adcolony/sdk/bh;->a:I

    .line 781
    sput v0, Lcom/adcolony/sdk/bh;->b:I

    .line 783
    sput v0, Lcom/adcolony/sdk/bh;->c:I

    .line 785
    sput v0, Lcom/adcolony/sdk/bh;->d:I

    return-void
.end method

.method static a(Landroid/view/View;)F
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1318
    if-nez p0, :cond_0

    .line 1320
    const/4 v0, 0x0

    .line 1326
    :goto_0
    return v0

    .line 1323
    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/bh;->a()I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 1324
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1326
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Landroid/content/Context;ZZZ)F
    .locals 8

    .prologue
    .line 792
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 794
    :cond_0
    const/4 v0, 0x0

    .line 993
    :cond_1
    :goto_0
    return v0

    .line 797
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 798
    invoke-static {p0}, Lcom/adcolony/sdk/bh;->a(Landroid/view/View;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    .line 800
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 803
    :cond_4
    if-nez p2, :cond_5

    .line 805
    const/4 v0, 0x0

    goto :goto_0

    .line 808
    :cond_5
    if-eqz p4, :cond_6

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_6

    move-object v0, p1

    .line 810
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_6

    .line 812
    const/4 v0, 0x0

    goto :goto_0

    .line 816
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_b

    .line 818
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-float v1, v0

    .line 821
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 825
    invoke-virtual {p0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    .line 831
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    .line 835
    invoke-virtual {p0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 837
    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_1

    .line 839
    const/4 v5, 0x0

    const/4 v6, 0x0

    aget v6, v3, v6

    .line 840
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    aput v6, v4, v5

    .line 841
    const/4 v5, 0x1

    const/4 v6, 0x1

    aget v6, v3, v6

    .line 842
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    aput v6, v4, v5

    .line 844
    invoke-static {p1}, Lcom/adcolony/sdk/bh;->a(Landroid/content/Context;)I

    move-result v5

    .line 845
    invoke-static {p1}, Lcom/adcolony/sdk/bh;->b(Landroid/content/Context;)I

    move-result v6

    .line 872
    const/4 v7, 0x0

    aget v7, v4, v7

    if-ltz v7, :cond_7

    const/4 v7, 0x1

    aget v4, v4, v7

    if-ltz v4, :cond_7

    const/4 v4, 0x0

    aget v4, v3, v4

    if-gt v4, v6, :cond_7

    const/4 v4, 0x1

    aget v4, v3, v4

    if-gt v4, v5, :cond_7

    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-nez v4, :cond_8

    const/4 v4, 0x1

    aget v3, v3, v4

    div-int/lit8 v4, v5, 0x2

    if-le v3, v4, :cond_8

    .line 878
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 880
    :cond_8
    if-eqz v0, :cond_f

    .line 887
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 888
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 889
    mul-int/2addr v0, v3

    int-to-float v0, v0

    .line 890
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_f

    .line 893
    if-eqz p3, :cond_9

    .line 897
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, v2, v0, v3}, Lcom/adcolony/sdk/bh;->a(Landroid/view/View;Landroid/graphics/Rect;FZ)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 902
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_9

    cmpg-float v3, v2, v0

    if-gtz v3, :cond_9

    .line 905
    sub-float/2addr v0, v2

    .line 916
    :cond_9
    :goto_1
    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    .line 918
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_a

    .line 919
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 921
    :cond_a
    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 922
    const/high16 v0, 0x42c80000    # 100.0f

    goto/16 :goto_0

    .line 929
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_f

    .line 931
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    .line 934
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 935
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_3

    .line 937
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v0, v3

    .line 938
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    aput v3, v1, v2

    .line 939
    const/4 v2, 0x1

    const/4 v3, 0x1

    aget v3, v0, v3

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 940
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    const/4 v5, 0x0

    aget v5, v1, v5

    const/4 v6, 0x1

    aget v6, v1, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 945
    invoke-static {p1}, Lcom/adcolony/sdk/bh;->a(Landroid/content/Context;)I

    move-result v3

    .line 946
    invoke-static {p1}, Lcom/adcolony/sdk/bh;->b(Landroid/content/Context;)I

    move-result v4

    .line 948
    const/4 v5, 0x0

    aget v5, v1, v5

    if-ltz v5, :cond_c

    const/4 v5, 0x1

    aget v1, v1, v5

    if-ltz v1, :cond_c

    const/4 v1, 0x0

    aget v1, v0, v1

    if-gt v1, v4, :cond_c

    const/4 v1, 0x1

    aget v1, v0, v1

    if-gt v1, v3, :cond_c

    iget v1, v2, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_d

    const/4 v1, 0x1

    aget v0, v0, v1

    div-int/lit8 v1, v3, 0x2

    if-le v0, v1, :cond_d

    .line 954
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 957
    :cond_d
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 958
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-float v1, v0

    .line 960
    if-eqz p3, :cond_10

    .line 964
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p0, v2, v1, v0}, Lcom/adcolony/sdk/bh;->a(Landroid/view/View;Landroid/graphics/Rect;FZ)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 967
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_10

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_10

    .line 970
    sub-float v0, v1, v0

    .line 982
    :goto_2
    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    .line 984
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_e

    .line 985
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 975
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_2

    .line 987
    :cond_e
    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 988
    const/high16 v0, 0x42c80000    # 100.0f

    goto/16 :goto_0

    .line 993
    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 909
    :catch_1
    move-exception v2

    goto/16 :goto_1

    :cond_10
    move v0, v1

    goto :goto_2

    .line 831
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data

    .line 837
    :array_1
    .array-data 4
        -0x1
        -0x1
    .end array-data

    .line 931
    :array_2
    .array-data 4
        -0x1
        -0x1
    .end array-data

    .line 935
    :array_3
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method static a(Landroid/view/View;Landroid/graphics/Rect;FZ)F
    .locals 12

    .prologue
    .line 1000
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 1001
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 1002
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 1003
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 1004
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1005
    invoke-virtual {v7, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1006
    const/4 v3, 0x0

    .line 1007
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1008
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    .line 1009
    const/4 v2, 0x0

    .line 1012
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const v4, 0x1020002

    .line 1013
    invoke-virtual {v1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1020
    :goto_0
    const/4 v4, 0x0

    .line 1021
    :goto_1
    if-eqz v0, :cond_3

    .line 1022
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eq v2, v10, :cond_3

    .line 1024
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1025
    invoke-static {v0}, Lcom/adcolony/sdk/bh;->a(Landroid/view/View;)F

    move-result v2

    const/4 v11, 0x0

    cmpl-float v2, v2, v11

    if-nez v2, :cond_1

    .line 1262
    :cond_0
    :goto_2
    return p2

    .line 1015
    :catch_0
    move-exception v1

    move-object v1, v2

    goto :goto_0

    .line 1030
    :cond_1
    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    if-eq v0, v1, :cond_2

    .line 1033
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eqz v2, :cond_0

    .line 1034
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eqz v2, :cond_0

    .line 1037
    :cond_2
    invoke-virtual {v5, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1039
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_1

    .line 1047
    :cond_3
    if-eqz v0, :cond_0

    .line 1054
    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1055
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1058
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1060
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1062
    if-eqz v1, :cond_0

    .line 1067
    const-string v5, "viewpager"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .line 1068
    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    .line 1067
    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1074
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1075
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_4

    .line 1077
    add-int/lit8 v0, v0, 0x1

    .line 1078
    :goto_3
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 1082
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1083
    invoke-static {v5}, Lcom/adcolony/sdk/bh;->c(Landroid/view/View;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 1086
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_5

    .line 1087
    invoke-static {v5}, Lcom/adcolony/sdk/bh;->a(Landroid/view/View;)F

    move-result v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_5

    .line 1092
    invoke-virtual {v8, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1078
    :cond_5
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1098
    :cond_6
    invoke-static {v5}, Lcom/adcolony/sdk/bh;->b(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1099
    if-eqz v5, :cond_5

    .line 1101
    const/4 v10, 0x0

    .line 1102
    invoke-virtual {v8, v10, v5}, Ljava/util/LinkedList;->addAll(ILjava/util/Collection;)Z

    goto :goto_4

    .line 1111
    :cond_7
    invoke-virtual {v8}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :cond_8
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1113
    cmpl-float v1, v2, p2

    if-ltz v1, :cond_9

    move v0, v4

    move v3, v2

    .line 1168
    :goto_6
    if-nez v0, :cond_0

    .line 1174
    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1176
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    move p2, v3

    .line 1179
    goto/16 :goto_2

    .line 1121
    :cond_9
    if-eqz v0, :cond_a

    .line 1122
    :try_start_1
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 1123
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "BTN_CLOSE"

    .line 1124
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-nez v1, :cond_8

    .line 1137
    :cond_a
    :goto_7
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1140
    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    .line 1141
    if-eqz v0, :cond_8

    .line 1145
    if-eqz p3, :cond_b

    .line 1147
    iget v0, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1150
    :cond_b
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    .line 1151
    if-eqz v0, :cond_c

    .line 1154
    invoke-virtual {v6, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1155
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 1156
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-float v0, v0

    .line 1158
    cmpl-float v1, v0, p2

    if-ltz v1, :cond_d

    .line 1160
    const/4 v1, 0x1

    move v3, v0

    move v0, v1

    .line 1161
    goto :goto_6

    :cond_c
    move v0, v2

    :cond_d
    move v2, v0

    .line 1166
    goto :goto_5

    .line 1183
    :cond_e
    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1184
    :cond_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1186
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 1187
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 1188
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1189
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_f

    .line 1192
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 1193
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v4

    .line 1194
    if-eqz v4, :cond_11

    .line 1205
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1206
    const/4 v4, 0x1

    :goto_9
    const/16 v6, 0x9

    if-ge v4, v6, :cond_11

    .line 1208
    invoke-static {v1, v0, v4}, Lcom/adcolony/sdk/bh;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v6

    .line 1210
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-lez v8, :cond_10

    .line 1211
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-lez v8, :cond_10

    .line 1219
    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1206
    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 1189
    :cond_11
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_8

    .line 1236
    :cond_12
    invoke-virtual {v7}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1238
    const/4 v0, 0x0

    .line 1239
    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    .line 1240
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1242
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 1243
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    mul-int/2addr v0, v4

    int-to-float v0, v0

    .line 1244
    add-float/2addr v0, v1

    move v1, v0

    .line 1246
    goto :goto_a

    .line 1248
    :cond_13
    cmpg-float v0, v1, p2

    if-gez v0, :cond_14

    .line 1250
    sub-float/2addr p2, v1

    .line 1254
    goto/16 :goto_2

    :cond_14
    move p2, v3

    .line 1262
    goto/16 :goto_2

    .line 1129
    :catch_1
    move-exception v1

    goto/16 :goto_7

    :cond_15
    move v0, v4

    move v3, v2

    goto/16 :goto_6
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 1520
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static a(Landroid/content/Context;)I
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1412
    const/4 v0, -0x1

    .line 1413
    if-eqz p0, :cond_5

    .line 1415
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move v1, v0

    .line 1417
    :goto_0
    if-ne v1, v5, :cond_1

    sget v0, Lcom/adcolony/sdk/bh;->a:I

    if-lez v0, :cond_1

    .line 1420
    sget v0, Lcom/adcolony/sdk/bh;->a:I

    .line 1459
    :cond_0
    :goto_1
    return v0

    .line 1423
    :cond_1
    if-ne v1, v4, :cond_2

    sget v0, Lcom/adcolony/sdk/bh;->c:I

    if-lez v0, :cond_2

    .line 1426
    sget v0, Lcom/adcolony/sdk/bh;->c:I

    goto :goto_1

    .line 1432
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1434
    invoke-static {}, Lcom/adcolony/sdk/bh;->a()I

    move-result v2

    const/16 v3, 0xd

    if-lt v2, v3, :cond_3

    .line 1438
    invoke-static {v0}, Lcom/adcolony/sdk/bh$a;->a(Landroid/view/WindowManager;)I

    move-result v0

    .line 1445
    :goto_2
    if-ne v1, v5, :cond_4

    .line 1447
    sput v0, Lcom/adcolony/sdk/bh;->a:I

    goto :goto_1

    .line 1456
    :catch_0
    move-exception v0

    .line 1459
    const/4 v0, 0x0

    goto :goto_1

    .line 1442
    :cond_3
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    goto :goto_2

    .line 1450
    :cond_4
    if-ne v1, v4, :cond_0

    .line 1452
    sput v0, Lcom/adcolony/sdk/bh;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_5
    move v1, v0

    goto :goto_0
.end method

.method static a(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 1268
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1269
    packed-switch p2, :pswitch_data_0

    .line 1312
    :goto_0
    return-object v0

    .line 1272
    :pswitch_0
    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1277
    :pswitch_1
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1282
    :pswitch_2
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1287
    :pswitch_3
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1292
    :pswitch_4
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Landroid/graphics/Rect;->right:I

    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1297
    :pswitch_5
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1302
    :pswitch_6
    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1307
    :pswitch_7
    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1269
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;)I
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1467
    const/4 v0, -0x1

    .line 1468
    if-eqz p0, :cond_5

    .line 1470
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move v1, v0

    .line 1473
    :goto_0
    if-ne v1, v5, :cond_1

    sget v0, Lcom/adcolony/sdk/bh;->b:I

    if-lez v0, :cond_1

    .line 1476
    sget v0, Lcom/adcolony/sdk/bh;->b:I

    .line 1513
    :cond_0
    :goto_1
    return v0

    .line 1479
    :cond_1
    if-ne v1, v4, :cond_2

    sget v0, Lcom/adcolony/sdk/bh;->d:I

    if-lez v0, :cond_2

    .line 1482
    sget v0, Lcom/adcolony/sdk/bh;->d:I

    goto :goto_1

    .line 1489
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1491
    invoke-static {}, Lcom/adcolony/sdk/bh;->a()I

    move-result v2

    const/16 v3, 0xd

    if-lt v2, v3, :cond_3

    .line 1493
    invoke-static {v0}, Lcom/adcolony/sdk/bh$b;->a(Landroid/view/WindowManager;)I

    move-result v0

    .line 1500
    :goto_2
    if-ne v1, v5, :cond_4

    .line 1502
    sput v0, Lcom/adcolony/sdk/bh;->b:I

    goto :goto_1

    .line 1510
    :catch_0
    move-exception v0

    .line 1513
    const/4 v0, 0x0

    goto :goto_1

    .line 1497
    :cond_3
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    goto :goto_2

    .line 1504
    :cond_4
    if-ne v1, v4, :cond_0

    .line 1506
    sput v0, Lcom/adcolony/sdk/bh;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_5
    move v1, v0

    goto :goto_0
.end method

.method private static b(Landroid/view/View;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 1333
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    move-object v0, v2

    .line 1394
    :goto_0
    return-object v0

    .line 1335
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1336
    invoke-static {p0}, Lcom/adcolony/sdk/bh;->a(Landroid/view/View;)F

    move-result v0

    cmpl-float v0, v0, v8

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v2

    .line 1337
    goto :goto_0

    .line 1339
    :cond_2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1340
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1342
    check-cast p0, Landroid/view/ViewGroup;

    .line 1343
    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1345
    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    .line 1347
    :cond_3
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1349
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1350
    invoke-interface {v5}, Ljava/util/ListIterator;->remove()V

    .line 1351
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 1352
    const/4 v1, 0x0

    move v4, v1

    :goto_1
    if-ge v4, v6, :cond_3

    .line 1355
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1356
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_4

    .line 1357
    invoke-static {v1}, Lcom/adcolony/sdk/bh;->a(Landroid/view/View;)F

    move-result v7

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_4

    .line 1359
    instance-of v7, v1, Landroid/view/ViewGroup;

    if-eqz v7, :cond_6

    .line 1361
    invoke-static {v1}, Lcom/adcolony/sdk/bh;->c(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1367
    check-cast v1, Landroid/view/ViewGroup;

    .line 1368
    invoke-interface {v5, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 1370
    invoke-interface {v5}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 1352
    :cond_4
    :goto_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 1376
    :cond_5
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1380
    :cond_6
    invoke-static {v1}, Lcom/adcolony/sdk/bh;->c(Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1382
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1389
    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    move-object v0, v3

    .line 1391
    goto :goto_0

    :cond_8
    move-object v0, v2

    .line 1394
    goto :goto_0
.end method

.method private static c(Landroid/view/View;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1401
    if-nez p0, :cond_1

    .line 1404
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1405
    invoke-static {}, Lcom/adcolony/sdk/bh;->a()I

    move-result v1

    const/16 v2, 0x12

    if-le v1, v2, :cond_0

    .line 1406
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
