.class public final Lcom/mopub/mobileads/banner/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/banner/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final FontFamily:[I

.field public static final FontFamilyFont:[I

.field public static final FontFamilyFont_font:I = 0x4

.field public static final FontFamilyFont_fontStyle:I = 0x3

.field public static final FontFamilyFont_fontWeight:I = 0x5

.field public static final FontFamily_fontProviderAuthority:I = 0x0

.field public static final FontFamily_fontProviderCerts:I = 0x3

.field public static final FontFamily_fontProviderFetchStrategy:I = 0x4

.field public static final FontFamily_fontProviderFetchTimeout:I = 0x5

.field public static final FontFamily_fontProviderPackage:I = 0x1

.field public static final FontFamily_fontProviderQuery:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 140
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mopub/mobileads/banner/R$styleable;->FontFamily:[I

    .line 141
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mopub/mobileads/banner/R$styleable;->FontFamilyFont:[I

    return-void

    .line 140
    :array_0
    .array-data 4
        0x7f0100c2
        0x7f0100c3
        0x7f0100c4
        0x7f0100c5
        0x7f0100c6
        0x7f0100c7
    .end array-data

    .line 141
    :array_1
    .array-data 4
        0x1010532
        0x1010533
        0x101053f
        0x7f0100c8
        0x7f0100c9
        0x7f0100ca
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
