.class public Lcom/android/camera/effect/draw_mode/DrawFillRectAttribute;
.super Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;
.source ""


# instance fields
.field public mColor:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;-><init>()V

    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mX:I

    iput p2, p0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mY:I

    iput p3, p0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mWidth:I

    iput p4, p0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mHeight:I

    iput p5, p0, Lcom/android/camera/effect/draw_mode/DrawFillRectAttribute;->mColor:I

    const/4 p1, 0x4

    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    return-void
.end method
