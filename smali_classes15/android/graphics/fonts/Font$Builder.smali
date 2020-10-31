.class public final Landroid/graphics/fonts/Font$Builder;
.super Ljava/lang/Object;
.source "Font.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/fonts/Font;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final sFontRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private mAxes:[Landroid/graphics/fonts/FontVariationAxis;

.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mException:Ljava/io/IOException;

.field private mFile:Ljava/io/File;

.field private mItalic:I

.field private mLocaleList:Ljava/lang/String;

.field private mTtcIndex:I

.field private mWeight:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Landroid/graphics/fonts/Font;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/graphics/fonts/Font$Builder;->nGetReleaseNativeFont()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/graphics/fonts/Font$Builder;->sFontRegistry:Llibcore/util/NativeAllocationRegistry;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    const/4 v1, 0x1

    :try_start_13
    invoke-static {p1, p2, v1, v0}, Landroid/graphics/fonts/Font$Builder;->createBuffer(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mBuffer:Ljava/nio/ByteBuffer;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_19} :catch_1a

    goto :goto_1d

    :catch_1a
    move-exception v0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    :goto_1d
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    :try_start_12
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/fonts/Font$Builder;->createBuffer(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mBuffer:Ljava/nio/ByteBuffer;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_18} :catch_19

    goto :goto_1c

    :catch_19
    move-exception v0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    :goto_1c
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {p1, p2, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget-object v2, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v2, :cond_38

    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    return-void

    :cond_38
    iget-object v2, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_63

    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " must be font file."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    return-void

    :cond_63
    :try_start_63
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    iget v4, v1, Landroid/util/TypedValue;->assetCookie:I

    invoke-static {v3, v2, v0, v4}, Landroid/graphics/fonts/Font$Builder;->createBuffer(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mBuffer:Ljava/nio/ByteBuffer;
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_6f} :catch_70

    goto :goto_73

    :catch_70
    move-exception v0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    :goto_73
    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .registers 8

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;JJ)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    :try_start_12
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1b} :catch_49

    :try_start_1b
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    const-wide/16 v2, -0x1

    cmp-long v2, p4, v2

    if-nez v2, :cond_2c

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_3f

    sub-long/2addr v2, p2

    move-wide v5, v2

    goto :goto_2d

    :cond_2c
    move-wide v5, p4

    :goto_2d
    :try_start_2d
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-wide v3, p2

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p4

    iput-object p4, p0, Landroid/graphics/fonts/Font$Builder;->mBuffer:Ljava/nio/ByteBuffer;
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_3c

    :try_start_36
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_4e

    :catch_3a
    move-exception p4

    goto :goto_4c

    :catchall_3c
    move-exception v1

    move-wide p4, v5

    goto :goto_40

    :catchall_3f
    move-exception v1

    :goto_40
    :try_start_40
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_44

    goto :goto_48

    :catchall_44
    move-exception v2

    :try_start_45
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_48
    throw v1
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_49} :catch_49

    :catch_49
    move-exception v0

    move-wide v5, p4

    move-object p4, v0

    :goto_4c
    iput-object p4, p0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    :goto_4e
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    const-string/jumbo v0, "path can not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_18
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_3d

    :try_start_1d
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v3, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/fonts/Font$Builder;->mBuffer:Ljava/nio/ByteBuffer;
    :try_end_2f
    .catchall {:try_start_1d .. :try_end_2f} :catchall_33

    :try_start_2f
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_3d

    goto :goto_40

    :catchall_33
    move-exception v1

    :try_start_34
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_3c

    :catchall_38
    move-exception v2

    :try_start_39
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3c
    throw v1
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3d} :catch_3d

    :catch_3d
    move-exception v0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    :goto_40
    iput-object p1, p0, Landroid/graphics/fonts/Font$Builder;->mFile:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    const-string v0, "buffer can not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_20

    iput-object p1, p0, Landroid/graphics/fonts/Font$Builder;->mBuffer:Ljava/nio/ByteBuffer;

    return-void

    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only direct buffer can be used as the source of font data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/io/File;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/graphics/fonts/Font$Builder;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object p2, p0, Landroid/graphics/fonts/Font$Builder;->mFile:Ljava/io/File;

    iput-object p3, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    return-void
.end method

