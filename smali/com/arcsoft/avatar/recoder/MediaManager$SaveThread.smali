.class public Lcom/arcsoft/avatar/recoder/MediaManager$SaveThread;
.super Ljava/lang/Thread;
.source "MediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/avatar/recoder/MediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SaveThread"
.end annotation


# instance fields
.field final synthetic a:Lcom/arcsoft/avatar/recoder/MediaManager;

.field private b:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Lcom/arcsoft/avatar/recoder/MediaManager;Ljava/nio/ByteBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/avatar/recoder/MediaManager$SaveThread;->a:Lcom/arcsoft/avatar/recoder/MediaManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/arcsoft/avatar/recoder/MediaManager$SaveThread;->b:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget-object v0, p0, Lcom/arcsoft/avatar/recoder/MediaManager$SaveThread;->a:Lcom/arcsoft/avatar/recoder/MediaManager;

    invoke-static {v0}, Lcom/arcsoft/avatar/recoder/MediaManager;->a(Lcom/arcsoft/avatar/recoder/MediaManager;)I

    move-result v0

    iget-object v1, p0, Lcom/arcsoft/avatar/recoder/MediaManager$SaveThread;->a:Lcom/arcsoft/avatar/recoder/MediaManager;

    invoke-static {v1}, Lcom/arcsoft/avatar/recoder/MediaManager;->b(Lcom/arcsoft/avatar/recoder/MediaManager;)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object p0, p0, Lcom/arcsoft/avatar/recoder/MediaManager$SaveThread;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sdcard/Pictures/_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {v0, p0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method
