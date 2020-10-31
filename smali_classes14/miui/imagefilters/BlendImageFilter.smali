.class public Lmiui/imagefilters/BlendImageFilter;
.super Lmiui/imagefilters/IImageFilter$AbstractImageFilter;
.source "BlendImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/imagefilters/BlendImageFilter$PorterDuffBlenderPerChannel;,
        Lmiui/imagefilters/BlendImageFilter$PorterDuffBlender;,
        Lmiui/imagefilters/BlendImageFilter$BlenderPerChannel;,
        Lmiui/imagefilters/BlendImageFilter$Blender;
    }
.end annotation


# static fields
.field static final BLEND_TYPE_COLOR:I = 0x15

.field static final BLEND_TYPE_COLOR_BURN:I = 0xa

.field static final BLEND_TYPE_COLOR_DODGE:I = 0x9

.field static final BLEND_TYPE_DARKEN:I = 0x3

.field static final BLEND_TYPE_DIFFERENCE:I = 0x5

.field static final BLEND_TYPE_DIVIDE:I = 0x17

.field static final BLEND_TYPE_EXCLUSION:I = 0x12

.field static final BLEND_TYPE_HARD_LIGHT:I = 0xc

.field static final BLEND_TYPE_HARD_MIX:I = 0x11

.field static final BLEND_TYPE_HUE:I = 0x13

.field static final BLEND_TYPE_LIGHTEN:I = 0x4

.field static final BLEND_TYPE_LINEAR_BURN:I = 0x7

.field static final BLEND_TYPE_LINEAR_DODGE:I = 0x6

.field static final BLEND_TYPE_LINEAR_LIGHT:I = 0xf

.field static final BLEND_TYPE_LUMINOSITY:I = 0x16

.field static final BLEND_TYPE_MULTIPLY:I = 0x1

.field static final BLEND_TYPE_NORMAL:I = 0x0

.field static final BLEND_TYPE_OPACITY:I = 0xb

.field static final BLEND_TYPE_OVERLAY:I = 0x8

.field static final BLEND_TYPE_PIN_LIGHT:I = 0x10

.field static final BLEND_TYPE_SATURATION:I = 0x14

.field static final BLEND_TYPE_SCREEN:I = 0x2

.field static final BLEND_TYPE_SOFT_LIGHT:I = 0xd

.field static final BLEND_TYPE_SUBTRACT:I = 0x18

.field static final BLEND_TYPE_VIVID_LIGHT:I = 0xe

.field static final TAG:Ljava/lang/String; = "BlendImageFilter"


# instance fields
.field private mBlendType:I

.field private mInputFilters:Lmiui/imagefilters/IImageFilter$ImageFilterGroup;

.field private mInputImage:Lmiui/imagefilters/ImageData;

.field private mInputImageCache:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Lmiui/imagefilters/ImageData;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsInputImageOnTop:Z

.field private mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

.field private mUseOriginalImage:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/imagefilters/BlendImageFilter;->mIsInputImageOnTop:Z

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lmiui/imagefilters/BlendImageFilter;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method private getCurrentBlender()Lmiui/imagefilters/BlendImageFilter$Blender;
    .registers 3

    iget v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    packed-switch v0, :pswitch_data_b6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown blender type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlendImageFilter"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :pswitch_1f
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$14;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$14;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    :pswitch_25
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$13;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$13;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    :pswitch_2b
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$24;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$24;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    :pswitch_31
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$23;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$23;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    :pswitch_37
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$22;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$22;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    :pswitch_3d
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$21;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$21;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    :pswitch_43
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$20;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$20;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    :pswitch_49
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$19;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$19;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    :pswitch_4f
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$18;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$18;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    :pswitch_55
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$12;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$12;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    :pswitch_5b
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$11;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$11;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    :pswitch_61
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$5;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$5;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    :pswitch_67
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$6;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$6;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    :pswitch_6d
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$25;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$25;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    :pswitch_73
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$9;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$9;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    :pswitch_79
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$7;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$7;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    :pswitch_7f
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$4;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$4;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    :pswitch_85
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$10;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$10;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    :pswitch_8b
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$8;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$8;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    :pswitch_91
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$15;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$15;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    :pswitch_97
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$17;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$17;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    :pswitch_9d
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$16;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$16;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    :pswitch_a3
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$3;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$3;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    :pswitch_a9
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$2;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$2;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    :pswitch_af
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$1;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$1;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    nop

    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_af
        :pswitch_a9
        :pswitch_a3
        :pswitch_9d
        :pswitch_97
        :pswitch_91
        :pswitch_8b
        :pswitch_85
        :pswitch_7f
        :pswitch_79
        :pswitch_73
        :pswitch_6d
        :pswitch_67
        :pswitch_61
        :pswitch_5b
        :pswitch_55
        :pswitch_4f
        :pswitch_49
        :pswitch_43
        :pswitch_3d
        :pswitch_37
        :pswitch_31
        :pswitch_2b
        :pswitch_25
        :pswitch_1f
    .end packed-switch
