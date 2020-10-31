.class Landroid/opengl/GLLogWrapper$PointerInfo;
.super Ljava/lang/Object;
.source "GLLogWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLLogWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PointerInfo"
.end annotation


# instance fields
.field public mPointer:Ljava/nio/Buffer;

.field public mSize:I

.field public mStride:I

.field public mTempByteBuffer:Ljava/nio/ByteBuffer;

.field public mType:I

.field final synthetic this$0:Landroid/opengl/GLLogWrapper;


# direct methods
.method public constructor <init>(Landroid/opengl/GLLogWrapper;)V
    .registers 2

    iput-object p1, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->this$0:Landroid/opengl/GLLogWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/opengl/GLLogWrapper;IIILjava/nio/Buffer;)V
    .registers 6

    iput-object p1, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->this$0:Landroid/opengl/GLLogWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mSize:I

    iput p3, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mType:I

    iput p4, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mStride:I

    iput-object p5, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mPointer:Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public bindByteBuffer()V
    .registers 4

    iget-object v0, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mPointer:Ljava/nio/Buffer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_d

    :cond_6
    iget-object v1, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->this$0:Landroid/opengl/GLLogWrapper;

    const/4 v2, -0x1

    # invokes: Landroid/opengl/GLLogWrapper;->toByteBuffer(ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;
    invoke-static {v1, v2, v0}, Landroid/opengl/GLLogWrapper;->access$000(Landroid/opengl/GLLogWrapper;ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_d
    iput-object v0, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mTempByteBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public getStride()I
    .registers 3

    iget v0, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mStride:I

    if-lez v0, :cond_5

    goto :goto_e

    :cond_5
    iget v0, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mType:I

    invoke-virtual {p0, v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->sizeof(I)I

    move-result v0

    iget v1, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mSize:I

    mul-int/2addr v0, v1

    :goto_e
    return v0
.end method

.method public sizeof(I)I
    .registers 4

    const/16 v0, 0x1406

    const/4 v1, 0x4

    if-eq p1, v0, :cond_14

    const/16 v0, 0x140c

    if-eq p1, v0, :cond_13

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_16

    const/4 v0, 0x0

    return v0

    :pswitch_f
    const/4 v0, 0x2

    return v0

    :pswitch_11
    return v0

    :pswitch_12
    return v0

    :cond_13
    return v1

    :cond_14
    return v1

    nop

    :pswitch_data_16
    .packed-switch 0x1400
        :pswitch_12
        :pswitch_11
        :pswitch_f
    .end packed-switch
.end method

.method public unbindByteBuffer()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mTempByteBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method
