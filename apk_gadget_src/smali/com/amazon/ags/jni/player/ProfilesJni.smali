.class public Lcom/amazon/ags/jni/player/ProfilesJni;
.super Ljava/lang/Object;
.source "ProfilesJni.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native callSignedInStateChangedListener(Z)V
.end method

.method public static native getBatchFriendsResponseFailure(JII)V
.end method

.method public static native getBatchFriendsResponseSuccess(Lcom/amazon/ags/api/player/RequestFriendsResponse;JI)V
.end method

.method public static native getFriendIdsResponseFailure(JII)V
.end method

.method public static native getFriendIdsResponseSuccess(Lcom/amazon/ags/api/player/RequestFriendIdsResponse;JI)V
.end method

.method public static native getLocalPlayerProfileResponseFailure(JII)V
.end method

.method public static native getLocalPlayerProfileResponseSuccess(Lcom/amazon/ags/api/player/RequestPlayerResponse;JI)V
.end method
