.class public interface abstract Lcom/android/camera/resource/ResponseListener;
.super Ljava/lang/Object;
.source "ResponseListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onResponse(Ljava/lang/Object;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation
.end method

.method public abstract onResponseError(ILjava/lang/String;Ljava/lang/Object;)V
.end method
