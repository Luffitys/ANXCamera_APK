.class Landroid/net/ConnectivityManager$2;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ConnectivityManager;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/net/ConnectivityManager;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Landroid/net/ConnectivityManager$2;->this$0:Landroid/net/ConnectivityManager;

    iput-object p2, p0, Landroid/net/ConnectivityManager$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Landroid/net/ConnectivityManager$2;->val$handler:Landroid/os/Handler;

    if-nez v0, :cond_8

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_b

    :cond_8
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_b
    return-void
.end method