.end method

.method private getCurrentPorterDuffBlender()Lmiui/imagefilters/BlendImageFilter$PorterDuffBlender;
    .registers 3

    sget-object v0, Lmiui/imagefilters/BlendImageFilter$41;->$SwitchMap$android$graphics$PorterDuff$Mode:[I

    iget-object v1, p0, Lmiui/imagefilters/BlendImageFilter;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1}, Landroid/graphics/PorterDuff$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_82

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupport porter duff mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/imagefilters/BlendImageFilter;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlendImageFilter"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :pswitch_27
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$40;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$40;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    :pswitch_2d
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$39;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$39;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    :pswitch_33
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$38;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$38;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    :pswitch_39
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$37;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$37;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    :pswitch_3f
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$36;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$36;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    :pswitch_45
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$35;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$35;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    :pswitch_4b
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$34;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$34;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    :pswitch_51
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$33;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$33;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    :pswitch_57
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$32;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$32;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    :pswitch_5d
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$31;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$31;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    :pswitch_63
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$30;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$30;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    :pswitch_69
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$29;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$29;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    :pswitch_6f
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$28;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$28;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    :pswitch_75
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$27;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$27;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    :pswitch_7b
    new-instance v0, Lmiui/imagefilters/BlendImageFilter$26;

    invoke-direct {v0, p0}, Lmiui/imagefilters/BlendImageFilter$26;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-object v0

    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_7b
        :pswitch_75
        :pswitch_6f
        :pswitch_69
        :pswitch_63
        :pswitch_5d
        :pswitch_57
        :pswitch_51
        :pswitch_4b
        :pswitch_45
        :pswitch_3f
        :pswitch_39
        :pswitch_33
        :pswitch_2d
        :pswitch_27
    .end packed-switch
.end method

.method private mergeWidthHeight(II)I
    .registers 6

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_a

    if-gt p2, v0, :cond_a

    shl-int/lit8 v0, p1, 0x10

    or-int/2addr v0, p2

    return v0

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "image\'s width or height to large:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private obtainInputImageBySize(II)Lmiui/imagefilters/ImageData;
    .registers 12

    invoke-direct {p0, p1, p2}, Lmiui/imagefilters/BlendImageFilter;->mergeWidthHeight(II)I

    move-result v0

    iget-object v1, p0, Lmiui/imagefilters/BlendImageFilter;->mInputImageCache:Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_10

    :cond_a
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    :goto_10
    if-eqz v1, :cond_25

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_25

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/imagefilters/ImageData;

    return-object v2

    :cond_25
    iget-object v2, p0, Lmiui/imagefilters/BlendImageFilter;->mInputImage:Lmiui/imagefilters/ImageData;

    iget v2, v2, Lmiui/imagefilters/ImageData;->width:I

    iget-object v3, p0, Lmiui/imagefilters/BlendImageFilter;->mInputImage:Lmiui/imagefilters/ImageData;

    iget v3, v3, Lmiui/imagefilters/ImageData;->height:I

    invoke-direct {p0, v2, v3}, Lmiui/imagefilters/BlendImageFilter;->mergeWidthHeight(II)I

    move-result v2

    if-ne v2, v0, :cond_36

    iget-object v3, p0, Lmiui/imagefilters/BlendImageFilter;->mInputImage:Lmiui/imagefilters/ImageData;

    return-object v3

    :cond_36
    iget-object v3, p0, Lmiui/imagefilters/BlendImageFilter;->mInputImage:Lmiui/imagefilters/ImageData;

    invoke-static {v3}, Lmiui/imagefilters/ImageData;->imageDataToBitmap(Lmiui/imagefilters/ImageData;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, p1, p2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lmiui/imagefilters/ImageData;->bitmapToImageData(Landroid/graphics/Bitmap;)Lmiui/imagefilters/ImageData;

    move-result-object v5

    new-instance v6, Ljava/lang/ref/SoftReference;

    new-instance v7, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v6, v7}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, p0, Lmiui/imagefilters/BlendImageFilter;->mInputImageCache:Ljava/lang/ref/SoftReference;

    return-object v5
