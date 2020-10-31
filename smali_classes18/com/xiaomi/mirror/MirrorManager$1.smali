.class Lcom/xiaomi/mirror/MirrorManager$1;
.super Landroid/os/Binder;
.source "MirrorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/MirrorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/mirror/MirrorManager;


# direct methods
.method constructor <init>(Lcom/xiaomi/mirror/MirrorManager;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/mirror/MirrorManager$1;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_22

    const/4 v1, 0x2

    if-eq p1, v1, :cond_b

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :cond_b
    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorManager$1;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    # getter for: Lcom/xiaomi/mirror/MirrorManager;->SERVICE_mBinder_DESCRIPTOR:Ljava/lang/String;
    invoke-static {v1}, Lcom/xiaomi/mirror/MirrorManager;->access$000(Lcom/xiaomi/mirror/MirrorManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iget-object v3, p0, Lcom/xiaomi/mirror/MirrorManager$1;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    # invokes: Lcom/xiaomi/mirror/MirrorManager;->sendSecureWin(II)V
    invoke-static {v3, v1, v2}, Lcom/xiaomi/mirror/MirrorManager;->access$200(Lcom/xiaomi/mirror/MirrorManager;II)V

    return v0

    :cond_22
    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorManager$1;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    # getter for: Lcom/xiaomi/mirror/MirrorManager;->SERVICE_mBinder_DESCRIPTOR:Ljava/lang/String;
    invoke-static {v1}, Lcom/xiaomi/mirror/MirrorManager;->access$000(Lcom/xiaomi/mirror/MirrorManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iget-object v3, p0, Lcom/xiaomi/mirror/MirrorManager$1;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    # invokes: Lcom/xiaomi/mirror/MirrorManager;->sendAcceptInput(II)V
    invoke-static {v3, v1, v2}, Lcom/xiaomi/mirror/MirrorManager;->access$100(Lcom/xiaomi/mirror/MirrorManager;II)V

    return v0
.end method
