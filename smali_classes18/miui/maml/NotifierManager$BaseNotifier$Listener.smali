.class Lmiui/maml/NotifierManager$BaseNotifier$Listener;
.super Ljava/lang/Object;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/NotifierManager$BaseNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Listener"
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field public intent:Landroid/content/Intent;

.field public obj:Ljava/lang/Object;

.field private paused:Z

.field private pendingNotify:Z

.field public ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/maml/NotifierManager$OnNotifyListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiui/maml/NotifierManager$OnNotifyListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->ref:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$000(Lmiui/maml/NotifierManager$BaseNotifier$Listener;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->paused:Z

    return v0
.end method


# virtual methods
.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .registers 5

    iget-boolean v0, p0, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->paused:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->pendingNotify:Z

    iput-object p1, p0, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->context:Landroid/content/Context;

    iput-object p2, p0, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->intent:Landroid/content/Intent;

    iput-object p3, p0, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->obj:Ljava/lang/Object;

    goto :goto_1b

    :cond_e
    iget-object v0, p0, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/NotifierManager$OnNotifyListener;

    if-eqz v0, :cond_1b

    invoke-interface {v0, p1, p2, p3}, Lmiui/maml/NotifierManager$OnNotifyListener;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public pause()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->paused:Z

    return-void
.end method

.method public resume()V
    .registers 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->paused:Z

    iget-boolean v1, p0, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->pendingNotify:Z

    if-eqz v1, :cond_23

    iget-object v1, p0, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/NotifierManager$OnNotifyListener;

    if-eqz v1, :cond_23

    iget-object v2, p0, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->context:Landroid/content/Context;

    iget-object v3, p0, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->intent:Landroid/content/Intent;

    iget-object v4, p0, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->obj:Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lmiui/maml/NotifierManager$OnNotifyListener;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    iput-boolean v0, p0, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->pendingNotify:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->context:Landroid/content/Context;

    iput-object v0, p0, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->intent:Landroid/content/Intent;

    iput-object v0, p0, Lmiui/maml/NotifierManager$BaseNotifier$Listener;->obj:Ljava/lang/Object;

    :cond_23
    return-void
.end method
