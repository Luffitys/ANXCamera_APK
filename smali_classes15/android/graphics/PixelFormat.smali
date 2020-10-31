.class public Landroid/graphics/PixelFormat;
.super Ljava/lang/Object;
.source "PixelFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/PixelFormat$Format;,
        Landroid/graphics/PixelFormat$Opacity;
    }
.end annotation


# static fields
.field public static final A_8:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HSV_888:I = 0x37

.field public static final JPEG:I = 0x100
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LA_88:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final L_8:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OPAQUE:I = -0x1

.field public static final RGBA_1010102:I = 0x2b

.field public static final RGBA_4444:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RGBA_5551:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RGBA_8888:I = 0x1

.field public static final RGBA_F16:I = 0x16

.field public static final RGBX_8888:I = 0x2

.field public static final RGB_332:I = 0xb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RGB_565:I = 0x4

.field public static final RGB_888:I = 0x3

.field public static final TRANSLUCENT:I = -0x3

.field public static final TRANSPARENT:I = -0x2

.field public static final UNKNOWN:I = 0x0

.field public static final YCbCr_420_SP:I = 0x11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final YCbCr_422_I:I = 0x14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final YCbCr_422_SP:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public bitsPerPixel:I

.field public bytesPerPixel:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatHasAlpha(I)Z
    .registers 3

    const/4 v0, -0x3

    const/4 v1, 0x1

    if-eq p0, v0, :cond_21

    const/4 v0, -0x2

    if-eq p0, v0, :cond_21

    if-eq p0, v1, :cond_21

    const/16 v0, 0xa

    if-eq p0, v0, :cond_21

    const/16 v0, 0x16

    if-eq p0, v0, :cond_21

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_21

    const/4 v0, 0x6

    if-eq p0, v0, :cond_21

    const/4 v0, 0x7

    if-eq p0, v0, :cond_21

    const/16 v0, 0x8

    if-eq p0, v0, :cond_21

    const/4 v0, 0x0

    return v0

    :cond_21
    return v1
.end method

.method public static formatToString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, -0x3

    if-eq p0, v0, :cond_71

    const/4 v0, -0x2

    if-eq p0, v0, :cond_6e

    if-eqz p0, :cond_6b

    const/4 v0, 0x1

    if-eq p0, v0, :cond_68

    const/4 v0, 0x2

    if-eq p0, v0, :cond_65

    const/4 v0, 0x3

    if-eq p0, v0, :cond_62

    const/4 v0, 0x4

    if-eq p0, v0, :cond_5f

    const/16 v0, 0x10

    if-eq p0, v0, :cond_5c

    const/16 v0, 0x11

    if-eq p0, v0, :cond_59

    const/16 v0, 0x14

    if-eq p0, v0, :cond_56

    const/16 v0, 0x16

    if-eq p0, v0, :cond_53

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_50

    const/16 v0, 0x37

    if-eq p0, v0, :cond_4d

    const/16 v0, 0x100

    if-eq p0, v0, :cond_4a

    packed-switch p0, :pswitch_data_74

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_38
    const-string v0, "RGB_332"

    return-object v0

    :pswitch_3b
    const-string v0, "LA_88"

    return-object v0

    :pswitch_3e
    const-string v0, "L_8"

    return-object v0

    :pswitch_41
    const-string v0, "A_8"

    return-object v0

    :pswitch_44
    const-string v0, "RGBA_4444"

    return-object v0

    :pswitch_47
    const-string v0, "RGBA_5551"

    return-object v0

    :cond_4a
    const-string v0, "JPEG"

    return-object v0

    :cond_4d
    const-string v0, "HSV_888"

    return-object v0

    :cond_50
    const-string v0, "RGBA_1010102"

    return-object v0

    :cond_53
    const-string v0, "RGBA_F16"

    return-object v0

    :cond_56
    const-string v0, "YCbCr_422_I"

    return-object v0

    :cond_59
    const-string v0, "YCbCr_420_SP"

    return-object v0

    :cond_5c
    const-string v0, "YCbCr_422_SP"

    return-object v0

    :cond_5f
    const-string v0, "RGB_565"

    return-object v0

    :cond_62
    const-string v0, "RGB_888"

    return-object v0

    :cond_65
    const-string v0, "RGBX_8888"

    return-object v0

    :cond_68
    const-string v0, "RGBA_8888"

    return-object v0

    :cond_6b
    const-string v0, "UNKNOWN"

    return-object v0

    :cond_6e
    const-string v0, "TRANSPARENT"

    return-object v0

    :cond_71
    const-string v0, "TRANSLUCENT"

    return-object v0

    :pswitch_data_74
    .packed-switch 0x6
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
    .end packed-switch
.end method

.method public static getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V
    .registers 9

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p0, v1, :cond_65

    const/4 v2, 0x2

    if-eq p0, v2, :cond_65

    const/4 v3, 0x3

    if-eq p0, v3, :cond_5e

    const/16 v4, 0x10

    if-eq p0, v0, :cond_59

    if-eq p0, v4, :cond_54

    const/16 v5, 0x11

    if-eq p0, v5, :cond_4d

    const/16 v5, 0x14

    if-eq p0, v5, :cond_54

    const/16 v5, 0x16

    const/16 v6, 0x8

    if-eq p0, v5, :cond_46

    const/16 v5, 0x2b

    if-eq p0, v5, :cond_65

    const/16 v0, 0x37

    if-eq p0, v0, :cond_5e

    packed-switch p0, :pswitch_data_6e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown pixel format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_41
    iput v6, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    iput v1, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    goto :goto_6c

    :cond_46
    const/16 v0, 0x40

    iput v0, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    iput v6, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    goto :goto_6c

    :cond_4d
    const/16 v0, 0xc

    iput v0, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    iput v1, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    goto :goto_6c

    :cond_54
    iput v4, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    iput v1, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    goto :goto_6c

    :cond_59
    :pswitch_59
    iput v4, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    iput v2, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    goto :goto_6c

    :cond_5e
    const/16 v0, 0x18

    iput v0, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    iput v3, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    goto :goto_6c

    :cond_65
    const/16 v1, 0x20

    iput v1, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    iput v0, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    nop

    :goto_6c
    return-void

    nop

    :pswitch_data_6e
    .packed-switch 0x6
        :pswitch_59
        :pswitch_59
        :pswitch_41
        :pswitch_41
        :pswitch_59
        :pswitch_41
    .end packed-switch
.end method

.method public static isPublicFormat(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_16

    const/4 v1, 0x2

    if-eq p0, v1, :cond_16

    const/4 v1, 0x3

    if-eq p0, v1, :cond_16

    const/4 v1, 0x4

    if-eq p0, v1, :cond_16

    const/16 v1, 0x16

    if-eq p0, v1, :cond_16

    const/16 v1, 0x2b

    if-eq p0, v1, :cond_16

    const/4 v0, 0x0

    return v0

    :cond_16
    return v0
.end method
