.class public Lcom/android/camera/effect/draw_mode/DrawRoundFillRectAttribute;
.super Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;
.source ""


# instance fields
.field public mColor:I

.field public mVertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;-><init>()V

    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mX:I

    iput p2, p0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mY:I

    iput p3, p0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mWidth:I

    iput p4, p0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mHeight:I

    iput p5, p0, Lcom/android/camera/effect/draw_mode/DrawRoundFillRectAttribute;->mColor:I

    const/16 p1, 0xc

    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    invoke-static {p3, p4, p6}, Lcom/android/camera/effect/renders/VertexHelper;->genRoundRectVex(III)[F

    move-result-object p1

    array-length p2, p1

    mul-int/lit8 p2, p2, 0x20

    div-int/lit8 p2, p2, 0x8

    invoke-static {p2}, Lcom/android/camera/effect/renders/ShaderRender;->allocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/effect/draw_mode/DrawRoundFillRectAttribute;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object p0, p0, Lcom/android/camera/effect/draw_mode/DrawRoundFillRectAttribute;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method
