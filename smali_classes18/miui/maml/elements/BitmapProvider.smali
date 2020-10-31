.class public abstract Lmiui/maml/elements/BitmapProvider;
.super Ljava/lang/Object;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;,
        Lmiui/maml/elements/BitmapProvider$UriProvider;,
        Lmiui/maml/elements/BitmapProvider$FileSystemProvider;,
        Lmiui/maml/elements/BitmapProvider$BitmapHolderProvider;,
        Lmiui/maml/elements/BitmapProvider$VirtualScreenProvider;,
        Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;,
        Lmiui/maml/elements/BitmapProvider$AppIconProvider;,
        Lmiui/maml/elements/BitmapProvider$IBitmapHolder;,
        Lmiui/maml/elements/BitmapProvider$VersionedBitmap;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BitmapProvider"


# instance fields
.field protected mRoot:Lmiui/maml/ScreenElementRoot;

.field protected mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lmiui/maml/elements/BitmapProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    return-void
.end method

.method private static computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I
    .registers 7

    const/4 v0, 0x1

    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v1, v1

    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    int-to-double v3, p1

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    :goto_e
    mul-int/lit8 v3, v0, 0x2

    int-to-double v3, v3

    cmpg-double v3, v3, v1

    if-gtz v3, :cond_18

    mul-int/lit8 v0, v0, 0x2

    goto :goto_e

    :cond_18
    return v0
.end method

.method public static create(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)Lmiui/maml/elements/BitmapProvider;
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_98

    :cond_7
    goto :goto_4e

    :sswitch_8
    const-string v0, "ApplicationIcon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_4f

    :sswitch_12
    const-string v0, "ResourceImage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_4f

    :sswitch_1c
    const-string v0, "VirtualScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_4f

    :sswitch_26
    const-string v0, "Uri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_4f

    :sswitch_30
    const-string v0, "FileSystem"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_4f

    :sswitch_3a
    const-string v0, "BitmapHolder"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_4f

    :sswitch_44
    const-string v0, "BitmapVar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_4f

    :goto_4e
    const/4 v0, -0x1

    :goto_4f
    packed-switch v0, :pswitch_data_b6

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    const-string v1, "BitmapProvider"

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenContext;->getObjectFactory(Ljava/lang/String;)Lmiui/maml/ObjectFactory;

    move-result-object v0

    check-cast v0, Lmiui/maml/ObjectFactory$BitmapProviderFactory;

    if-eqz v0, :cond_91

    invoke-virtual {v0, p0, p1}, Lmiui/maml/ObjectFactory$BitmapProviderFactory;->create(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)Lmiui/maml/elements/BitmapProvider;

    move-result-object v1

    if-eqz v1, :cond_91

    return-object v1

    :pswitch_67
    new-instance v0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;

    invoke-direct {v0, p0}, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    return-object v0

    :pswitch_6d
    new-instance v0, Lmiui/maml/elements/BitmapProvider$BitmapHolderProvider;

    invoke-direct {v0, p0}, Lmiui/maml/elements/BitmapProvider$BitmapHolderProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    return-object v0

    :pswitch_73
    new-instance v0, Lmiui/maml/elements/BitmapProvider$UriProvider;

    invoke-direct {v0, p0}, Lmiui/maml/elements/BitmapProvider$UriProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    return-object v0

    :pswitch_79
    new-instance v0, Lmiui/maml/elements/BitmapProvider$FileSystemProvider;

    invoke-direct {v0, p0}, Lmiui/maml/elements/BitmapProvider$FileSystemProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    return-object v0

    :pswitch_7f
    new-instance v0, Lmiui/maml/elements/BitmapProvider$AppIconProvider;

    invoke-direct {v0, p0}, Lmiui/maml/elements/BitmapProvider$AppIconProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    return-object v0

    :pswitch_85
    new-instance v0, Lmiui/maml/elements/BitmapProvider$VirtualScreenProvider;

    invoke-direct {v0, p0}, Lmiui/maml/elements/BitmapProvider$VirtualScreenProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    return-object v0

    :pswitch_8b
    new-instance v0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;

    invoke-direct {v0, p0}, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_91
    new-instance v1, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;

    invoke-direct {v1, p0}, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    return-object v1

    nop

    :sswitch_data_98
    .sparse-switch
        -0x7321c4a8 -> :sswitch_44
        -0x1dc3e025 -> :sswitch_3a
        -0x1d83dd15 -> :sswitch_30
        0x14d4c -> :sswitch_26
        0x4b044737 -> :sswitch_1c
        0x68c97dcd -> :sswitch_12
        0x7a3645c9 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_8b
        :pswitch_85
        :pswitch_7f
        :pswitch_79
        :pswitch_73
        :pswitch_6d
        :pswitch_67
    .end packed-switch
.end method


# virtual methods
.method public finish()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    return-void
.end method

.method public getBitmap(Ljava/lang/String;ZII)Lmiui/maml/elements/BitmapProvider$VersionedBitmap;
    .registers 6

    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object v0
.end method

.method protected getBitmapFromUri(Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_4
    iget-object v4, p0, Lmiui/maml/elements/BitmapProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v4}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    move-object v0, v4

    if-lez p2, :cond_50

    if-lez p3, :cond_50

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v2, v4

    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    mul-int v4, p2, p3

    invoke-static {v2, v4}, Lmiui/maml/elements/BitmapProvider;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v4

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v4, 0x0

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput p3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput p2, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget-object v4, p0, Lmiui/maml/elements/BitmapProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v4}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    move-object v1, v4

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_49} :catch_5d
    .catchall {:try_start_4 .. :try_end_49} :catchall_5b

    invoke-static {v0}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v1}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v3

    :cond_50
    :try_start_50
    invoke-static {v0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_54} :catch_5d
    .catchall {:try_start_50 .. :try_end_54} :catchall_5b

    invoke-static {v0}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v1}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v3

    :catchall_5b
    move-exception v3

    goto :goto_6d

    :catch_5d
    move-exception v4

    :try_start_5e
    const-string v5, "BitmapProvider"

    const-string v6, "getBitmapFromUri Exception"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_65
    .catchall {:try_start_5e .. :try_end_65} :catchall_5b

    nop

    invoke-static {v0}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v1}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v3

    :goto_6d
    invoke-static {v0}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v1}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v3
.end method

.method public init(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0}, Lmiui/maml/elements/BitmapProvider;->reset()V

    return-void
.end method

.method public reset()V
    .registers 1

    return-void
.end method
