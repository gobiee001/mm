.class public final Lcom/moat/analytics/mobile/mpub/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/mpub/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AdsAttrs:[I

.field public static final AdsAttrs_adSize:I = 0x0

.field public static final AdsAttrs_adSizes:I = 0x1

.field public static final AdsAttrs_adUnitId:I = 0x2

.field public static final LoadingImageView:[I

.field public static final LoadingImageView_circleCrop:I = 0x2

.field public static final LoadingImageView_imageAspectRatio:I = 0x1

.field public static final LoadingImageView_imageAspectRatioAdjust:I = 0x0

.field public static final SignInButton:[I

.field public static final SignInButton_buttonSize:I = 0x0

.field public static final SignInButton_colorScheme:I = 0x1

.field public static final SignInButton_scopeUris:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 84
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/moat/analytics/mobile/mpub/R$styleable;->AdsAttrs:[I

    .line 88
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/moat/analytics/mobile/mpub/R$styleable;->LoadingImageView:[I

    .line 92
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/moat/analytics/mobile/mpub/R$styleable;->SignInButton:[I

    return-void

    .line 84
    nop

    :array_0
    .array-data 4
        0x7f010021
        0x7f010022
        0x7f010023
    .end array-data

    .line 88
    :array_1
    .array-data 4
        0x7f0100dd
        0x7f0100de
        0x7f0100df
    .end array-data

    .line 92
    :array_2
    .array-data 4
        0x7f01010e
        0x7f01010f
        0x7f010110
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
