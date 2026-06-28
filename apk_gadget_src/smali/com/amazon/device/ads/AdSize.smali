.class public Lcom/amazon/device/ads/AdSize;
.super Ljava/lang/Object;
.source "AdSize.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/AdSize$1;,
        Lcom/amazon/device/ads/AdSize$Scaling;,
        Lcom/amazon/device/ads/AdSize$Modality;,
        Lcom/amazon/device/ads/AdSize$SizeType;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field public static final SIZE_1024x50:Lcom/amazon/device/ads/AdSize;

.field public static final SIZE_300x250:Lcom/amazon/device/ads/AdSize;

.field public static final SIZE_300x50:Lcom/amazon/device/ads/AdSize;

.field public static final SIZE_320x50:Lcom/amazon/device/ads/AdSize;

.field public static final SIZE_600x90:Lcom/amazon/device/ads/AdSize;

.field public static final SIZE_728x90:Lcom/amazon/device/ads/AdSize;

.field public static final SIZE_AUTO:Lcom/amazon/device/ads/AdSize;

.field public static final SIZE_AUTO_NO_SCALE:Lcom/amazon/device/ads/AdSize;

.field static final SIZE_INTERSTITIAL:Lcom/amazon/device/ads/AdSize;

.field static final SIZE_MODELESS_INTERSTITIAL:Lcom/amazon/device/ads/AdSize;


# instance fields
.field private gravity:I

.field private height:I

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private modality:Lcom/amazon/device/ads/AdSize$Modality;

.field private scaling:Lcom/amazon/device/ads/AdSize$Scaling;

