.class Landroid/hardware/miuiface/MiuiFaceManagerImpl$2;
.super Landroid/os/Binder;
.source "MiuiFaceManagerImpl.java"


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

    iput-object p1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$2;->this$0:Landroid/hardware/miuiface/MiuiFaceManagerImpl;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    # getter for: Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mServiceReceiver callback: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x105

    const/4 v4, 0x1

    if-eq v1, v3, :cond_181

    const/16 v3, 0x12d

    if-eq v1, v3, :cond_160

    packed-switch v1, :pswitch_data_1a2

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    :pswitch_2f
    # getter for: Landroid/hardware/miuiface/MiuiFaceManagerImpl;->RECEIVER_DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$1200()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$2;->this$0:Landroid/hardware/miuiface/MiuiFaceManagerImpl;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v4, :cond_40

    move v3, v4

    goto :goto_41

    :cond_40
    const/4 v3, 0x0

    :goto_41
    # setter for: Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mHasInit:Z
    invoke-static {v5, v3}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$1402(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Z)Z

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v4

    :pswitch_48
    # getter for: Landroid/hardware/miuiface/MiuiFaceManagerImpl;->RECEIVER_DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$1200()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    iget-object v6, v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$2;->this$0:Landroid/hardware/miuiface/MiuiFaceManagerImpl;

    # getter for: Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$1300(Landroid/hardware/miuiface/MiuiFaceManagerImpl;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0xce

    new-instance v9, Landroid/hardware/miuiface/Miuiface;

    const/4 v7, 0x0

    move-object v6, v9

    move v8, v14

    move-object v4, v9

    move v9, v5

    move-object v3, v10

    move v1, v11

    move-wide v10, v12

    invoke-direct/range {v6 .. v11}, Landroid/hardware/miuiface/Miuiface;-><init>(Ljava/lang/CharSequence;IIJ)V

    const/4 v6, 0x0

    invoke-virtual {v3, v1, v15, v6, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    return v1

    :pswitch_81
    # getter for: Landroid/hardware/miuiface/MiuiFaceManagerImpl;->RECEIVER_DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$1200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iget-object v6, v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$2;->this$0:Landroid/hardware/miuiface/MiuiFaceManagerImpl;

    # getter for: Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$1300(Landroid/hardware/miuiface/MiuiFaceManagerImpl;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0xcd

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v1, v5, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :pswitch_ac
    # getter for: Landroid/hardware/miuiface/MiuiFaceManagerImpl;->RECEIVER_DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$1200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iget-object v1, v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$2;->this$0:Landroid/hardware/miuiface/MiuiFaceManagerImpl;

    # getter for: Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$1300(Landroid/hardware/miuiface/MiuiFaceManagerImpl;)Landroid/os/Handler;

    move-result-object v1

    const/16 v5, 0xcc

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    return v1

    :pswitch_cb
    # getter for: Landroid/hardware/miuiface/MiuiFaceManagerImpl;->RECEIVER_DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$1200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    const/4 v1, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e6

    sget-object v5, Landroid/hardware/miuiface/Miuiface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Landroid/hardware/miuiface/Miuiface;

    :cond_e6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iget-object v6, v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$2;->this$0:Landroid/hardware/miuiface/MiuiFaceManagerImpl;

    # getter for: Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$1300(Landroid/hardware/miuiface/MiuiFaceManagerImpl;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0xcb

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v5, v8, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :pswitch_ff
    # getter for: Landroid/hardware/miuiface/MiuiFaceManagerImpl;->RECEIVER_DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$1200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iget-object v6, v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$2;->this$0:Landroid/hardware/miuiface/MiuiFaceManagerImpl;

    # getter for: Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$1300(Landroid/hardware/miuiface/MiuiFaceManagerImpl;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0xca

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v1, v5, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :pswitch_12a
    # getter for: Landroid/hardware/miuiface/MiuiFaceManagerImpl;->RECEIVER_DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$1200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    iget-object v3, v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$2;->this$0:Landroid/hardware/miuiface/MiuiFaceManagerImpl;

    # getter for: Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$1300(Landroid/hardware/miuiface/MiuiFaceManagerImpl;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0xc9

    new-instance v15, Landroid/hardware/miuiface/Miuiface;

    const/4 v4, 0x0

    move-object v3, v15

    move v5, v11

    move v6, v1

    move-wide v7, v9

    invoke-direct/range {v3 .. v8}, Landroid/hardware/miuiface/Miuiface;-><init>(Ljava/lang/CharSequence;IIJ)V

    const/4 v3, 0x0

    invoke-virtual {v13, v14, v12, v3, v15}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :cond_160
    # getter for: Landroid/hardware/miuiface/MiuiFaceManagerImpl;->RECEIVER_DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$1200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iget-object v4, v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$2;->this$0:Landroid/hardware/miuiface/MiuiFaceManagerImpl;

    # getter for: Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$1300(Landroid/hardware/miuiface/MiuiFaceManagerImpl;)Landroid/os/Handler;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :cond_181
    # getter for: Landroid/hardware/miuiface/MiuiFaceManagerImpl;->RECEIVER_DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$1200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iget-object v4, v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$2;->this$0:Landroid/hardware/miuiface/MiuiFaceManagerImpl;

    # getter for: Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$1300(Landroid/hardware/miuiface/MiuiFaceManagerImpl;)Landroid/os/Handler;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :pswitch_data_1a2
    .packed-switch 0xc9
        :pswitch_12a
        :pswitch_ff
        :pswitch_cb
        :pswitch_ac
        :pswitch_81
        :pswitch_48
        :pswitch_2f
    .end packed-switch
.end method
