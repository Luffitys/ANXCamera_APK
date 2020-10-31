.class Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAccessibilityInteractionConnection.java"

# interfaces
.implements Landroid/view/accessibility/IAccessibilityInteractionConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/view/accessibility/IAccessibilityInteractionConnection;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public clearAccessibilityFocus()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_25

    invoke-static {}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->getDefaultImpl()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v2

    if-eqz v2, :cond_25

    invoke-static {}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->getDefaultImpl()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->clearAccessibilityFocus()V
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_2a

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_25
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_2a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;Landroid/os/Bundle;)V
    .registers 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v13, p3

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12

    :try_start_a
    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-wide/from16 v9, p1

    invoke-virtual {v12, v9, v10}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_97

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v13, :cond_24

    :try_start_18
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v13, v12, v1}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_1f

    goto :goto_27

    :catchall_1f
    move-exception v0

    move-object/from16 v16, v12

    goto/16 :goto_9a

    :cond_24
    :try_start_24
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_27
    move/from16 v11, p4

    invoke-virtual {v12, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_97

    const/4 v2, 0x0

    if-eqz p5, :cond_34

    :try_start_2f
    invoke-interface/range {p5 .. p5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_1f

    goto :goto_35

    :cond_34
    move-object v3, v2

    :goto_35
    :try_start_35
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move/from16 v8, p6

    invoke-virtual {v12, v8}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v7, p7

    invoke-virtual {v12, v7}, Landroid/os/Parcel;->writeInt(I)V

    move-wide/from16 v5, p8

    invoke-virtual {v12, v5, v6}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_47
    .catchall {:try_start_35 .. :try_end_47} :catchall_97

    if-eqz v14, :cond_50

    :try_start_49
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v14, v12, v1}, Landroid/view/MagnificationSpec;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_4f
    .catchall {:try_start_49 .. :try_end_4f} :catchall_1f

    goto :goto_53

    :cond_50
    :try_start_50
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_97

    :goto_53
    if-eqz v15, :cond_5c

    :try_start_55
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v15, v12, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_5b
    .catchall {:try_start_55 .. :try_end_5b} :catchall_1f

    goto :goto_5f

    :cond_5c
    :try_start_5c
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5f
    move-object/from16 v4, p0

    iget-object v1, v4, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v1, v0, v12, v2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_90

    invoke-static {}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->getDefaultImpl()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    if-eqz v1, :cond_90

    invoke-static {}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->getDefaultImpl()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1
    :try_end_73
    .catchall {:try_start_5c .. :try_end_73} :catchall_97

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v16, v12

    move-object/from16 v12, p11

    :try_start_87
    invoke-interface/range {v1 .. v12}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;Landroid/os/Bundle;)V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_8e

    invoke-virtual/range {v16 .. v16}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_8e
    move-exception v0

    goto :goto_9a

    :cond_90
    move-object/from16 v16, v12

    invoke-virtual/range {v16 .. v16}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_97
    move-exception v0

    move-object/from16 v16, v12

    :goto_9a
    invoke-virtual/range {v16 .. v16}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public findAccessibilityNodeInfosByText(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v13, p4

    move-object/from16 v14, p11

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v15

    :try_start_8
    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-wide/from16 v10, p1

    invoke-virtual {v15, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v12, p3

    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v13, :cond_22

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v13, v15, v1}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_25

    :cond_22
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_25
    move/from16 v9, p5

    invoke-virtual {v15, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p6, :cond_32

    invoke-interface/range {p6 .. p6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_33

    :cond_32
    move-object v3, v2

    :goto_33
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move/from16 v8, p7

    invoke-virtual {v15, v8}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v7, p8

    invoke-virtual {v15, v7}, Landroid/os/Parcel;->writeInt(I)V

    move-wide/from16 v5, p9

    invoke-virtual {v15, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    if-eqz v14, :cond_4e

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v14, v15, v1}, Landroid/view/MagnificationSpec;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_51

    :cond_4e
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_51
    move-object/from16 v4, p0

    iget-object v1, v4, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    invoke-interface {v1, v3, v15, v2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_7f

    invoke-static {}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->getDefaultImpl()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    if-eqz v1, :cond_7f

    invoke-static {}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->getDefaultImpl()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    invoke-interface/range {v1 .. v12}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfosByText(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    :try_end_7b
    .catchall {:try_start_8 .. :try_end_7b} :catchall_84

    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_7f
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_84
    move-exception v0

    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public findAccessibilityNodeInfosByViewId(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v13, p4

    move-object/from16 v14, p11

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v15

    :try_start_8
    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-wide/from16 v10, p1

    invoke-virtual {v15, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v12, p3

    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v13, :cond_22

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v13, v15, v1}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_25

    :cond_22
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_25
    move/from16 v9, p5

    invoke-virtual {v15, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p6, :cond_32

    invoke-interface/range {p6 .. p6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_33

    :cond_32
    move-object v3, v2

    :goto_33
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move/from16 v8, p7

    invoke-virtual {v15, v8}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v7, p8

    invoke-virtual {v15, v7}, Landroid/os/Parcel;->writeInt(I)V

    move-wide/from16 v5, p9

    invoke-virtual {v15, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    if-eqz v14, :cond_4e

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v14, v15, v1}, Landroid/view/MagnificationSpec;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_51

    :cond_4e
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_51
    move-object/from16 v4, p0

    iget-object v1, v4, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    invoke-interface {v1, v3, v15, v2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_7f

    invoke-static {}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->getDefaultImpl()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    if-eqz v1, :cond_7f

    invoke-static {}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->getDefaultImpl()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    invoke-interface/range {v1 .. v12}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfosByViewId(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    :try_end_7b
    .catchall {:try_start_8 .. :try_end_7b} :catchall_84

    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_7f
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_84
    move-exception v0

    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public findFocus(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v13, p4

    move-object/from16 v14, p11

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v15

    :try_start_8
    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-wide/from16 v10, p1

    invoke-virtual {v15, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    move/from16 v12, p3

    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v13, :cond_22

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v13, v15, v1}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_25

    :cond_22
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_25
    move/from16 v9, p5

    invoke-virtual {v15, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p6, :cond_32

    invoke-interface/range {p6 .. p6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_33

    :cond_32
    move-object v3, v2

    :goto_33
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move/from16 v8, p7

    invoke-virtual {v15, v8}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v7, p8

    invoke-virtual {v15, v7}, Landroid/os/Parcel;->writeInt(I)V

    move-wide/from16 v5, p9

    invoke-virtual {v15, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    if-eqz v14, :cond_4e

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v14, v15, v1}, Landroid/view/MagnificationSpec;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_51

    :cond_4e
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_51
    move-object/from16 v4, p0

    iget-object v1, v4, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    invoke-interface {v1, v3, v15, v2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_7f

    invoke-static {}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->getDefaultImpl()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    if-eqz v1, :cond_7f

    invoke-static {}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->getDefaultImpl()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    invoke-interface/range {v1 .. v12}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findFocus(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    :try_end_7b
    .catchall {:try_start_8 .. :try_end_7b} :catchall_84

    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_7f
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_84
    move-exception v0

    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public focusSearch(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v13, p4

    move-object/from16 v14, p11

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v15

    :try_start_8
    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-wide/from16 v10, p1

    invoke-virtual {v15, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    move/from16 v12, p3

    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v13, :cond_22

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v13, v15, v1}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_25

    :cond_22
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_25
    move/from16 v9, p5

    invoke-virtual {v15, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p6, :cond_32

    invoke-interface/range {p6 .. p6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_33

    :cond_32
    move-object v3, v2

    :goto_33
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move/from16 v8, p7

    invoke-virtual {v15, v8}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v7, p8

    invoke-virtual {v15, v7}, Landroid/os/Parcel;->writeInt(I)V

    move-wide/from16 v5, p9

    invoke-virtual {v15, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    if-eqz v14, :cond_4e

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v14, v15, v1}, Landroid/view/MagnificationSpec;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_51

    :cond_4e
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_51
    move-object/from16 v4, p0

    iget-object v1, v4, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    invoke-interface {v1, v3, v15, v2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_7f

    invoke-static {}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->getDefaultImpl()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    if-eqz v1, :cond_7f

    invoke-static {}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->getDefaultImpl()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    invoke-interface/range {v1 .. v12}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->focusSearch(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    :try_end_7b
    .catchall {:try_start_8 .. :try_end_7b} :catchall_84

    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_7f
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_84
    move-exception v0

    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnection"

    return-object v0
.end method

.method public notifyOutsideTouch()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_26

    invoke-static {}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->getDefaultImpl()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-static {}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->getDefaultImpl()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->notifyOutsideTouch()V
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_2b

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_26
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_2b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v12, p4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v13

    :try_start_6
    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_76

    move-wide/from16 v14, p1

    :try_start_d
    invoke-virtual {v13, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    move/from16 v10, p3

    invoke-virtual {v13, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v12, :cond_20

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v12, v13, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_23

    :cond_20
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_23
    move/from16 v11, p5

    invoke-virtual {v13, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    if-eqz p6, :cond_30

    invoke-interface/range {p6 .. p6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_31

    :cond_30
    move-object v2, v1

    :goto_31
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move/from16 v9, p7

    invoke-virtual {v13, v9}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v8, p8

    invoke-virtual {v13, v8}, Landroid/os/Parcel;->writeInt(I)V

    move-wide/from16 v6, p9

    invoke-virtual {v13, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v5, p0

    iget-object v2, v5, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    invoke-interface {v2, v3, v13, v1, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_6f

    invoke-static {}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->getDefaultImpl()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    if-eqz v1, :cond_6f

    invoke-static {}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->getDefaultImpl()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-wide/from16 v10, p9

    invoke-interface/range {v1 .. v11}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    :try_end_6b
    .catchall {:try_start_d .. :try_end_6b} :catchall_74

    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_6f
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_74
    move-exception v0

    goto :goto_79

    :catchall_76
    move-exception v0

    move-wide/from16 v14, p1

    :goto_79
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
