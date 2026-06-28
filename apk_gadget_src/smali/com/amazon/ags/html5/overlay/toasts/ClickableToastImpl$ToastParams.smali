.class public Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;
.super Ljava/lang/Object;
.source "ClickableToastImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToastParams"
.end annotation


# static fields
.field private static final DEFAULT_DURATION:J = 0x5dcL

.field private static final DEFAULT_FADE_IN_DURATION:J = 0x1f4L

.field private static final DEFAULT_FADE_OUT_DURATION:J = 0x3e8L

.field private static final DEFAULT_HORIZONTAL_MARGIN_LANDSCAPE:F

.field private static final DEFAULT_HORIZONTAL_MARGIN_PORTRAIT:F

.field private static final DEFAULT_VERTICAL_MARGIN_LANDSCAPE:F

.field private static final DEFAULT_VERTICAL_MARGIN_PORTRAIT:F


# instance fields
.field private duration:J

.field private fadeInDuration:J

.field private fadeOutDuration:J

.field private hideAnimationResource:I

.field private horizontalMarginLandscape:F

.field private horizontalMarginPortrait:F

.field private isFireTV:Z

.field private popUpLocation:Lcom/amazon/ags/api/overlay/PopUpLocation;

.field private showAnimationResource:I

.field private verticalMarginLandscape:F

.field private verticalMarginPortrait:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-boolean v0, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;->isFireTV:Z

    .line 162
    iput v1, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;->verticalMarginPortrait:F

    .line 163
    iput v1, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;->verticalMarginLandscape:F

    .line 164
    iput v1, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;->horizontalMarginLandscape:F

    .line 165
    iput v1, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;->horizontalMarginPortrait:F

    .line 166
    const-wide/16 v2, 0x1f4

    iput-wide v2, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;->fadeInDuration:J

    .line 167
    const-wide/16 v2, 0x3e8

    iput-wide v2, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;->fadeOutDuration:J

    .line 168
    const-wide/16 v2, 0x5dc

    iput-wide v2, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;->duration:J

    .line 169
    const/high16 v1, 0x10a0000

    iput v1, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;->showAnimationResource:I

    .line 170
    const v1, 0x10a0001

    iput v1, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;->hideAnimationResource:I

    .line 171
    sget-object v1, Lcom/amazon/ags/api/overlay/PopUpLocation;->DEFAULT_POPUP_LOCATION:Lcom/amazon/ags/api/overlay/PopUpLocation;

    iput-object v1, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;->popUpLocation:Lcom/amazon/ags/api/overlay/PopUpLocation;

    .line 172
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "AFT.*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "Amazon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;->isFireTV:Z

    .line 173
    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .prologue
    .line 240
    iget-wide v0, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;->duration:J

    return-wide v0
.end method

.method public getFadeInDuration()J
    .locals 2

    .prologue
    .line 232
    iget-wide v0, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;->fadeInDuration:J

    return-wide v0
.end method

.method public getFadeOutDuration()J
    .locals 2

    .prologue
    .line 236
    iget-wide v0, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;->fadeOutDuration:J

    return-wide v0
.end method

.method public getHideAnimationResource()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;->hideAnimationResource:I

    return v0
.end method

.method public getHorizontalMarginLandscape()F
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;->horizontalMarginLandscape:F

    return v0
.end method

.method public getHorizontalMarginPortrait()F
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;->horizontalMarginPortrait:F

    return v0
.end method

.method public getIsFireTV()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;->isFireTV:Z

    return v0
.end method

.method public getPopUpLocation()Lcom/amazon/ags/api/overlay/PopUpLocation;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;->popUpLocation:Lcom/amazon/ags/api/overlay/PopUpLocation;

    return-object v0
.end method

.method public getShowAnimationResource()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;->showAnimationResource:I

    return v0
.end method

.method public getVerticalMarginLandscape()F
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;->verticalMarginLandscape:F

    return v0
.end method

.method public getVerticalMarginPortrait()F
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;->verticalMarginPortrait:F

    return v0
.end method

.method public setDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 200
    iput-wide p1, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;->duration:J

    .line 201
    return-void
.end method

.method public setFadeInDuration(J)V
    .locals 1
    .param p1, "fadeInDuration"    # J

    .prologue
    .line 192
    iput-wide p1, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;->fadeInDuration:J

    .line 193
    return-void
.end method

.method public setFadeOutDuration(J)V
    .locals 1
    .param p1, "fadeOutDuration"    # J

    .prologue
    .line 196
    iput-wide p1, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;->fadeOutDuration:J

    .line 197
    return-void
.end method

.method public setHideAnimationResource(I)V
    .locals 0
    .param p1, "hideAnimationResource"    # I

    .prologue
    .line 208
    iput p1, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;->hideAnimationResource:I

    .line 209
    return-void
.end method

.method public setHorizontalMarginLandscape(F)V
    .locals 0
    .param p1, "horizontalMarginLandscape"    # F

    .prologue
    .line 188
    iput p1, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;->horizontalMarginLandscape:F

    .line 189
    return-void
.end method

.method public setHorizontalMarginPortrait(F)V
    .locals 0
    .param p1, "horizontalMarginPortrait"    # F

    .prologue
    .line 184
    iput p1, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;->horizontalMarginPortrait:F

    .line 185
    return-void
.end method

.method public setPopUpLocation(Lcom/amazon/ags/api/overlay/PopUpLocation;)V
    .locals 0
    .param p1, "popUpLocation"    # Lcom/amazon/ags/api/overlay/PopUpLocation;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;->popUpLocation:Lcom/amazon/ags/api/overlay/PopUpLocation;

    .line 213
    return-void
.end method

.method public setShowAnimationResource(I)V
    .locals 0
    .param p1, "showAnimationResource"    # I

    .prologue
    .line 204
    iput p1, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;->showAnimationResource:I

    .line 205
    return-void
.end method

.method public setVerticalMarginLandscape(F)V
    .locals 0
    .param p1, "verticalMarginLandscape"    # F

    .prologue
    .line 180
    iput p1, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;->verticalMarginLandscape:F

    .line 181
    return-void
.end method

.method public setVerticalMarginPortrait(F)V
    .locals 0
    .param p1, "verticalMarginPortrait"    # F

    .prologue
    .line 176
    iput p1, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;->verticalMarginPortrait:F

    .line 177
    return-void
.end method