.field private type:Lcom/amazon/device/ads/AdSize$SizeType;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x12c

    const/16 v3, 0x5a

    const/16 v2, 0x32

    .line 18
    const-class v0, Lcom/amazon/device/ads/AdSize;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/AdSize;->LOGTAG:Ljava/lang/String;

    .line 23
    new-instance v0, Lcom/amazon/device/ads/AdSize;

    invoke-direct {v0, v4, v2}, Lcom/amazon/device/ads/AdSize;-><init>(II)V

    sput-object v0, Lcom/amazon/device/ads/AdSize;->SIZE_300x50:Lcom/amazon/device/ads/AdSize;

    .line 27
    new-instance v0, Lcom/amazon/device/ads/AdSize;

    const/16 v1, 0x140

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/AdSize;-><init>(II)V

    sput-object v0, Lcom/amazon/device/ads/AdSize;->SIZE_320x50:Lcom/amazon/device/ads/AdSize;

    .line 31
    new-instance v0, Lcom/amazon/device/ads/AdSize;

    const/16 v1, 0xfa

    invoke-direct {v0, v4, v1}, Lcom/amazon/device/ads/AdSize;-><init>(II)V

    sput-object v0, Lcom/amazon/device/ads/AdSize;->SIZE_300x250:Lcom/amazon/device/ads/AdSize;

    .line 35
    new-instance v0, Lcom/amazon/device/ads/AdSize;

    const/16 v1, 0x258

    invoke-direct {v0, v1, v3}, Lcom/amazon/device/ads/AdSize;-><init>(II)V

    sput-object v0, Lcom/amazon/device/ads/AdSize;->SIZE_600x90:Lcom/amazon/device/ads/AdSize;

    .line 39
    new-instance v0, Lcom/amazon/device/ads/AdSize;

    const/16 v1, 0x2d8

    invoke-direct {v0, v1, v3}, Lcom/amazon/device/ads/AdSize;-><init>(II)V

    sput-object v0, Lcom/amazon/device/ads/AdSize;->SIZE_728x90:Lcom/amazon/device/ads/AdSize;

    .line 43
    new-instance v0, Lcom/amazon/device/ads/AdSize;

    const/16 v1, 0x400

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/AdSize;-><init>(II)V

    sput-object v0, Lcom/amazon/device/ads/AdSize;->SIZE_1024x50:Lcom/amazon/device/ads/AdSize;

    .line 47
    new-instance v0, Lcom/amazon/device/ads/AdSize;

    sget-object v1, Lcom/amazon/device/ads/AdSize$SizeType;->AUTO:Lcom/amazon/device/ads/AdSize$SizeType;

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/AdSize;-><init>(Lcom/amazon/device/ads/AdSize$SizeType;)V

    sput-object v0, Lcom/amazon/device/ads/AdSize;->SIZE_AUTO:Lcom/amazon/device/ads/AdSize;

    .line 54
    new-instance v0, Lcom/amazon/device/ads/AdSize;

    sget-object v1, Lcom/amazon/device/ads/AdSize$SizeType;->AUTO:Lcom/amazon/device/ads/AdSize$SizeType;

    sget-object v2, Lcom/amazon/device/ads/AdSize$Scaling;->NO_UPSCALE:Lcom/amazon/device/ads/AdSize$Scaling;

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/AdSize;-><init>(Lcom/amazon/device/ads/AdSize$SizeType;Lcom/amazon/device/ads/AdSize$Scaling;)V

    sput-object v0, Lcom/amazon/device/ads/AdSize;->SIZE_AUTO_NO_SCALE:Lcom/amazon/device/ads/AdSize;

    .line 58
    new-instance v0, Lcom/amazon/device/ads/AdSize;

    sget-object v1, Lcom/amazon/device/ads/AdSize$SizeType;->INTERSTITIAL:Lcom/amazon/device/ads/AdSize$SizeType;

    sget-object v2, Lcom/amazon/device/ads/AdSize$Modality;->MODAL:Lcom/amazon/device/ads/AdSize$Modality;

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/AdSize;-><init>(Lcom/amazon/device/ads/AdSize$SizeType;Lcom/amazon/device/ads/AdSize$Modality;)V

    sput-object v0, Lcom/amazon/device/ads/AdSize;->SIZE_INTERSTITIAL:Lcom/amazon/device/ads/AdSize;

    .line 62
    new-instance v0, Lcom/amazon/device/ads/AdSize;

    sget-object v1, Lcom/amazon/device/ads/AdSize$SizeType;->INTERSTITIAL:Lcom/amazon/device/ads/AdSize$SizeType;

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/AdSize;-><init>(Lcom/amazon/device/ads/AdSize$SizeType;)V

    sput-object v0, Lcom/amazon/device/ads/AdSize;->SIZE_MODELESS_INTERSTITIAL:Lcom/amazon/device/ads/AdSize;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/16 v0, 0x11

    iput v0, p0, Lcom/amazon/device/ads/AdSize;->gravity:I

    .line 94
    sget-object v0, Lcom/amazon/device/ads/AdSize$SizeType;->EXPLICIT:Lcom/amazon/device/ads/AdSize$SizeType;

    iput-object v0, p0, Lcom/amazon/device/ads/AdSize;->type:Lcom/amazon/device/ads/AdSize$SizeType;

    .line 95
    sget-object v0, Lcom/amazon/device/ads/AdSize$Modality;->MODELESS:Lcom/amazon/device/ads/AdSize$Modality;

    iput-object v0, p0, Lcom/amazon/device/ads/AdSize;->modality:Lcom/amazon/device/ads/AdSize$Modality;

    .line 96
    sget-object v0, Lcom/amazon/device/ads/AdSize$Scaling;->CAN_UPSCALE:Lcom/amazon/device/ads/AdSize$Scaling;

    iput-object v0, p0, Lcom/amazon/device/ads/AdSize;->scaling:Lcom/amazon/device/ads/AdSize$Scaling;

    .line 99
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/AdSize;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdSize;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/amazon/device/ads/AdSize;->initialize(II)V

    .line 111
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/AdSize$SizeType;)V
    .locals 2
    .param p1, "type"    # Lcom/amazon/device/ads/AdSize$SizeType;

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/16 v0, 0x11

    iput v0, p0, Lcom/amazon/device/ads/AdSize;->gravity:I

    .line 94
    sget-object v0, Lcom/amazon/device/ads/AdSize$SizeType;->EXPLICIT:Lcom/amazon/device/ads/AdSize$SizeType;

    iput-object v0, p0, Lcom/amazon/device/ads/AdSize;->type:Lcom/amazon/device/ads/AdSize$SizeType;

    .line 95
    sget-object v0, Lcom/amazon/device/ads/AdSize$Modality;->MODELESS:Lcom/amazon/device/ads/AdSize$Modality;

    iput-object v0, p0, Lcom/amazon/device/ads/AdSize;->modality:Lcom/amazon/device/ads/AdSize$Modality;

    .line 96
    sget-object v0, Lcom/amazon/device/ads/AdSize$Scaling;->CAN_UPSCALE:Lcom/amazon/device/ads/AdSize$Scaling;

    iput-object v0, p0, Lcom/amazon/device/ads/AdSize;->scaling:Lcom/amazon/device/ads/AdSize$Scaling;

    .line 99
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/AdSize;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdSize;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 122
    iput-object p1, p0, Lcom/amazon/device/ads/AdSize;->type:Lcom/amazon/device/ads/AdSize$SizeType;

    .line 123
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/AdSize$SizeType;Lcom/amazon/device/ads/AdSize$Modality;)V
    .locals 0
    .param p1, "type"    # Lcom/amazon/device/ads/AdSize$SizeType;
    .param p2, "modality"    # Lcom/amazon/device/ads/AdSize$Modality;

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/AdSize;-><init>(Lcom/amazon/device/ads/AdSize$SizeType;)V

    .line 128
    iput-object p2, p0, Lcom/amazon/device/ads/AdSize;->modality:Lcom/amazon/device/ads/AdSize$Modality;

    .line 129
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/AdSize$SizeType;Lcom/amazon/device/ads/AdSize$Scaling;)V
    .locals 0
    .param p1, "type"    # Lcom/amazon/device/ads/AdSize$SizeType;
    .param p2, "scaling"    # Lcom/amazon/device/ads/AdSize$Scaling;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/AdSize;-><init>(Lcom/amazon/device/ads/AdSize$SizeType;)V

    .line 134
    iput-object p2, p0, Lcom/amazon/device/ads/AdSize;->scaling:Lcom/amazon/device/ads/AdSize$Scaling;

    .line 135
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "width"    # Ljava/lang/String;
    .param p2, "height"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/16 v2, 0x11

    iput v2, p0, Lcom/amazon/device/ads/AdSize;->gravity:I

    .line 94
    sget-object v2, Lcom/amazon/device/ads/AdSize$SizeType;->EXPLICIT:Lcom/amazon/device/ads/AdSize$SizeType;

    iput-object v2, p0, Lcom/amazon/device/ads/AdSize;->type:Lcom/amazon/device/ads/AdSize$SizeType;

    .line 95
    sget-object v2, Lcom/amazon/device/ads/AdSize$Modality;->MODELESS:Lcom/amazon/device/ads/AdSize$Modality;

    iput-object v2, p0, Lcom/amazon/device/ads/AdSize;->modality:Lcom/amazon/device/ads/AdSize$Modality;

    .line 96
    sget-object v2, Lcom/amazon/device/ads/AdSize$Scaling;->CAN_UPSCALE:Lcom/amazon/device/ads/AdSize$Scaling;

    iput-object v2, p0, Lcom/amazon/device/ads/AdSize;->scaling:Lcom/amazon/device/ads/AdSize$Scaling;

    .line 99
    new-instance v2, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v2}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    sget-object v3, Lcom/amazon/device/ads/AdSize;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/device/ads/AdSize;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 115
    invoke-static {p1, v4}, Lcom/amazon/device/ads/NumberUtils;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 116
    .local v1, "parsedWidth":I
    invoke-static {p2, v4}, Lcom/amazon/device/ads/NumberUtils;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 117
    .local v0, "parsedHeight":I
    invoke-direct {p0, v1, v0}, Lcom/amazon/device/ads/AdSize;->initialize(II)V

    .line 118
    return-void
