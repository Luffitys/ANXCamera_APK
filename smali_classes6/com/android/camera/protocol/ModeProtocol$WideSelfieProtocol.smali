.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$WideSelfieProtocol;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# static fields
.field public static final TYPE_TAG:I = 0xd8


# virtual methods
.method public abstract initPreviewLayout(IIII)V
.end method

.method public abstract requestRender()V
.end method

.method public abstract resetShootUI()V
.end method

.method public abstract setShootingUI()V
.end method

.method public abstract updateHintText(I)V
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract updatePreviewBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method

.method public abstract updateThumbBackgroudLayout(ZZI)V
.end method
