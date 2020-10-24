.class public Lcom/xiaomi/mediacodec/MoviePlayer$MediaFrame;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public buffer:Ljava/nio/ByteBuffer;

.field public info:Landroid/media/MediaCodec$BufferInfo;

.field final synthetic this$0:Lcom/xiaomi/mediacodec/MoviePlayer;


# direct methods
.method public constructor <init>(Lcom/xiaomi/mediacodec/MoviePlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mediacodec/MoviePlayer$MediaFrame;->this$0:Lcom/xiaomi/mediacodec/MoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
