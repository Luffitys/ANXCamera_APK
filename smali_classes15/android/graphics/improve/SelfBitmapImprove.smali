.class public Landroid/graphics/improve/SelfBitmapImprove;
.super Ljava/lang/Object;
.source "SelfBitmapImprove.java"

# interfaces
.implements Landroid/graphics/improve/BitmapImproveAble;


# static fields
.field private static final CLASS_MODELS:Ljava/lang/String; = "com.xiaomi.sr.models.MaceSRModel"


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
    iget-object v1, p0, Landroid/graphics/improve/SelfBitmapImprove;->processImage:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Landroid/graphics/improve/SelfBitmapImprove;->mType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_19} :catch_22
    .catchall {:try_start_2 .. :try_end_19} :catchall_20

    move-object v0, v1

    nop

    :try_start_1b
    invoke-virtual {p0}, Landroid/graphics/improve/SelfBitmapImprove;->release()V

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_2c

    return-object v0

    :catchall_20
    move-exception v0

    goto :goto_2e

    :catch_22
    move-exception v1

    :try_start_23
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_20

    :try_start_26
    invoke-virtual {p0}, Landroid/graphics/improve/SelfBitmapImprove;->release()V

    nop

    monitor-exit p0

    return-object v0

    :catchall_2c
    move-exception v0

    goto :goto_33

    :goto_2e
    invoke-virtual {p0}, Landroid/graphics/improve/SelfBitmapImprove;->release()V

    nop

    throw v0

    :goto_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_2c

    throw v0
.end method

.method public init(Landroid/content/Context;I)Z
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "com.xiaomi.sr.models.MaceSRModel"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput p2, p0, Landroid/graphics/improve/SelfBitmapImprove;->mType:I

    const-string/jumbo v2, "processImage"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/graphics/Bitmap;

    aput-object v4, v3, v0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/improve/SelfBitmapImprove;->processImage:Ljava/lang/reflect/Method;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_20

    nop

    return v5

    :catch_20
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public release()V
    .registers 1

    return-void
.end method
