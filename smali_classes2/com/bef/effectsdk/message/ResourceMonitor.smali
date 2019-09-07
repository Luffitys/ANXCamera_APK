.class public Lcom/bef/effectsdk/message/ResourceMonitor;
.super Ljava/lang/Object;
.source "ResourceMonitor.java"

# interfaces
.implements Lcom/bef/effectsdk/message/MessageInterceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bef/effectsdk/message/ResourceMonitor$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ResourceMonitor"


# instance fields
.field private mListener:Lcom/bef/effectsdk/message/ResourceMonitor$Listener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bef/effectsdk/message/ResourceMonitor;->mListener:Lcom/bef/effectsdk/message/ResourceMonitor$Listener;

    return-void
.end method

.method public intercept(Landroid/os/Message;)Z
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-ne v2, v0, :cond_4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/bef/effectsdk/message/ResourceMonitor;->mListener:Lcom/bef/effectsdk/message/ResourceMonitor$Listener;

    if-eqz p0, :cond_3

    invoke-interface {p0, v0, v1}, Lcom/bef/effectsdk/message/ResourceMonitor$Listener;->onResourceLoadFinish(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/bef/effectsdk/message/ResourceMonitor;->mListener:Lcom/bef/effectsdk/message/ResourceMonitor$Listener;

    if-eqz p0, :cond_3

    invoke-interface {p0, v0, v3}, Lcom/bef/effectsdk/message/ResourceMonitor$Listener;->onResourceLoadFinish(Ljava/lang/String;Z)V

    :cond_3
    :goto_0
    return v3

    :cond_4
    return v1
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method setListener(Lcom/bef/effectsdk/message/ResourceMonitor$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/bef/effectsdk/message/ResourceMonitor;->mListener:Lcom/bef/effectsdk/message/ResourceMonitor$Listener;

    return-void
.end method
