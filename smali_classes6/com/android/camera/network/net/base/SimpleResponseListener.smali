.class public abstract Lcom/android/camera/network/net/base/SimpleResponseListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/network/net/base/ResponseListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onResponse(Ljava/lang/Object;)V
.end method

.method public final varargs onResponse([Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object p1, p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/camera/network/net/base/SimpleResponseListener;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method public onResponseError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
