.class Lcom/amazon/device/ads/DisplayUtils;
.super Ljava/lang/Object;
.source "DisplayUtils.java"


# static fields
.field private static rotationArray:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 11
    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazon/device/ads/DisplayUtils;->rotationArray:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x9
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x9
        0x8
        0x1
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static determineCanonicalScreenOrientation(Landroid/content/Context;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 29
    const-string v8, "window"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 30
    .local v5, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 31
    .local v0, "display":Landroid/view/Display;
    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->getOrientation(Landroid/view/Display;)I

    move-result v3

    .line 32
    .local v3, "rotation":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v2, v8, Landroid/content/res/Configuration;->orientation:I

    .line 34
    .local v2, "orientation":I
    const/4 v1, 0x0

    .line 35
    .local v1, "naturalOrientationIsPortrait":Z
    if-ne v2, v7, :cond_2

    .line 36
    if-eqz v3, :cond_0

    if-ne v3, v9, :cond_1

    :cond_0
    move v1, v7

    .line 42
    :goto_0
    if-eqz v1, :cond_6

    move v4, v6

    .line 43
    .local v4, "rotationSelector":I
    :goto_1
    sget-object v6, Lcom/amazon/device/ads/DisplayUtils;->rotationArray:[[I

    aget-object v6, v6, v4

    aget v6, v6, v3

    return v6

    .end local v4    # "rotationSelector":I
    :cond_1
    move v1, v6

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    if-ne v2, v9, :cond_5

    .line 38
    if-eq v3, v7, :cond_3

    const/4 v8, 0x3

    if-ne v3, v8, :cond_4

    :cond_3
    move v1, v7

    :goto_2
    goto :goto_0

    :cond_4
    move v1, v6

    goto :goto_2

    .line 40
    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    move v4, v7

    .line 42
    goto :goto_1
.end method
