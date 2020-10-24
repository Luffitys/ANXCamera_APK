.class public abstract Lcom/miui/internal/log/message/AbstractMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/internal/log/message/Message;


# static fields
.field private static final TAG:Ljava/lang/String; = "AbstractMessage"


# instance fields
.field private mRecycled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract format(Ljava/lang/Appendable;)V
.end method

.method public abstract getThrowable()Ljava/lang/Throwable;
.end method

.method public isRecycled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/internal/log/message/AbstractMessage;->mRecycled:Z

    return p0
.end method

.method protected abstract onRecycle()V
.end method

.method public prepareForReuse()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/log/message/AbstractMessage;->mRecycled:Z

    return-void
.end method

.method public recycle()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/internal/log/message/AbstractMessage;->mRecycled:Z

    if-eqz v0, :cond_0

    const-string p0, "AbstractMessage"

    const-string v0, "Recycle message twice"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/log/message/AbstractMessage;->onRecycle()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/log/message/AbstractMessage;->mRecycled:Z

    invoke-static {p0}, Lcom/miui/internal/log/message/MessageFactory;->recycle(Lcom/miui/internal/log/message/Message;)V

    :goto_0
    return-void
.end method
