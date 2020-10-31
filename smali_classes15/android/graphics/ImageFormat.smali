.class public Landroid/graphics/ImageFormat;
.super Ljava/lang/Object;
.source "ImageFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ImageFormat$Format;
    }
.end annotation


# static fields
.field public static final DEPTH16:I = 0x44363159

.field public static final DEPTH_JPEG:I = 0x69656963

.field public static final DEPTH_POINT_CLOUD:I = 0x101

.field public static final FLEX_RGBA_8888:I = 0x2a

.field public static final FLEX_RGB_888:I = 0x29

.field public static final HEIC:I = 0x48454946

.field public static final JPEG:I = 0x100

.field public static final NV16:I = 0x10

.field public static final NV21:I = 0x11

.field public static final PRIVATE:I = 0x22

.field public static final RAW10:I = 0x25

.field public static final RAW12:I = 0x26

.field public static final RAW_DEPTH:I = 0x1002

.field public static final RAW_PRIVATE:I = 0x24

.field public static final RAW_SENSOR:I = 0x20

.field public static final RGB_565:I = 0x4

.field public static final UNKNOWN:I = 0x0

.field public static final Y16:I = 0x20363159

.field public static final Y8:I = 0x20203859

.field public static final YUV_420_888:I = 0x23

.field public static final YUV_422_888:I = 0x27

.field public static final YUV_444_888:I = 0x28

.field public static final YUY2:I = 0x14

.field public static final YV12:I = 0x32315659


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitsPerPixel(I)I
    .registers 5

    const/4 v0, 0x4

    const/16 v1, 0x10

    if-eq p0, v0, :cond_4a

    const/16 v0, 0x14

    if-eq p0, v0, :cond_49

    const/16 v0, 0x20

    if-eq p0, v0, :cond_48

    const/16 v2, 0x23

    const/16 v3, 0xc

    if-eq p0, v2, :cond_47

    const/16 v2, 0x1002

    if-eq p0, v2, :cond_48

    const v2, 0x20203859

    if-eq p0, v2, :cond_44

    const v2, 0x20363159

    if-eq p0, v2, :cond_43

    const v2, 0x32315659

    if-eq p0, v2, :cond_42

    const v2, 0x44363159

    if-eq p0, v2, :cond_43

    if-eq p0, v1, :cond_41

    const/16 v2, 0x11

    if-eq p0, v2, :cond_40

    const/16 v2, 0x18

    packed-switch p0, :pswitch_data_4c

    const/4 v0, -0x1

    return v0

    :pswitch_38
    return v0

    :pswitch_39
    return v2

    :pswitch_3a
    return v2

    :pswitch_3b
    return v1

    :pswitch_3c
    return v3

    :pswitch_3d
    const/16 v0, 0xa

    return v0

    :cond_40
    return v3

    :cond_41
    return v1

    :cond_42
    return v3

    :cond_43
    return v1

    :cond_44
    const/16 v0, 0x8

    return v0

    :cond_47
    return v3

    :cond_48
    return v1

    :cond_49
    return v1

    :cond_4a
    return v1

    nop

    :pswitch_data_4c
    .packed-switch 0x25
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
    .end packed-switch
.end method

.method public static isPublicFormat(I)Z
    .registers 2

    const/16 v0, 0x10

    if-eq p0, v0, :cond_18

    const/16 v0, 0x11

    if-eq p0, v0, :cond_18

    const/16 v0, 0x100

    if-eq p0, v0, :cond_18

    const/16 v0, 0x101

    if-eq p0, v0, :cond_18

    sparse-switch p0, :sswitch_data_1a

    packed-switch p0, :pswitch_data_40

    const/4 v0, 0x0

    return v0

    :cond_18
    :pswitch_18
    :sswitch_18
    const/4 v0, 0x1

    return v0

    :sswitch_data_1a
    .sparse-switch
        0x4 -> :sswitch_18
        0x14 -> :sswitch_18
        0x20 -> :sswitch_18
        0x1002 -> :sswitch_18
        0x20203859 -> :sswitch_18
        0x32315659 -> :sswitch_18
        0x44363159 -> :sswitch_18
        0x48454946 -> :sswitch_18
        0x69656963 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_40
    .packed-switch 0x22
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
    .end packed-switch
.end method