.end method

.method private deepClone()Lcom/amazon/device/ads/AdSize;
    .locals 2

    .prologue
    .line 139
    new-instance v0, Lcom/amazon/device/ads/AdSize;

    iget-object v1, p0, Lcom/amazon/device/ads/AdSize;->type:Lcom/amazon/device/ads/AdSize$SizeType;

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/AdSize;-><init>(Lcom/amazon/device/ads/AdSize$SizeType;)V

    .line 140
    .local v0, "adSize":Lcom/amazon/device/ads/AdSize;
    iget v1, p0, Lcom/amazon/device/ads/AdSize;->width:I

    iput v1, v0, Lcom/amazon/device/ads/AdSize;->width:I

    .line 141
    iget v1, p0, Lcom/amazon/device/ads/AdSize;->height:I

    iput v1, v0, Lcom/amazon/device/ads/AdSize;->height:I

    .line 142
    iget v1, p0, Lcom/amazon/device/ads/AdSize;->gravity:I

    iput v1, v0, Lcom/amazon/device/ads/AdSize;->gravity:I

    .line 143
    iget-object v1, p0, Lcom/amazon/device/ads/AdSize;->modality:Lcom/amazon/device/ads/AdSize$Modality;

    iput-object v1, v0, Lcom/amazon/device/ads/AdSize;->modality:Lcom/amazon/device/ads/AdSize$Modality;

    .line 144
    iget-object v1, p0, Lcom/amazon/device/ads/AdSize;->scaling:Lcom/amazon/device/ads/AdSize$Scaling;

    iput-object v1, v0, Lcom/amazon/device/ads/AdSize;->scaling:Lcom/amazon/device/ads/AdSize$Scaling;

    .line 145
    return-object v0
