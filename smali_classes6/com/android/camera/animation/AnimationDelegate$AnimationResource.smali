.class public interface abstract Lcom/android/camera/animation/AnimationDelegate$AnimationResource;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DATA_CHANGE_TYPE_CAMERA_ID:I = 0x2

.field public static final DATA_CHANGE_TYPE_NULL:I = 0x1

.field public static final DATA_CHANGE_TYPE_UI_STYLE:I = 0x3

.field public static final LEFT_LANDSCAPE:I = 0x1

.field public static final PORTRAIT:I = 0x0

.field public static final RIGHT_LANDSCAPE:I = 0x2


# virtual methods
.method public abstract canProvide()Z
.end method

.method public abstract isEnableClick()Z
.end method

.method public abstract needViewClear()Z
.end method

.method public abstract notifyAfterFrameAvailable(I)V
.end method

.method public abstract notifyDataChanged(II)V
.end method

.method public abstract provideAnimateElement(ILjava/util/List;I)V
.end method

.method public abstract provideOrientationChanged(ILjava/util/List;I)V
    .param p1    # I
        .annotation build Lcom/android/camera/animation/AnimationDelegate$AnimationResource$ScreenOrientation;
        .end annotation
    .end param
.end method

.method public abstract provideRotateItem(Ljava/util/List;I)V
.end method

.method public abstract setClickEnable(Z)V
.end method
