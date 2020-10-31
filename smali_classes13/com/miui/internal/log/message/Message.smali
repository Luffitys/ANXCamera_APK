.class public interface abstract Lcom/miui/internal/log/message/Message;
.super Ljava/lang/Object;
.source "Message.java"


# virtual methods
.method public abstract format(Ljava/lang/Appendable;)V
.end method

.method public abstract getThrowable()Ljava/lang/Throwable;
.end method

.method public abstract isRecycled()Z
.end method

.method public abstract prepareForReuse()V
.end method

.method public abstract recycle()V
.end method
