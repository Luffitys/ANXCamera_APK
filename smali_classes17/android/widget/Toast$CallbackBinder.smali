.class Landroid/widget/Toast$CallbackBinder;
.super Landroid/app/ITransientNotificationCallback$Stub;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Toast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackBinder"
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/Toast$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Ljava/util/List;Landroid/os/Handler;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/Toast$Callback;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/app/ITransientNotificationCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/widget/Toast$CallbackBinder;->mCallbacks:Ljava/util/List;

    iput-object p2, p0, Landroid/widget/Toast$CallbackBinder;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Landroid/os/Handler;Landroid/widget/Toast$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/Toast$CallbackBinder;-><init>(Ljava/util/List;Landroid/os/Handler;)V

    return-void
.end method

.method private getCallbacks()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/widget/Toast$Callback;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/Toast$CallbackBinder;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/widget/Toast$CallbackBinder;->mCallbacks:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method


# virtual methods
.method public synthetic lambda$onToastHidden$1$Toast$CallbackBinder()V
    .registers 3

    invoke-direct {p0}, Landroid/widget/Toast$CallbackBinder;->getCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Toast$Callback;

    invoke-virtual {v1}, Landroid/widget/Toast$Callback;->onToastHidden()V

    goto :goto_8

    :cond_18
    return-void
.end method

.method public synthetic lambda$onToastShown$0$Toast$CallbackBinder()V
    .registers 3

    invoke-direct {p0}, Landroid/widget/Toast$CallbackBinder;->getCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Toast$Callback;

    invoke-virtual {v1}, Landroid/widget/Toast$Callback;->onToastShown()V

    goto :goto_8

    :cond_18
    return-void
.end method

.method public onToastHidden()V
    .registers 3

    iget-object v0, p0, Landroid/widget/Toast$CallbackBinder;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/widget/-$$Lambda$Toast$CallbackBinder$SR1aRrAMSFwOe15ZWVhbrCRpoJE;

    invoke-direct {v1, p0}, Landroid/widget/-$$Lambda$Toast$CallbackBinder$SR1aRrAMSFwOe15ZWVhbrCRpoJE;-><init>(Landroid/widget/Toast$CallbackBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onToastShown()V
    .registers 3

    iget-object v0, p0, Landroid/widget/Toast$CallbackBinder;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/widget/-$$Lambda$Toast$CallbackBinder$_s9yPuiT4nCWyRQ8LFD5klzoGtY;

    invoke-direct {v1, p0}, Landroid/widget/-$$Lambda$Toast$CallbackBinder$_s9yPuiT4nCWyRQ8LFD5klzoGtY;-><init>(Landroid/widget/Toast$CallbackBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