.end method

.method static getAsSizeString(II)Ljava/lang/String;
    .locals 2
    .param p0, "w"    # I
    .param p1, "h"    # I

    .prologue
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initialize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 150
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 152
    :cond_0
    const-string v0, "The width and height must be positive integers."

    .line 153
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/amazon/device/ads/AdSize;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 154
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    iput p1, p0, Lcom/amazon/device/ads/AdSize;->width:I

    .line 158
    iput p2, p0, Lcom/amazon/device/ads/AdSize;->height:I

    .line 159
    sget-object v1, Lcom/amazon/device/ads/AdSize$SizeType;->EXPLICIT:Lcom/amazon/device/ads/AdSize$SizeType;

    iput-object v1, p0, Lcom/amazon/device/ads/AdSize;->type:Lcom/amazon/device/ads/AdSize$SizeType;

    .line 160
    return-void
.end method


# virtual methods
.method public canUpscale()Z
    .locals 2

    .prologue
    .line 280
    sget-object v0, Lcom/amazon/device/ads/AdSize$Scaling;->CAN_UPSCALE:Lcom/amazon/device/ads/AdSize$Scaling;

    iget-object v1, p0, Lcom/amazon/device/ads/AdSize;->scaling:Lcom/amazon/device/ads/AdSize$Scaling;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdSize$Scaling;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 220
    instance-of v3, p1, Lcom/amazon/device/ads/AdSize;

    if-eqz v3, :cond_2

    move-object v0, p1

    .line 222
    check-cast v0, Lcom/amazon/device/ads/AdSize;

    .line 223
    .local v0, "other":Lcom/amazon/device/ads/AdSize;
    iget-object v3, p0, Lcom/amazon/device/ads/AdSize;->type:Lcom/amazon/device/ads/AdSize$SizeType;

    iget-object v4, v0, Lcom/amazon/device/ads/AdSize;->type:Lcom/amazon/device/ads/AdSize$SizeType;

    invoke-virtual {v3, v4}, Lcom/amazon/device/ads/AdSize$SizeType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 226
    iget-object v3, p0, Lcom/amazon/device/ads/AdSize;->type:Lcom/amazon/device/ads/AdSize$SizeType;

    sget-object v4, Lcom/amazon/device/ads/AdSize$SizeType;->EXPLICIT:Lcom/amazon/device/ads/AdSize$SizeType;

    invoke-virtual {v3, v4}, Lcom/amazon/device/ads/AdSize$SizeType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 228
    iget v3, p0, Lcom/amazon/device/ads/AdSize;->width:I

    iget v4, v0, Lcom/amazon/device/ads/AdSize;->width:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/amazon/device/ads/AdSize;->height:I

    iget v4, v0, Lcom/amazon/device/ads/AdSize;->height:I

    if-ne v3, v4, :cond_1

    .line 233
    .end local v0    # "other":Lcom/amazon/device/ads/AdSize;
    :cond_0
    :goto_0
    return v1

    .restart local v0    # "other":Lcom/amazon/device/ads/AdSize;
    :cond_1
    move v1, v2

    .line 228
    goto :goto_0

    .end local v0    # "other":Lcom/amazon/device/ads/AdSize;
    :cond_2
    move v1, v2

    .line 233
    goto :goto_0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/amazon/device/ads/AdSize;->gravity:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/amazon/device/ads/AdSize;->height:I

    return v0