.method public static createBuffer(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)Ljava/nio/ByteBuffer;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "assetManager can not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "path can not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_14

    :try_start_d
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    goto :goto_1f

    :catch_12
    move-exception v0

    goto :goto_47

    :cond_14
    if-lez p3, :cond_1b

    invoke-virtual {p0, p3, p1}, Landroid/content/res/AssetManager;->openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    goto :goto_1f

    :cond_1b
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->openNonAssetFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    :goto_1f
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_23} :catch_12

    :try_start_23
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v6

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v3
    :try_end_35
    .catchall {:try_start_23 .. :try_end_35} :catchall_3b

    if-eqz v1, :cond_3a

    :try_start_37
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_12

    :cond_3a
    return-object v3

    :catchall_3b
    move-exception v2

    if-eqz v1, :cond_46

    :try_start_3e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    goto :goto_46

    :catchall_42
    move-exception v3

    :try_start_43
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_46
    :goto_46
    throw v2
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_47} :catch_12

    :goto_47
    const/4 v0, 0x3

    if-eqz p2, :cond_4f

    invoke-virtual {p0, p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_53

    :cond_4f
    invoke-virtual {p0, p3, p1, v0}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    :goto_53
    nop

    :try_start_54
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v3
    :try_end_76
    .catchall {:try_start_54 .. :try_end_76} :catchall_97

    const/4 v4, -0x1

    if-ne v3, v4, :cond_80

    nop

    if-eqz v0, :cond_7f

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_7f
    return-object v2

    :cond_80
    :try_start_80
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to access full contents of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_97
    .catchall {:try_start_80 .. :try_end_97} :catchall_97

    :catchall_97
    move-exception v1

    if-eqz v0, :cond_a2

    :try_start_9a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_9e

    goto :goto_a2

    :catchall_9e
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a2
    :goto_a2
    throw v1
.end method

.method private static native nAddAxis(JIF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nBuild(JLjava/nio/ByteBuffer;Ljava/lang/String;IZI)J
.end method

.method private static native nGetReleaseNativeFont()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nInitBuilder()J
.end method


# virtual methods
.method public build()Landroid/graphics/fonts/Font;
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    if-nez v1, :cond_b9

    iget v1, v0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_10

    iget v1, v0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    if-ne v1, v3, :cond_3b

    :cond_10
    iget-object v1, v0, Landroid/graphics/fonts/Font$Builder;->mBuffer:Ljava/nio/ByteBuffer;

    iget v4, v0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    iget-object v5, v0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    invoke-static {v1, v4, v5}, Landroid/graphics/fonts/FontFileUtil;->analyzeStyle(Ljava/nio/ByteBuffer;I[Landroid/graphics/fonts/FontVariationAxis;)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/fonts/FontFileUtil;->isSuccess(I)Z

    move-result v4

    if-eqz v4, :cond_35

    iget v4, v0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    if-ne v4, v3, :cond_2a

    invoke-static {v1}, Landroid/graphics/fonts/FontFileUtil;->unpackWeight(I)I

    move-result v4

    iput v4, v0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    :cond_2a
    iget v4, v0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    if-ne v4, v3, :cond_3b

    invoke-static {v1}, Landroid/graphics/fonts/FontFileUtil;->unpackItalic(I)Z

    move-result v3

    iput v3, v0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    goto :goto_3b

    :cond_35
    const/16 v3, 0x190

    iput v3, v0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    iput v2, v0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    :cond_3b
    :goto_3b
    const/16 v1, 0x3e8

    iget v3, v0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    iget v1, v0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    if-ne v1, v3, :cond_50

    move v9, v3

    goto :goto_51

    :cond_50
    move v9, v2

    :goto_51
    iget v1, v0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    if-ne v1, v3, :cond_56

    goto :goto_57

    :cond_56
    move v3, v2

    :goto_57
    move v1, v3

    invoke-static {}, Landroid/graphics/fonts/Font$Builder;->nInitBuilder()J

    move-result-wide v11

    iget-object v3, v0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    if-eqz v3, :cond_73

    array-length v4, v3

    :goto_61
    if-ge v2, v4, :cond_73

    aget-object v5, v3, v2

    invoke-virtual {v5}, Landroid/graphics/fonts/FontVariationAxis;->getOpenTypeTagValue()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v7

    invoke-static {v11, v12, v6, v7}, Landroid/graphics/fonts/Font$Builder;->nAddAxis(JIF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    :cond_73
    iget-object v2, v0, Landroid/graphics/fonts/Font$Builder;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, v0, Landroid/graphics/fonts/Font$Builder;->mFile:Ljava/io/File;

    if-nez v3, :cond_80

    const-string v3, ""

    goto :goto_84

    :cond_80
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    :goto_84
    move-object v7, v3

    iget v8, v0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    iget v10, v0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    move-wide v4, v11

    move-object v6, v2

    invoke-static/range {v4 .. v10}, Landroid/graphics/fonts/Font$Builder;->nBuild(JLjava/nio/ByteBuffer;Ljava/lang/String;IZI)J

    move-result-wide v3

    new-instance v5, Landroid/graphics/fonts/Font;

    iget-object v6, v0, Landroid/graphics/fonts/Font$Builder;->mFile:Ljava/io/File;

    new-instance v8, Landroid/graphics/fonts/FontStyle;

    iget v10, v0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    invoke-direct {v8, v10, v1}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    iget v10, v0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    iget-object v14, v0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    iget-object v15, v0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    const/16 v22, 0x0

    move-object v13, v5

    move-object/from16 v20, v14

    move-object/from16 v21, v15

    move-wide v14, v3

    move-object/from16 v16, v2

    move-object/from16 v17, v6

    move-object/from16 v18, v8

    move/from16 v19, v10

    invoke-direct/range {v13 .. v22}, Landroid/graphics/fonts/Font;-><init>(JLjava/nio/ByteBuffer;Ljava/io/File;Landroid/graphics/fonts/FontStyle;I[Landroid/graphics/fonts/FontVariationAxis;Ljava/lang/String;Landroid/graphics/fonts/Font$1;)V

    sget-object v6, Landroid/graphics/fonts/Font$Builder;->sFontRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v6, v5, v3, v4}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    return-object v5

    :cond_b9
    new-instance v1, Ljava/io/IOException;

    iget-object v2, v0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    const-string v3, "Failed to read font contents"

    invoke-direct {v1, v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;
    .registers 3

    invoke-static {p1}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    return-object p0
.end method

.method public setFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Landroid/graphics/fonts/Font$Builder;
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    :cond_4
    invoke-virtual {p1}, [Landroid/graphics/fonts/FontVariationAxis;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/fonts/FontVariationAxis;

    :goto_a
    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    return-object p0
.end method

.method public setSlant(I)Landroid/graphics/fonts/Font$Builder;
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    const/4 v0, 0x1

    :goto_5
    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    return-object p0
.end method

.method public setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;
    .registers 2

    iput p1, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    return-object p0
.end method

.method public setWeight(I)Landroid/graphics/fonts/Font$Builder;
    .registers 4

    const/4 v0, 0x1

    if-gt v0, p1, :cond_8

    const/16 v1, 0x3e8

    if-gt p1, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iput p1, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    return-object p0
.end method
