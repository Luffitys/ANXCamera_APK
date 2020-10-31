.class Landroid/net/EthernetManager$1;
.super Landroid/os/Handler;
.source "EthernetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/EthernetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/EthernetManager;


# direct methods
.method constructor <init>(Landroid/net/EthernetManager;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/net/EthernetManager$1;->this$0:Landroid/net/EthernetManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_2c

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    move v0, v1

    iget-object v1, p0, Landroid/net/EthernetManager$1;->this$0:Landroid/net/EthernetManager;

    # getter for: Landroid/net/EthernetManager;->mListeners:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/net/EthernetManager;->access$000(Landroid/net/EthernetManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/EthernetManager$Listener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Landroid/net/EthernetManager$Listener;->onAvailabilityChanged(Ljava/lang/String;Z)V

    goto :goto_18

    :cond_2c
    return-void
.end method