.end method

.method getSizeType()Lcom/amazon/device/ads/AdSize$SizeType;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/amazon/device/ads/AdSize;->type:Lcom/amazon/device/ads/AdSize$SizeType;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/amazon/device/ads/AdSize;->width:I

    return v0
.end method

.method public isAuto()Z
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/amazon/device/ads/AdSize;->type:Lcom/amazon/device/ads/AdSize$SizeType;

    sget-object v1, Lcom/amazon/device/ads/AdSize$SizeType;->AUTO:Lcom/amazon/device/ads/AdSize$SizeType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isModal()Z
    .locals 2

    .prologue
    .line 266
    sget-object v0, Lcom/amazon/device/ads/AdSize$Modality;->MODAL:Lcom/amazon/device/ads/AdSize$Modality;

    iget-object v1, p0, Lcom/amazon/device/ads/AdSize;->modality:Lcom/amazon/device/ads/AdSize$Modality;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdSize$Modality;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public newGravity(I)Lcom/amazon/device/ads/AdSize;
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/amazon/device/ads/AdSize;->deepClone()Lcom/amazon/device/ads/AdSize;

    move-result-object v0

    .line 174
    .local v0, "adSize":Lcom/amazon/device/ads/AdSize;
    iput p1, v0, Lcom/amazon/device/ads/AdSize;->gravity:I

    .line 175
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, "sizeString":Ljava/lang/String;
    sget-object v1, Lcom/amazon/device/ads/AdSize$1;->$SwitchMap$com$amazon$device$ads$AdSize$SizeType:[I

    iget-object v2, p0, Lcom/amazon/device/ads/AdSize;->type:Lcom/amazon/device/ads/AdSize$SizeType;

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdSize$SizeType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 209
    :goto_0
    return-object v0

    .line 200
    :pswitch_0
    iget v1, p0, Lcom/amazon/device/ads/AdSize;->width:I

    iget v2, p0, Lcom/amazon/device/ads/AdSize;->height:I

    invoke-static {v1, v2}, Lcom/amazon/device/ads/AdSize;->getAsSizeString(II)Ljava/lang/String;

    move-result-object v0

    .line 201
    goto :goto_0

    .line 203
    :pswitch_1
    const-string v0, "auto"

    .line 204
    goto :goto_0

    .line 206
    :pswitch_2
    const-string v0, "interstitial"

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
