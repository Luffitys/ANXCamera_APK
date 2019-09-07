.class public interface abstract Lcom/ss/android/medialib/presenter/IMediaPresenter;
.super Ljava/lang/Object;
.source "IMediaPresenter.java"


# virtual methods
.method public abstract initImageDrawer(I)I
.end method

.method public abstract onDrawFrame(I[F)I
.end method

.method public abstract onDrawFrame(Lcom/ss/android/medialib/camera/ImageFrame;)I
.end method

.method public abstract setOnOpenGLCallback(Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;)V
.end method

.method public abstract setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
.end method

.method public abstract updateRotation(IZ)V
.end method
