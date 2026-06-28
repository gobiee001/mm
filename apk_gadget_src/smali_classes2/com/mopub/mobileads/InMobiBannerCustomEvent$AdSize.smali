.class Lcom/mopub/mobileads/InMobiBannerCustomEvent$AdSize;
.super Ljava/lang/Object;
.source "InMobiBannerCustomEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/InMobiBannerCustomEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdSize"
.end annotation


# instance fields
.field private mHeight:I

.field private mWidth:I

.field final synthetic this$0:Lcom/mopub/mobileads/InMobiBannerCustomEvent;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/InMobiBannerCustomEvent;II)V
    .locals 0
    .param p2, "var1"    # I
    .param p3, "var2"    # I

    .prologue
    .line 211
    iput-object p1, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent$AdSize;->this$0:Lcom/mopub/mobileads/InMobiBannerCustomEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput p2, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent$AdSize;->mWidth:I

    .line 213
    iput p3, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent$AdSize;->mHeight:I

    .line 214
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent$AdSize;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent$AdSize;->mWidth:I

    return v0
.end method
