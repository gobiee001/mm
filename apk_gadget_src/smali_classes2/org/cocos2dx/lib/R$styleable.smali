.class public final Lorg/cocos2dx/lib/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final FontFamily:[I

.field public static final FontFamilyFont:[I

.field public static final FontFamilyFont_android_font:I = 0x0

.field public static final FontFamilyFont_android_fontStyle:I = 0x2

.field public static final FontFamilyFont_android_fontWeight:I = 0x1

.field public static final FontFamilyFont_font:I = 0x4

.field public static final FontFamilyFont_fontStyle:I = 0x3

.field public static final FontFamilyFont_fontWeight:I = 0x5

.field public static final FontFamily_fontProviderAuthority:I = 0x0

.field public static final FontFamily_fontProviderCerts:I = 0x3

.field public static final FontFamily_fontProviderFetchStrategy:I = 0x4

.field public static final FontFamily_fontProviderFetchTimeout:I = 0x5

.field public static final FontFamily_fontProviderPackage:I = 0x1

.field public static final FontFamily_fontProviderQuery:I = 0x2

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
    .locals 3

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x3

    .line 207
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/cocos2dx/lib/R$styleable;->FontFamily:[I

    .line 208
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/cocos2dx/lib/R$styleable;->FontFamilyFont:[I

    .line 221
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/cocos2dx/lib/R$styleable;->LoadingImageView:[I

    .line 225
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/cocos2dx/lib/R$styleable;->SignInButton:[I

    return-void

    .line 207
    nop

    :array_0
    .array-data 4
        0x7f0100c2
        0x7f0100c3
        0x7f0100c4
        0x7f0100c5
        0x7f0100c6
        0x7f0100c7
    .end array-data

    .line 208
    :array_1
    .array-data 4
        0x1010532
        0x1010533
        0x101053f
        0x7f0100c8
        0x7f0100c9
        0x7f0100ca
    .end array-data

    .line 221
    :array_2
    .array-data 4
        0x7f0100dd
        0x7f0100de
        0x7f0100df
    .end array-data

    .line 225
    :array_3
    .array-data 4
        0x7f01010e
        0x7f01010f
        0x7f010110
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
