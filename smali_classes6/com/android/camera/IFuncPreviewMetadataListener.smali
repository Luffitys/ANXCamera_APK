.class public interface abstract Lcom/android/camera/IFuncPreviewMetadataListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;
.implements Lcom/android/camera/IPreviewMetadataListener;
.implements Lio/reactivex/functions/Consumer;


# virtual methods
.method public abstract accept(Ljava/lang/Object;)V
.end method

.method public abstract apply(Ljava/lang/Object;)Ljava/lang/Object;
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
