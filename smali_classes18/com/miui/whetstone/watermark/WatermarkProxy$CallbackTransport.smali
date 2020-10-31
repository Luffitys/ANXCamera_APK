.class Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;
.super Lcom/miui/whetstone/watermark/IWatermarkCallback$Stub;
.source "WatermarkProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/watermark/WatermarkProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackTransport"
.end annotation


# static fields
.field private static final TYPE_ON_DECODE:I = 0x2

.field private static final TYPE_ON_ENCODE:I = 0x1


# instance fields
.field private final mCallback:Lcom/miui/whetstone/watermark/WatermarkCallback;

.field private final mCallbackHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/miui/whetstone/watermark/WatermarkCallback;Landroid/os/Looper;)V
    .registers 4

    invoke-direct {p0}, Lcom/miui/whetstone/watermark/IWatermarkCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;->mCallback:Lcom/miui/whetstone/watermark/WatermarkCallback;

    if-nez p2, :cond_f

    new-instance v0, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport$1;

    invoke-direct {v0, p0}, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport$1;-><init>(Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;)V

    iput-object v0, p0, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;->mCallbackHandler:Landroid/os/Handler;

    goto :goto_16

    :cond_f
    new-instance v0, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport$2;

    invoke-direct {v0, p0, p2}, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport$2;-><init>(Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;->mCallbackHandler:Landroid/os/Handler;

    :goto_16
    return-void
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "WatermarkProxy"

    if-eq v0, v1, :cond_41

    const/4 v1, 0x2

    if-eq v0, v1, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknow msg type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    :cond_21
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "watermark _handleMessage decode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;->mCallback:Lcom/miui/whetstone/watermark/WatermarkCallback;

    invoke-interface {v1, v0}, Lcom/miui/whetstone/watermark/WatermarkCallback;->onDecodeWatermarkDone(Ljava/lang/String;)V

    goto :goto_61

    :cond_41
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "watermark _handleMessage encode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;->mCallback:Lcom/miui/whetstone/watermark/WatermarkCallback;

    invoke-interface {v1, v0}, Lcom/miui/whetstone/watermark/WatermarkCallback;->onEncodeWatermarkDone(Landroid/graphics/Bitmap;)V

    nop

    :goto_61
    return-void
.end method

.method static synthetic access$000(Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public onDecodeWatermark(Ljava/lang/String;)V
    .registers 4

    const-string v0, "WatermarkProxy"

    const-string v1, "watermark CallbackTransport onDecodeWatermark"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEncodeWatermark(Landroid/graphics/Bitmap;)V
    .registers 4

    const-string v0, "WatermarkProxy"

    const-string v1, "watermark CallbackTransport onEncodeWatermark"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
