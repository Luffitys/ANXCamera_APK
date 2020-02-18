.class public Lcom/ss/android/vesdk/VEBeautyParam;
.super Ljava/lang/Object;
.source "VEBeautyParam.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/VEBeautyParam$VEBeautyType;
    }
.end annotation


# static fields
.field public static final BEAUTY_BLUSHER:I = 0x12

.field public static final BEAUTY_LIPSTICK:I = 0x11

.field public static final BEAUTY_NASOLABIAL:I = 0x13

.field public static final BEAUTY_POUCH:I = 0x14

.field public static final BEAUTY_RESHAPE_CHEEK:I = 0x5

.field public static final BEAUTY_RESHAPE_EYE:I = 0x4

.field public static final BEAUTY_SHARP:I = 0x9

.field public static final BEAUTY_SMOOTH:I = 0x2

.field public static final BEAUTY_WHITE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static describle(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    return-object p0

    :pswitch_0
    const-string p0, "beauty_pouch"

    return-object p0

    :pswitch_1
    const-string p0, "beauty_nasolabial"

    return-object p0

    :pswitch_2
    const-string p0, "beauty_blusher"

    return-object p0

    :pswitch_3
    const-string p0, "beauty_lipstick"

    return-object p0

    :cond_0
    const-string p0, "sharp"

    return-object p0

    :cond_1
    const-string p0, "reshape cheek"

    return-object p0

    :cond_2
    const-string p0, "reshape_eye"

    return-object p0

    :cond_3
    const-string p0, "beauty_smooth"

    return-object p0

    :cond_4
    const-string p0, "beauty_white"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
