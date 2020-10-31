.class Landroid/hardware/miuiface/MiuiFaceManagerImpl$1;
.super Ljava/lang/Object;
.source "MiuiFaceManagerImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/miuiface/MiuiFaceManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/miuiface/MiuiFaceManagerImpl;


# direct methods
.method constructor <init>(Landroid/hardware/miuiface/MiuiFaceManagerImpl;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$1;->this$0:Landroid/hardware/miuiface/MiuiFaceManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$1;->this$0:Landroid/hardware/miuiface/MiuiFaceManagerImpl;

    # getter for: Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mBinderLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$100(Landroid/hardware/miuiface/MiuiFaceManagerImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    # getter for: Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mMiuiFaceService Service Died."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$1;->this$0:Landroid/hardware/miuiface/MiuiFaceManagerImpl;

    const/4 v2, 0x0

    # setter for: Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;
    invoke-static {v1, v2}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$302(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Landroid/os/IBinder;)Landroid/os/IBinder;

    monitor-exit v0

    return-void

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v1
.end method
