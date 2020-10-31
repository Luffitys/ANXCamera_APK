.class public Landroid/graphics/improve/KingSoftBitmapImprove;
.super Ljava/lang/Object;
.source "KingSoftBitmapImprove.java"

# interfaces
.implements Landroid/graphics/improve/BitmapImproveAble;


# static fields
.field private static final CLASS_AIKIT:Ljava/lang/String; = "com.ksyun.ai.sr.ImageAIKit"

.field private static final CLASS_CONST:Ljava/lang/String; = "com.ksyun.ai.sr.Constants"


# instance fields
.field private mType:I

.field private processImage:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public improveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 7

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Landroid/graphics/improve/KingSoftBitmapImprove;->processImage:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Landroid/graphics/improve/KingSoftBitmapImprove;->mType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_20

    move-object v0, v1

    nop

    :try_start_1b
    invoke-virtual {p0}, Landroid/graphics/improve/KingSoftBitmapImprove;->release()V

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_2a

    return-object v0

    :catchall_20
    move-exception v1

    :try_start_21
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_2c

    :try_start_24
    invoke-virtual {p0}, Landroid/graphics/improve/KingSoftBitmapImprove;->release()V

    nop

    monitor-exit p0

    return-object v0

    :catchall_2a
    move-exception v0

    goto :goto_32

    :catchall_2c
    move-exception v0

    invoke-virtual {p0}, Landroid/graphics/improve/KingSoftBitmapImprove;->release()V

    nop

    throw v0

    :goto_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_24 .. :try_end_33} :catchall_2a

    throw v0
.end method

.method public init(Landroid/content/Context;I)Z
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "com.ksyun.ai.sr.Constants"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "com.ksyun.ai.sr.ImageAIKit"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "MODEL_TYPE_2X"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Landroid/graphics/improve/KingSoftBitmapImprove;->mType:I

    const-string/jumbo v3, "processImage"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/Bitmap;

    aput-object v5, v4, v0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Landroid/graphics/improve/KingSoftBitmapImprove;->processImage:Ljava/lang/reflect/Method;
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_37

    nop

    return v6

    :catchall_37
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public release()V
    .registers 1

    return-void
.end method