.end method


# virtual methods
.method public canConcurrence()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/imagefilters/BlendImageFilter;->mUseOriginalImage:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-super {p0}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;->canConcurrence()Z

    move-result v0

    return v0
.end method

.method public processData(Lmiui/imagefilters/ImageData;)V
    .registers 16

    iget-object v0, p0, Lmiui/imagefilters/BlendImageFilter;->mInputImage:Lmiui/imagefilters/ImageData;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lmiui/imagefilters/BlendImageFilter;->getCurrentBlender()Lmiui/imagefilters/BlendImageFilter$Blender;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    invoke-direct {p0}, Lmiui/imagefilters/BlendImageFilter;->getCurrentPorterDuffBlender()Lmiui/imagefilters/BlendImageFilter$PorterDuffBlender;

    move-result-object v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    iget v2, p1, Lmiui/imagefilters/ImageData;->width:I

    iget v3, p1, Lmiui/imagefilters/ImageData;->height:I

    iget-object v4, p1, Lmiui/imagefilters/ImageData;->pixels:[I

    move-object v5, v4

    invoke-direct {p0, v2, v3}, Lmiui/imagefilters/BlendImageFilter;->obtainInputImageBySize(II)Lmiui/imagefilters/ImageData;

    move-result-object v6

    iget-object v6, v6, Lmiui/imagefilters/ImageData;->pixels:[I

    iget-boolean v7, p0, Lmiui/imagefilters/BlendImageFilter;->mIsInputImageOnTop:Z

    if-nez v7, :cond_26

    move-object v5, v6

    move-object v6, v4

    :cond_26
    const/4 v7, 0x0

    :goto_27
    if-ge v7, v2, :cond_43

    const/4 v8, 0x0

    :goto_2a
    if-ge v8, v3, :cond_40

    mul-int v9, v8, v2

    add-int/2addr v9, v7

    aget v10, v5, v9

    aget v11, v6, v9

    invoke-virtual {v0, v10, v11}, Lmiui/imagefilters/BlendImageFilter$Blender;->blendColor(II)I

    move-result v12

    invoke-virtual {v1, v10, v12}, Lmiui/imagefilters/BlendImageFilter$PorterDuffBlender;->blendFinal(II)I

    move-result v13

    aput v13, v4, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_2a

    :cond_40
    add-int/lit8 v7, v7, 0x1

    goto :goto_27

    :cond_43
    return-void
.end method

.method public putOriginalImage(Landroid/graphics/Bitmap;)V
    .registers 3

    iget-boolean v0, p0, Lmiui/imagefilters/BlendImageFilter;->mUseOriginalImage:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lmiui/imagefilters/BlendImageFilter;->mInputFilters:Lmiui/imagefilters/IImageFilter$ImageFilterGroup;

    if-eqz v0, :cond_10

    invoke-virtual {v0, p1}, Lmiui/imagefilters/IImageFilter$ImageFilterGroup;->processAll(Landroid/graphics/Bitmap;)Lmiui/imagefilters/ImageData;

    move-result-object v0

    iput-object v0, p0, Lmiui/imagefilters/BlendImageFilter;->mInputImage:Lmiui/imagefilters/ImageData;

    goto :goto_16

    :cond_10
    invoke-static {p1}, Lmiui/imagefilters/ImageData;->bitmapToImageData(Landroid/graphics/Bitmap;)Lmiui/imagefilters/ImageData;

    move-result-object v0

    iput-object v0, p0, Lmiui/imagefilters/BlendImageFilter;->mInputImage:Lmiui/imagefilters/ImageData;

    :goto_16
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/imagefilters/BlendImageFilter;->mInputImageCache:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public setBlendType(I)V
    .registers 2

    iput p1, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    return-void
.end method

.method public setBlendTypeName(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_169

    const-string v0, "Normal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_169

    :cond_10
    const-string v0, "Multiply"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_16c

    :cond_1d
    const-string v0, "Screen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x2

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_16c

    :cond_2a
    const-string v0, "Darken"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x3

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_16c

    :cond_37
    const-string v0, "Lighten"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    const/4 v0, 0x4

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_16c

    :cond_44
    const-string v0, "Difference"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    const/4 v0, 0x5

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_16c

    :cond_51
    const-string v0, "LinearDodge"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    const/4 v0, 0x6

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_16c

    :cond_5e
    const-string v0, "LinearBurn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6b

    const/4 v0, 0x7

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_16c

    :cond_6b
    const-string v0, "Overlay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79

    const/16 v0, 0x8

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_16c

    :cond_79
    const-string v0, "ColorDodge"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_87

    const/16 v0, 0x9

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_16c

    :cond_87
    const-string v0, "ColorBurn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_95

    const/16 v0, 0xa

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_16c

    :cond_95
    const-string v0, "Opacity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a3

    const/16 v0, 0xb

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_16c

    :cond_a3
    const-string v0, "HardLight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b1

    const/16 v0, 0xc

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_16c

    :cond_b1
    const-string v0, "SoftLight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bf

    const/16 v0, 0xd

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_16c

    :cond_bf
    const-string v0, "VividLight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cd

    const/16 v0, 0xe

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_16c

    :cond_cd
    const-string v0, "LinearLight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_db

    const/16 v0, 0xf

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_16c

    :cond_db
    const-string v0, "PinLight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e9

    const/16 v0, 0x10

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_16c

    :cond_e9
    const-string v0, "HardMix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f7

    const/16 v0, 0x11

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto/16 :goto_16c

    :cond_f7
    const-string v0, "Exclusion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_104

    const/16 v0, 0x12

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto :goto_16c

    :cond_104
    const-string v0, "Hue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_111

    const/16 v0, 0x13

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto :goto_16c

    :cond_111
    const-string v0, "Saturation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11e

    const/16 v0, 0x14

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto :goto_16c

    :cond_11e
    const-string v0, "Color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12b

    const/16 v0, 0x15

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto :goto_16c

    :cond_12b
    const-string v0, "Luminosity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_138

    const/16 v0, 0x16

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto :goto_16c

    :cond_138
    const-string v0, "Divide"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_145

    const/16 v0, 0x17

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto :goto_16c

    :cond_145
    const-string v0, "Subtract"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_152

    const/16 v0, 0x18

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    goto :goto_16c

    :cond_152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown blend type name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlendImageFilter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16c

    :cond_169
    :goto_169
    const/4 v0, 0x0

    iput v0, p0, Lmiui/imagefilters/BlendImageFilter;->mBlendType:I

    :goto_16c
    return-void
.end method

.method public setInputFilters(Lmiui/imagefilters/IImageFilter$ImageFilterGroup;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/imagefilters/BlendImageFilter;->mUseOriginalImage:Z

    iput-object p1, p0, Lmiui/imagefilters/BlendImageFilter;->mInputFilters:Lmiui/imagefilters/IImageFilter$ImageFilterGroup;

    return-void
.end method

.method public setInputImage(Landroid/graphics/Bitmap;)V
    .registers 3

    invoke-static {p1}, Lmiui/imagefilters/ImageData;->bitmapToImageData(Landroid/graphics/Bitmap;)Lmiui/imagefilters/ImageData;

    move-result-object v0

    iput-object v0, p0, Lmiui/imagefilters/BlendImageFilter;->mInputImage:Lmiui/imagefilters/ImageData;

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/imagefilters/BlendImageFilter;->mInputImageCache:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public setIsInputImageOnTop(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/imagefilters/BlendImageFilter;->mIsInputImageOnTop:Z

    return-void
.end method

.method public setPorterDuffMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 2

    iput-object p1, p0, Lmiui/imagefilters/BlendImageFilter;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method public setUseOriginalImage(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/imagefilters/BlendImageFilter;->mUseOriginalImage:Z

    return-void
.end method
