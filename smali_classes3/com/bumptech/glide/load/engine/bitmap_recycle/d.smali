.class public interface abstract Lcom/bumptech/glide/load/engine/bitmap_recycle/d;
.super Ljava/lang/Object;
.source "BitmapPool.java"


# virtual methods
.method public abstract a(F)V
.end method

.method public abstract a(Landroid/graphics/Bitmap;)V
.end method

.method public abstract aa()V
.end method

.method public abstract c(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract d(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getMaxSize()J
.end method

.method public abstract trimMemory(I)V
.end method
