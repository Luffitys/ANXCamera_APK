.class Landroid/view/IWindowSession$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWindowSession.java"

# interfaces
.implements Landroid/view/IWindowSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowSession$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/view/IWindowSession;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/view/InputChannel;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I
    .registers 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v14, p3

    move-object/from16 v15, p12

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v13

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12

    :try_start_c
    const-string v0, "android.view.IWindowSession"

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_14a

    if-eqz p1, :cond_2a

    :try_start_13
    invoke-interface/range {p1 .. p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_18

    goto :goto_2b

    :catchall_18
    move-exception v0

    move-object/from16 v2, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object v3, v12

    move-object/from16 v17, v13

    goto/16 :goto_15a

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    :try_start_2b
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move/from16 v11, p2

    invoke-virtual {v13, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_14a

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v14, :cond_3e

    :try_start_37
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v14, v13, v1}, Landroid/view/WindowManager$LayoutParams;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_18

    goto :goto_41

    :cond_3e
    :try_start_3e
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_41
    move/from16 v10, p4

    invoke-virtual {v13, v10}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v9, p5

    invoke-virtual {v13, v9}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4b
    .catchall {:try_start_3e .. :try_end_4b} :catchall_14a

    if-nez v15, :cond_52

    const/4 v2, -0x1

    :try_start_4e
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_18

    goto :goto_56

    :cond_52
    :try_start_52
    array-length v2, v15

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_56
    move-object/from16 v8, p0

    iget-object v2, v8, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v2, v0, v13, v12, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_5e
    .catchall {:try_start_52 .. :try_end_5e} :catchall_14a

    if-nez v0, :cond_b4

    :try_start_60
    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v1

    if-eqz v1, :cond_b4

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v1
    :try_end_6a
    .catchall {:try_start_60 .. :try_end_6a} :catchall_a2

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v16, v12

    move-object/from16 v12, p11

    move-object/from16 v17, v13

    move-object/from16 v13, p12

    :try_start_86
    invoke-interface/range {v1 .. v13}, Landroid/view/IWindowSession;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/view/InputChannel;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I

    move-result v1
    :try_end_8a
    .catchall {:try_start_86 .. :try_end_8a} :catchall_91

    invoke-virtual/range {v16 .. v16}, Landroid/os/Parcel;->recycle()V

    invoke-virtual/range {v17 .. v17}, Landroid/os/Parcel;->recycle()V

    return v1

    :catchall_91
    move-exception v0

    move-object/from16 v2, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v3, v16

    goto/16 :goto_15a

    :catchall_a2
    move-exception v0

    move-object/from16 v17, v13

    move-object/from16 v2, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object v3, v12

    goto/16 :goto_15a

    :cond_b4
    move-object/from16 v16, v12

    move-object/from16 v17, v13

    :try_start_b8
    invoke-virtual/range {v16 .. v16}, Landroid/os/Parcel;->readException()V

    invoke-virtual/range {v16 .. v16}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {v16 .. v16}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_c3
    .catchall {:try_start_b8 .. :try_end_c3} :catchall_13a

    if-eqz v2, :cond_cd

    move-object/from16 v2, p6

    move-object/from16 v3, v16

    :try_start_c9
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_d1

    :cond_cd
    move-object/from16 v2, p6

    move-object/from16 v3, v16

    :goto_d1
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v4
    :try_end_d5
    .catchall {:try_start_c9 .. :try_end_d5} :catchall_12e

    if-eqz v4, :cond_dd

    move-object/from16 v4, p7

    :try_start_d9
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_df

    :cond_dd
    move-object/from16 v4, p7

    :goto_df
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_e3
    .catchall {:try_start_d9 .. :try_end_e3} :catchall_12c

    if-eqz v5, :cond_eb

    move-object/from16 v5, p8

    :try_start_e7
    invoke-virtual {v5, v3}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_ed

    :cond_eb
    move-object/from16 v5, p8

    :goto_ed
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v6
    :try_end_f1
    .catchall {:try_start_e7 .. :try_end_f1} :catchall_12a

    if-eqz v6, :cond_f9

    move-object/from16 v6, p9

    :try_start_f5
    invoke-virtual {v6, v3}, Landroid/view/DisplayCutout$ParcelableWrapper;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_fb

    :cond_f9
    move-object/from16 v6, p9

    :goto_fb
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v7
    :try_end_ff
    .catchall {:try_start_f5 .. :try_end_ff} :catchall_128

    if-eqz v7, :cond_107

    move-object/from16 v7, p10

    :try_start_103
    invoke-virtual {v7, v3}, Landroid/view/InputChannel;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_109

    :cond_107
    move-object/from16 v7, p10

    :goto_109
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v8
    :try_end_10d
    .catchall {:try_start_103 .. :try_end_10d} :catchall_126

    if-eqz v8, :cond_115

    move-object/from16 v8, p11

    :try_start_111
    invoke-virtual {v8, v3}, Landroid/view/InsetsState;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_117

    :cond_115
    move-object/from16 v8, p11

    :goto_117
    sget-object v9, Landroid/view/InsetsSourceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v3, v15, v9}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V
    :try_end_11c
    .catchall {:try_start_111 .. :try_end_11c} :catchall_124

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual/range {v17 .. v17}, Landroid/os/Parcel;->recycle()V

    nop

    return v1

    :catchall_124
    move-exception v0

    goto :goto_15a

    :catchall_126
    move-exception v0

    goto :goto_137

    :catchall_128
    move-exception v0

    goto :goto_135

    :catchall_12a
    move-exception v0

    goto :goto_133

    :catchall_12c
    move-exception v0

    goto :goto_131

    :catchall_12e
    move-exception v0

    move-object/from16 v4, p7

    :goto_131
    move-object/from16 v5, p8

    :goto_133
    move-object/from16 v6, p9

    :goto_135
    move-object/from16 v7, p10

    :goto_137
    move-object/from16 v8, p11

    goto :goto_15a

    :catchall_13a
    move-exception v0

    move-object/from16 v2, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v3, v16

    goto :goto_15a

    :catchall_14a
    move-exception v0

    move-object/from16 v2, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object v3, v12

    move-object/from16 v17, v13

    :goto_15a
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual/range {v17 .. v17}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public addToDisplayAsUser(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/view/InputChannel;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I
    .registers 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v15, p3

    move-object/from16 v14, p13

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v13

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12

    :try_start_c
    const-string v0, "android.view.IWindowSession"

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_156

    if-eqz p1, :cond_2b

    :try_start_13
    invoke-interface/range {p1 .. p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_18

    goto :goto_2c

    :catchall_18
    move-exception v0

    move-object/from16 v2, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move-object/from16 v8, p12

    move-object v3, v12

    move-object/from16 v17, v13

    move-object v15, v14

    goto/16 :goto_167

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    :try_start_2c
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move/from16 v11, p2

    invoke-virtual {v13, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_156

    const/4 v0, 0x0

    if-eqz v15, :cond_3f

    const/4 v1, 0x1

    :try_start_38
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v15, v13, v0}, Landroid/view/WindowManager$LayoutParams;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_18

    goto :goto_42

    :cond_3f
    :try_start_3f
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_42
    move/from16 v10, p4

    invoke-virtual {v13, v10}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v9, p5

    invoke-virtual {v13, v9}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v8, p6

    invoke-virtual {v13, v8}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_51
    .catchall {:try_start_3f .. :try_end_51} :catchall_156

    if-nez v14, :cond_58

    const/4 v1, -0x1

    :try_start_54
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_18

    goto :goto_5c

    :cond_58
    :try_start_58
    array-length v1, v14

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5c
    move-object/from16 v7, p0

    iget-object v1, v7, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    invoke-interface {v1, v2, v13, v12, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_65
    .catchall {:try_start_58 .. :try_end_65} :catchall_156

    if-nez v0, :cond_bf

    :try_start_67
    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v1

    if-eqz v1, :cond_bf

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v1
    :try_end_71
    .catchall {:try_start_67 .. :try_end_71} :catchall_ac

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v16, v12

    move-object/from16 v12, p11

    move-object/from16 v17, v13

    move-object/from16 v13, p12

    move-object v15, v14

    move-object/from16 v14, p13

    :try_start_90
    invoke-interface/range {v1 .. v14}, Landroid/view/IWindowSession;->addToDisplayAsUser(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/view/InputChannel;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I

    move-result v1
    :try_end_94
    .catchall {:try_start_90 .. :try_end_94} :catchall_9b

    invoke-virtual/range {v16 .. v16}, Landroid/os/Parcel;->recycle()V

    invoke-virtual/range {v17 .. v17}, Landroid/os/Parcel;->recycle()V

    return v1

    :catchall_9b
    move-exception v0

    move-object/from16 v2, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move-object/from16 v8, p12

    move-object/from16 v3, v16

    goto/16 :goto_167

    :catchall_ac
    move-exception v0

    move-object/from16 v17, v13

    move-object v15, v14

    move-object/from16 v2, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move-object/from16 v8, p12

    move-object v3, v12

    goto/16 :goto_167

    :cond_bf
    move-object/from16 v16, v12

    move-object/from16 v17, v13

    move-object v15, v14

    :try_start_c4
    invoke-virtual/range {v16 .. v16}, Landroid/os/Parcel;->readException()V

    invoke-virtual/range {v16 .. v16}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {v16 .. v16}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_cf
    .catchall {:try_start_c4 .. :try_end_cf} :catchall_146

    if-eqz v2, :cond_d9

    move-object/from16 v2, p7

    move-object/from16 v3, v16

    :try_start_d5
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_dd

    :cond_d9
    move-object/from16 v2, p7

    move-object/from16 v3, v16

    :goto_dd
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v4
    :try_end_e1
    .catchall {:try_start_d5 .. :try_end_e1} :catchall_13a

    if-eqz v4, :cond_e9

    move-object/from16 v4, p8

    :try_start_e5
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_eb

    :cond_e9
    move-object/from16 v4, p8

    :goto_eb
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_ef
    .catchall {:try_start_e5 .. :try_end_ef} :catchall_138

    if-eqz v5, :cond_f7

    move-object/from16 v5, p9

    :try_start_f3
    invoke-virtual {v5, v3}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_f9

    :cond_f7
    move-object/from16 v5, p9

    :goto_f9
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v6
    :try_end_fd
    .catchall {:try_start_f3 .. :try_end_fd} :catchall_136

    if-eqz v6, :cond_105

    move-object/from16 v6, p10

    :try_start_101
    invoke-virtual {v6, v3}, Landroid/view/DisplayCutout$ParcelableWrapper;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_107

    :cond_105
    move-object/from16 v6, p10

    :goto_107
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v7
    :try_end_10b
    .catchall {:try_start_101 .. :try_end_10b} :catchall_134

    if-eqz v7, :cond_113

    move-object/from16 v7, p11

    :try_start_10f
    invoke-virtual {v7, v3}, Landroid/view/InputChannel;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_115

    :cond_113
    move-object/from16 v7, p11

    :goto_115
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v8
    :try_end_119
    .catchall {:try_start_10f .. :try_end_119} :catchall_132

    if-eqz v8, :cond_121

    move-object/from16 v8, p12

    :try_start_11d
    invoke-virtual {v8, v3}, Landroid/view/InsetsState;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_123

    :cond_121
    move-object/from16 v8, p12

    :goto_123
    sget-object v9, Landroid/view/InsetsSourceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v3, v15, v9}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V
    :try_end_128
    .catchall {:try_start_11d .. :try_end_128} :catchall_130

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual/range {v17 .. v17}, Landroid/os/Parcel;->recycle()V

    nop

    return v1

    :catchall_130
    move-exception v0

    goto :goto_167

    :catchall_132
    move-exception v0

    goto :goto_143

    :catchall_134
    move-exception v0

    goto :goto_141

    :catchall_136
    move-exception v0

    goto :goto_13f

    :catchall_138
    move-exception v0

    goto :goto_13d

    :catchall_13a
    move-exception v0

    move-object/from16 v4, p8

    :goto_13d
    move-object/from16 v5, p9

    :goto_13f
    move-object/from16 v6, p10

    :goto_141
    move-object/from16 v7, p11

    :goto_143
    move-object/from16 v8, p12

    goto :goto_167

    :catchall_146
    move-exception v0

    move-object/from16 v2, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move-object/from16 v8, p12

    move-object/from16 v3, v16

    goto :goto_167

    :catchall_156
    move-exception v0

    move-object/from16 v2, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move-object/from16 v8, p12

    move-object v3, v12

    move-object/from16 v17, v13

    move-object v15, v14

    :goto_167
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual/range {v17 .. v17}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public addToDisplayWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InsetsState;)I
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v10, p3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12

    :try_start_a
    const-string v0, "android.view.IWindowSession"

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_16

    invoke-interface/range {p1 .. p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_ac

    move/from16 v13, p2

    :try_start_1c
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    if-eqz v10, :cond_2a

    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v10, v11, v0}, Landroid/view/WindowManager$LayoutParams;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2d

    :cond_2a
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_aa

    :goto_2d
    move/from16 v14, p4

    :try_start_2f
    invoke-virtual {v11, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_a8

    move/from16 v15, p5

    :try_start_34
    invoke-virtual {v11, v15}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v9, p0

    iget-object v1, v9, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    invoke-interface {v1, v2, v11, v12, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_67

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v1

    if-eqz v1, :cond_67

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v1

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Landroid/view/IWindowSession;->addToDisplayWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InsetsState;)I

    move-result v1
    :try_end_60
    .catchall {:try_start_34 .. :try_end_60} :catchall_a6

    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    return v1

    :cond_67
    :try_start_67
    invoke-virtual {v12}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_72
    .catchall {:try_start_67 .. :try_end_72} :catchall_a6

    if-eqz v2, :cond_7a

    move-object/from16 v2, p6

    :try_start_76
    invoke-virtual {v2, v12}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_7c

    :cond_7a
    move-object/from16 v2, p6

    :goto_7c
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_80
    .catchall {:try_start_76 .. :try_end_80} :catchall_a4

    if-eqz v3, :cond_88

    move-object/from16 v3, p7

    :try_start_84
    invoke-virtual {v3, v12}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_8a

    :cond_88
    move-object/from16 v3, p7

    :goto_8a
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v4
    :try_end_8e
    .catchall {:try_start_84 .. :try_end_8e} :catchall_a2

    if-eqz v4, :cond_98

    move-object/from16 v4, p8

    :try_start_92
    invoke-virtual {v4, v12}, Landroid/view/InsetsState;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_96

    goto :goto_9a

    :catchall_96
    move-exception v0

    goto :goto_b9

    :cond_98
    move-object/from16 v4, p8

    :goto_9a
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    nop

    return v1

    :catchall_a2
    move-exception v0

    goto :goto_b7

    :catchall_a4
    move-exception v0

    goto :goto_b5

    :catchall_a6
    move-exception v0

    goto :goto_b3

    :catchall_a8
    move-exception v0

    goto :goto_b1

    :catchall_aa
    move-exception v0

    goto :goto_af

    :catchall_ac
    move-exception v0

    move/from16 v13, p2

    :goto_af
    move/from16 v14, p4

    :goto_b1
    move/from16 v15, p5

    :goto_b3
    move-object/from16 v2, p6

    :goto_b5
    move-object/from16 v3, p7

    :goto_b7
    move-object/from16 v4, p8

    :goto_b9
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public cancelDragAndDrop(Landroid/os/IBinder;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.view.IWindowSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_15

    const/4 v3, 0x1

    goto :goto_16

    :cond_15
    move v3, v2

    :goto_16
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_37

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    if-eqz v3, :cond_37

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/view/IWindowSession;->cancelDragAndDrop(Landroid/os/IBinder;Z)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public dragRecipientEntered(Landroid/view/IWindow;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.view.IWindowSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_14

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_37

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    if-eqz v3, :cond_37

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/view/IWindowSession;->dragRecipientEntered(Landroid/view/IWindow;)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public dragRecipientExited(Landroid/view/IWindow;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.view.IWindowSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_14

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_37

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    if-eqz v3, :cond_37

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/view/IWindowSession;->dragRecipientExited(Landroid/view/IWindow;)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.view.IWindowSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_14

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_23

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v0, v2}, Landroid/view/SurfaceControl$Transaction;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_26

    :cond_23
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_26
    iget-object v3, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_44

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    if-eqz v3, :cond_44

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;)V
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_4f

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_44
    :try_start_44
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_4f

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_4f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public finishMovingTask(Landroid/view/IWindow;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.view.IWindowSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_14

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_37

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    if-eqz v3, :cond_37

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/view/IWindowSession;->finishMovingTask(Landroid/view/IWindow;)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.view.IWindowSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_14

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_37

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    if-eqz v3, :cond_37

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/view/IWindowSession;->getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_4b

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_43

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_43
    .catchall {:try_start_37 .. :try_end_43} :catchall_4b

    :cond_43
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_4b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getInTouchMode()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.view.IWindowSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    if-eqz v3, :cond_2d

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/IWindowSession;->getInTouchMode()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_40

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_40

    if-eqz v3, :cond_37

    const/4 v4, 0x1

    :cond_37
    move v2, v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return v2

    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "android.view.IWindowSession"

    return-object v0
.end method

.method public getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.view.IWindowSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_30

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    if-eqz v3, :cond_30

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/view/IWindowSession;->getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;

    move-result-object v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_44

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v3

    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowId$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowId;

    move-result-object v3
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_44

    move-object v2, v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-object v2

    :catchall_44
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public grantInputChannel(ILandroid/view/SurfaceControl;Landroid/view/IWindow;Landroid/os/IBinder;IILandroid/view/InputChannel;)V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v9, p2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    :try_start_a
    const-string v0, "android.view.IWindowSession"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_8d

    move/from16 v12, p1

    :try_start_11
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    if-eqz v9, :cond_1f

    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v9, v10, v0}, Landroid/view/SurfaceControl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_22

    :cond_1f
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_22
    if-eqz p3, :cond_29

    invoke-interface/range {p3 .. p3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_2d
    .catchall {:try_start_11 .. :try_end_2d} :catchall_8b

    move-object/from16 v13, p4

    :try_start_2f
    invoke-virtual {v10, v13}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_89

    move/from16 v14, p5

    :try_start_34
    invoke-virtual {v10, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_87

    move/from16 v15, p6

    :try_start_39
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v8, p0

    iget-object v1, v8, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x26

    invoke-interface {v1, v2, v10, v11, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_6a

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v1

    if-eqz v1, :cond_6a

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v1

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Landroid/view/IWindowSession;->grantInputChannel(ILandroid/view/SurfaceControl;Landroid/view/IWindow;Landroid/os/IBinder;IILandroid/view/InputChannel;)V
    :try_end_63
    .catchall {:try_start_39 .. :try_end_63} :catchall_85

    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_6a
    :try_start_6a
    invoke-virtual {v11}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1
    :try_end_71
    .catchall {:try_start_6a .. :try_end_71} :catchall_85

    if-eqz v1, :cond_7b

    move-object/from16 v1, p7

    :try_start_75
    invoke-virtual {v1, v11}, Landroid/view/InputChannel;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_79

    goto :goto_7d

    :catchall_79
    move-exception v0

    goto :goto_98

    :cond_7b
    move-object/from16 v1, p7

    :goto_7d
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_85
    move-exception v0

    goto :goto_96

    :catchall_87
    move-exception v0

    goto :goto_94

    :catchall_89
    move-exception v0

    goto :goto_92

    :catchall_8b
    move-exception v0

    goto :goto_90

    :catchall_8d
    move-exception v0

    move/from16 v12, p1

    :goto_90
    move-object/from16 v13, p4

    :goto_92
    move/from16 v14, p5

    :goto_94
    move/from16 v15, p6

    :goto_96
    move-object/from16 v1, p7

    :goto_98
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public insetsModified(Landroid/view/IWindow;Landroid/view/InsetsState;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.view.IWindowSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_11

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_12

    :cond_11
    move-object v2, v1

    :goto_12
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_20

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v0, v3}, Landroid/view/InsetsState;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_23

    :cond_20
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_23
    iget-object v3, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x24

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_3e

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v2

    if-eqz v2, :cond_3e

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/IWindowSession;->insetsModified(Landroid/view/IWindow;Landroid/view/InsetsState;)V
    :try_end_3a
    .catchall {:try_start_4 .. :try_end_3a} :catchall_43

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_3e
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_43
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.view.IWindowSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_1b

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1e

    :cond_1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1e
    iget-object v3, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_3c

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    if-eqz v3, :cond_3c

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/view/IWindowSession;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_47

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_3c
    :try_start_3c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_47

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_47
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public outOfMemory(Landroid/view/IWindow;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.view.IWindowSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_14

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_37

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    if-eqz v3, :cond_37

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v3
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_4a

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_4a

    if-eqz v3, :cond_41

    const/4 v4, 0x1

    :cond_41
    move v2, v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return v2

    :catchall_4a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public performDrag(Landroid/view/IWindow;ILandroid/view/SurfaceControl;IFFFFLandroid/content/ClipData;)Landroid/os/IBinder;
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v11, p3

    move-object/from16 v12, p9

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v13

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v14

    :try_start_c
    const-string v0, "android.view.IWindowSession"

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_18

    invoke-interface/range {p1 .. p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_99

    move/from16 v15, p2

    :try_start_1e
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v11, :cond_2c

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v11, v13, v1}, Landroid/view/SurfaceControl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2f

    :cond_2c
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2f
    move/from16 v10, p4

    invoke-virtual {v13, v10}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v9, p5

    invoke-virtual {v13, v9}, Landroid/os/Parcel;->writeFloat(F)V

    move/from16 v8, p6

    invoke-virtual {v13, v8}, Landroid/os/Parcel;->writeFloat(F)V

    move/from16 v7, p7

    invoke-virtual {v13, v7}, Landroid/os/Parcel;->writeFloat(F)V

    move/from16 v6, p8

    invoke-virtual {v13, v6}, Landroid/os/Parcel;->writeFloat(F)V

    if-eqz v12, :cond_51

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v12, v13, v1}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_54

    :cond_51
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_54
    move-object/from16 v5, p0

    iget-object v0, v5, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xf

    invoke-interface {v0, v2, v13, v14, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_87

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v1

    if-eqz v1, :cond_87

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v1

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Landroid/view/IWindowSession;->performDrag(Landroid/view/IWindow;ILandroid/view/SurfaceControl;IFFFFLandroid/content/ClipData;)Landroid/os/IBinder;

    move-result-object v1
    :try_end_80
    .catchall {:try_start_1e .. :try_end_80} :catchall_97

    invoke-virtual {v14}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :cond_87
    :try_start_87
    invoke-virtual {v14}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1
    :try_end_8e
    .catchall {:try_start_87 .. :try_end_8e} :catchall_97

    move-object v0, v1

    invoke-virtual {v14}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    nop

    return-object v0

    :catchall_97
    move-exception v0

    goto :goto_9c

    :catchall_99
    move-exception v0

    move/from16 v15, p2

    :goto_9c
    invoke-virtual {v14}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public performHapticFeedback(IZ)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.view.IWindowSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_16

    move v4, v2

    goto :goto_17

    :cond_16
    move v4, v3

    :goto_17
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xe

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_39

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v5

    if-eqz v5, :cond_39

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/IWindowSession;->performHapticFeedback(IZ)Z

    move-result v2
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_4c

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_4c

    if-eqz v5, :cond_43

    goto :goto_44

    :cond_43
    move v2, v3

    :goto_44
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return v2

    :catchall_4c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public pokeDrawLock(Landroid/os/IBinder;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.view.IWindowSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    if-eqz v3, :cond_2f

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/view/IWindowSession;->pokeDrawLock(Landroid/os/IBinder;)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public prepareToReplaceWindows(Landroid/os/IBinder;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.view.IWindowSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_15

    const/4 v3, 0x1

    goto :goto_16

    :cond_15
    move v3, v2

    :goto_16
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_36

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    if-eqz v3, :cond_36

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/view/IWindowSession;->prepareToReplaceWindows(Landroid/os/IBinder;Z)V
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_41

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_41

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_41
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIIJLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;Landroid/graphics/Point;Landroid/view/SurfaceControl;)I
    .registers 47
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v15, p3

    move-object/from16 v14, p19

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v13

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12

    :try_start_c
    const-string v0, "android.view.IWindowSession"

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_271

    if-eqz p1, :cond_35

    :try_start_13
    invoke-interface/range {p1 .. p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_18

    goto :goto_36

    :catchall_18
    move-exception v0

    move-object/from16 v2, p10

    move-object/from16 v4, p11

    move-object/from16 v5, p12

    move-object/from16 v6, p13

    move-object/from16 v7, p14

    move-object/from16 v8, p15

    move-object/from16 v9, p16

    move-object/from16 v10, p17

    move-object/from16 v11, p18

    move-object v3, v12

    move-object/from16 v24, v13

    move-object v13, v14

    move-object/from16 v12, p20

    move-object/from16 v14, p21

    goto/16 :goto_28c

    :cond_35
    const/4 v0, 0x0

    :goto_36
    :try_start_36
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move/from16 v11, p2

    invoke-virtual {v13, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_271

    const/4 v0, 0x0

    if-eqz v15, :cond_49

    const/4 v1, 0x1

    :try_start_42
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v15, v13, v0}, Landroid/view/WindowManager$LayoutParams;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_18

    goto :goto_4c

    :cond_49
    :try_start_49
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4c
    move/from16 v9, p4

    invoke-virtual {v13, v9}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v10, p5

    invoke-virtual {v13, v10}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v8, p6

    invoke-virtual {v13, v8}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v7, p7

    invoke-virtual {v13, v7}, Landroid/os/Parcel;->writeInt(I)V

    move-wide/from16 v5, p8

    invoke-virtual {v13, v5, v6}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_65
    .catchall {:try_start_49 .. :try_end_65} :catchall_271

    if-nez v14, :cond_6c

    const/4 v1, -0x1

    :try_start_68
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_18

    goto :goto_70

    :cond_6c
    :try_start_6c
    array-length v1, v14

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_70
    move-object/from16 v4, p0

    iget-object v1, v4, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    invoke-interface {v1, v2, v13, v12, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_79
    .catchall {:try_start_6c .. :try_end_79} :catchall_271

    if-nez v0, :cond_f7

    :try_start_7b
    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v1

    if-eqz v1, :cond_f7

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v1
    :try_end_85
    .catchall {:try_start_7b .. :try_end_85} :catchall_d9

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v23, v12

    move-object/from16 v12, p11

    move-object/from16 v24, v13

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    :try_start_b1
    invoke-interface/range {v1 .. v22}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIIJLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;Landroid/graphics/Point;Landroid/view/SurfaceControl;)I

    move-result v1
    :try_end_b5
    .catchall {:try_start_b1 .. :try_end_b5} :catchall_bc

    invoke-virtual/range {v23 .. v23}, Landroid/os/Parcel;->recycle()V

    invoke-virtual/range {v24 .. v24}, Landroid/os/Parcel;->recycle()V

    return v1

    :catchall_bc
    move-exception v0

    move-object/from16 v2, p10

    move-object/from16 v4, p11

    move-object/from16 v5, p12

    move-object/from16 v6, p13

    move-object/from16 v7, p14

    move-object/from16 v8, p15

    move-object/from16 v9, p16

    move-object/from16 v10, p17

    move-object/from16 v11, p18

    move-object/from16 v13, p19

    move-object/from16 v12, p20

    move-object/from16 v14, p21

    move-object/from16 v3, v23

    goto/16 :goto_28c

    :catchall_d9
    move-exception v0

    move-object/from16 v24, v13

    move-object/from16 v2, p10

    move-object/from16 v4, p11

    move-object/from16 v5, p12

    move-object/from16 v6, p13

    move-object/from16 v7, p14

    move-object/from16 v8, p15

    move-object/from16 v9, p16

    move-object/from16 v10, p17

    move-object/from16 v11, p18

    move-object/from16 v13, p19

    move-object/from16 v14, p21

    move-object v3, v12

    move-object/from16 v12, p20

    goto/16 :goto_28c

    :cond_f7
    move-object/from16 v23, v12

    move-object/from16 v24, v13

    :try_start_fb
    invoke-virtual/range {v23 .. v23}, Landroid/os/Parcel;->readException()V

    invoke-virtual/range {v23 .. v23}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {v23 .. v23}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_106
    .catchall {:try_start_fb .. :try_end_106} :catchall_255

    if-eqz v2, :cond_110

    move-object/from16 v2, p10

    move-object/from16 v3, v23

    :try_start_10c
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_114

    :cond_110
    move-object/from16 v2, p10

    move-object/from16 v3, v23

    :goto_114
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v4
    :try_end_118
    .catchall {:try_start_10c .. :try_end_118} :catchall_23d

    if-eqz v4, :cond_120

    move-object/from16 v4, p11

    :try_start_11c
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_122

    :cond_120
    move-object/from16 v4, p11

    :goto_122
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_126
    .catchall {:try_start_11c .. :try_end_126} :catchall_227

    if-eqz v5, :cond_12e

    move-object/from16 v5, p12

    :try_start_12a
    invoke-virtual {v5, v3}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_130

    :cond_12e
    move-object/from16 v5, p12

    :goto_130
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v6
    :try_end_134
    .catchall {:try_start_12a .. :try_end_134} :catchall_212

    if-eqz v6, :cond_13c

    move-object/from16 v6, p13

    :try_start_138
    invoke-virtual {v6, v3}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_13e

    :cond_13c
    move-object/from16 v6, p13

    :goto_13e
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v7
    :try_end_142
    .catchall {:try_start_138 .. :try_end_142} :catchall_1ff

    if-eqz v7, :cond_14a

    move-object/from16 v7, p14

    :try_start_146
    invoke-virtual {v7, v3}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_14c

    :cond_14a
    move-object/from16 v7, p14

    :goto_14c
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v8
    :try_end_150
    .catchall {:try_start_146 .. :try_end_150} :catchall_1ee

    if-eqz v8, :cond_158

    move-object/from16 v8, p15

    :try_start_154
    invoke-virtual {v8, v3}, Landroid/view/DisplayCutout$ParcelableWrapper;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_15a

    :cond_158
    move-object/from16 v8, p15

    :goto_15a
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v9
    :try_end_15e
    .catchall {:try_start_154 .. :try_end_15e} :catchall_1df

    if-eqz v9, :cond_166

    move-object/from16 v9, p16

    :try_start_162
    invoke-virtual {v9, v3}, Landroid/util/MergedConfiguration;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_168

    :cond_166
    move-object/from16 v9, p16

    :goto_168
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v10
    :try_end_16c
    .catchall {:try_start_162 .. :try_end_16c} :catchall_1d2

    if-eqz v10, :cond_174

    move-object/from16 v10, p17

    :try_start_170
    invoke-virtual {v10, v3}, Landroid/view/SurfaceControl;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_176

    :cond_174
    move-object/from16 v10, p17

    :goto_176
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v11
    :try_end_17a
    .catchall {:try_start_170 .. :try_end_17a} :catchall_1c7

    if-eqz v11, :cond_182

    move-object/from16 v11, p18

    :try_start_17e
    invoke-virtual {v11, v3}, Landroid/view/InsetsState;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_184

    :cond_182
    move-object/from16 v11, p18

    :goto_184
    sget-object v12, Landroid/view/InsetsSourceControl;->CREATOR:Landroid/os/Parcelable$Creator;
    :try_end_186
    .catchall {:try_start_17e .. :try_end_186} :catchall_1be

    move-object/from16 v13, p19

    :try_start_188
    invoke-virtual {v3, v13, v12}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v12
    :try_end_18f
    .catchall {:try_start_188 .. :try_end_18f} :catchall_1b7

    if-eqz v12, :cond_197

    move-object/from16 v12, p20

    :try_start_193
    invoke-virtual {v12, v3}, Landroid/graphics/Point;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_199

    :cond_197
    move-object/from16 v12, p20

    :goto_199
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v14
    :try_end_19d
    .catchall {:try_start_193 .. :try_end_19d} :catchall_1b2

    if-eqz v14, :cond_1a8

    move-object/from16 v14, p21

    :try_start_1a1
    invoke-virtual {v14, v3}, Landroid/view/SurfaceControl;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_1a4
    .catchall {:try_start_1a1 .. :try_end_1a4} :catchall_1a5

    goto :goto_1aa

    :catchall_1a5
    move-exception v0

    goto/16 :goto_28c

    :cond_1a8
    move-object/from16 v14, p21

    :goto_1aa
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual/range {v24 .. v24}, Landroid/os/Parcel;->recycle()V

    nop

    return v1

    :catchall_1b2
    move-exception v0

    move-object/from16 v14, p21

    goto/16 :goto_28c

    :catchall_1b7
    move-exception v0

    move-object/from16 v12, p20

    move-object/from16 v14, p21

    goto/16 :goto_28c

    :catchall_1be
    move-exception v0

    move-object/from16 v13, p19

    move-object/from16 v12, p20

    move-object/from16 v14, p21

    goto/16 :goto_28c

    :catchall_1c7
    move-exception v0

    move-object/from16 v11, p18

    move-object/from16 v13, p19

    move-object/from16 v12, p20

    move-object/from16 v14, p21

    goto/16 :goto_28c

    :catchall_1d2
    move-exception v0

    move-object/from16 v10, p17

    move-object/from16 v11, p18

    move-object/from16 v13, p19

    move-object/from16 v12, p20

    move-object/from16 v14, p21

    goto/16 :goto_28c

    :catchall_1df
    move-exception v0

    move-object/from16 v9, p16

    move-object/from16 v10, p17

    move-object/from16 v11, p18

    move-object/from16 v13, p19

    move-object/from16 v12, p20

    move-object/from16 v14, p21

    goto/16 :goto_28c

    :catchall_1ee
    move-exception v0

    move-object/from16 v8, p15

    move-object/from16 v9, p16

    move-object/from16 v10, p17

    move-object/from16 v11, p18

    move-object/from16 v13, p19

    move-object/from16 v12, p20

    move-object/from16 v14, p21

    goto/16 :goto_28c

    :catchall_1ff
    move-exception v0

    move-object/from16 v7, p14

    move-object/from16 v8, p15

    move-object/from16 v9, p16

    move-object/from16 v10, p17

    move-object/from16 v11, p18

    move-object/from16 v13, p19

    move-object/from16 v12, p20

    move-object/from16 v14, p21

    goto/16 :goto_28c

    :catchall_212
    move-exception v0

    move-object/from16 v6, p13

    move-object/from16 v7, p14

    move-object/from16 v8, p15

    move-object/from16 v9, p16

    move-object/from16 v10, p17

    move-object/from16 v11, p18

    move-object/from16 v13, p19

    move-object/from16 v12, p20

    move-object/from16 v14, p21

    goto/16 :goto_28c

    :catchall_227
    move-exception v0

    move-object/from16 v5, p12

    move-object/from16 v6, p13

    move-object/from16 v7, p14

    move-object/from16 v8, p15

    move-object/from16 v9, p16

    move-object/from16 v10, p17

    move-object/from16 v11, p18

    move-object/from16 v13, p19

    move-object/from16 v12, p20

    move-object/from16 v14, p21

    goto :goto_28c

    :catchall_23d
    move-exception v0

    move-object/from16 v4, p11

    move-object/from16 v5, p12

    move-object/from16 v6, p13

    move-object/from16 v7, p14

    move-object/from16 v8, p15

    move-object/from16 v9, p16

    move-object/from16 v10, p17

    move-object/from16 v11, p18

    move-object/from16 v13, p19

    move-object/from16 v12, p20

    move-object/from16 v14, p21

    goto :goto_28c

    :catchall_255
    move-exception v0

    move-object/from16 v2, p10

    move-object/from16 v4, p11

    move-object/from16 v5, p12

    move-object/from16 v6, p13

    move-object/from16 v7, p14

    move-object/from16 v8, p15

    move-object/from16 v9, p16

    move-object/from16 v10, p17

    move-object/from16 v11, p18

    move-object/from16 v13, p19

    move-object/from16 v12, p20

    move-object/from16 v14, p21

    move-object/from16 v3, v23

    goto :goto_28c

    :catchall_271
    move-exception v0

    move-object/from16 v2, p10

    move-object/from16 v4, p11

    move-object/from16 v5, p12

    move-object/from16 v6, p13

    move-object/from16 v7, p14

    move-object/from16 v8, p15

    move-object/from16 v9, p16

    move-object/from16 v10, p17

    move-object/from16 v11, p18

    move-object v3, v12

    move-object/from16 v24, v13

    move-object v13, v14

    move-object/from16 v12, p20

    move-object/from16 v14, p21

    :goto_28c
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual/range {v24 .. v24}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public remove(Landroid/view/IWindow;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.view.IWindowSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_14

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_36

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    if-eqz v3, :cond_36

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_41

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_41

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_41
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public reparentDisplayContent(Landroid/view/IWindow;Landroid/view/SurfaceControl;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.view.IWindowSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_14

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_23

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v0, v2}, Landroid/view/SurfaceControl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_26

    :cond_23
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_26
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x21

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_47

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    if-eqz v3, :cond_47

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/view/IWindowSession;->reparentDisplayContent(Landroid/view/IWindow;Landroid/view/SurfaceControl;I)V
    :try_end_40
    .catchall {:try_start_8 .. :try_end_40} :catchall_52

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_47
    :try_start_47
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_52

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_52
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public reportDropResult(Landroid/view/IWindow;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.view.IWindowSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_14

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_1d

    const/4 v3, 0x1

    goto :goto_1e

    :cond_1d
    move v3, v2

    :goto_1e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    if-eqz v3, :cond_3f

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/view/IWindowSession;->reportDropResult(Landroid/view/IWindow;Z)V
    :try_end_38
    .catchall {:try_start_8 .. :try_end_38} :catchall_4a

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_3f
    :try_start_3f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_4a

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_4a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public reportSystemGestureExclusionChanged(Landroid/view/IWindow;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/IWindow;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.view.IWindowSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_11

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_12

    :cond_11
    move-object v2, v1

    :goto_12
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_34

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v2

    if-eqz v2, :cond_34

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/IWindowSession;->reportSystemGestureExclusionChanged(Landroid/view/IWindow;Ljava/util/List;)V
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_39

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_34
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_39
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v9, p6

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    :try_start_a
    const-string v0, "android.view.IWindowSession"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_8f

    move-object/from16 v12, p1

    :try_start_11
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_8d

    move-object/from16 v13, p2

    :try_start_16
    invoke-virtual {v10, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_8b

    move/from16 v14, p3

    :try_start_1b
    invoke-virtual {v10, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_89

    move/from16 v15, p4

    :try_start_20
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v8, p5

    invoke-virtual {v10, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v9, :cond_33

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v9, v10, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_36

    :cond_33
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_36
    if-eqz p7, :cond_39

    goto :goto_3a

    :cond_39
    move v0, v1

    :goto_3a
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v7, p0

    iget-object v0, v7, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x19

    invoke-interface {v0, v2, v10, v11, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_6c

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v1

    if-eqz v1, :cond_6c

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Landroid/view/IWindowSession;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v1
    :try_end_65
    .catchall {:try_start_20 .. :try_end_65} :catchall_87

    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :cond_6c
    :try_start_6c
    invoke-virtual {v11}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7e

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;
    :try_end_7d
    .catchall {:try_start_6c .. :try_end_7d} :catchall_87

    goto :goto_7f

    :cond_7e
    const/4 v1, 0x0

    :goto_7f
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    nop

    return-object v1

    :catchall_87
    move-exception v0

    goto :goto_98

    :catchall_89
    move-exception v0

    goto :goto_96

    :catchall_8b
    move-exception v0

    goto :goto_94

    :catchall_8d
    move-exception v0

    goto :goto_92

    :catchall_8f
    move-exception v0

    move-object/from16 v12, p1

    :goto_92
    move-object/from16 v13, p2

    :goto_94
    move/from16 v14, p3

    :goto_96
    move/from16 v15, p4

    :goto_98
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public setInTouchMode(Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.view.IWindowSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_12

    const/4 v3, 0x1

    goto :goto_13

    :cond_12
    move v3, v2

    :goto_13
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_34

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    if-eqz v3, :cond_34

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/view/IWindowSession;->setInTouchMode(Z)V
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_3f

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_34
    :try_start_34
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3f

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.view.IWindowSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_14

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_26

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v0, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_29

    :cond_26
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_29
    if-eqz p4, :cond_32

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p4, v0, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_35

    :cond_32
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_35
    if-eqz p5, :cond_3e

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p5, v0, v3}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_41

    :cond_3e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_41
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_64

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    if-eqz v3, :cond_64

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v4

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Landroid/view/IWindowSession;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    :try_end_5d
    .catchall {:try_start_8 .. :try_end_5d} :catchall_6f

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_64
    :try_start_64
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_6f

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_6f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setShouldZoomOutWallpaper(Landroid/os/IBinder;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.view.IWindowSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_15

    const/4 v3, 0x1

    goto :goto_16

    :cond_15
    move v3, v2

    :goto_16
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_37

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    if-eqz v3, :cond_37

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/view/IWindowSession;->setShouldZoomOutWallpaper(Landroid/os/IBinder;Z)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.view.IWindowSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_14

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_23

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_26

    :cond_23
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_26
    iget-object v3, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_44

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    if-eqz v3, :cond_44

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/view/IWindowSession;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_4f

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_44
    :try_start_44
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_4f

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_4f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setWallpaperDisplayOffset(Landroid/os/IBinder;II)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.view.IWindowSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_35

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    if-eqz v3, :cond_35

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/view/IWindowSession;->setWallpaperDisplayOffset(Landroid/os/IBinder;II)V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_40

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_40

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.view.IWindowSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFloat(F)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeFloat(F)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v1, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/view/IWindowSession;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    :try_end_36
    .catchall {:try_start_4 .. :try_end_36} :catchall_3f

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_3a
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_3f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public setWallpaperZoomOut(Landroid/os/IBinder;F)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.view.IWindowSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v1, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v2

    if-eqz v2, :cond_2c

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/IWindowSession;->setWallpaperZoomOut(Landroid/os/IBinder;F)V
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_31

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2c
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_31
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public startMovingTask(Landroid/view/IWindow;FF)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.view.IWindowSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_14

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_3e

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    if-eqz v3, :cond_3e

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/view/IWindowSession;->startMovingTask(Landroid/view/IWindow;FF)Z

    move-result v3
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_51

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :cond_3e
    :try_start_3e
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_51

    if-eqz v3, :cond_48

    const/4 v4, 0x1

    :cond_48
    move v2, v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return v2

    :catchall_51
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public updateDisplayContentLocation(Landroid/view/IWindow;III)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.view.IWindowSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_14

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_40

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    if-eqz v3, :cond_40

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/view/IWindowSession;->updateDisplayContentLocation(Landroid/view/IWindow;III)V
    :try_end_39
    .catchall {:try_start_8 .. :try_end_39} :catchall_4b

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_40
    :try_start_40
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_4b

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_4b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;ILandroid/graphics/Region;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.view.IWindowSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_1e

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v0, v3}, Landroid/view/SurfaceControl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_21

    :cond_1e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_21
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p5, :cond_2d

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p5, v0, v3}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_30

    :cond_2d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_30
    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x27

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_53

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    if-eqz v3, :cond_53

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v4

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move v8, p4

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Landroid/view/IWindowSession;->updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;ILandroid/graphics/Region;)V
    :try_end_4c
    .catchall {:try_start_8 .. :try_end_4c} :catchall_5e

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_53
    :try_start_53
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_5e

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_5e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public updatePointerIcon(Landroid/view/IWindow;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.view.IWindowSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_14

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_37

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    if-eqz v3, :cond_37

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/view/IWindowSession;->updatePointerIcon(Landroid/view/IWindow;)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public updateTapExcludeRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.view.IWindowSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_14

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_23

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_26

    :cond_23
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_26
    iget-object v3, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x23

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_44

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    if-eqz v3, :cond_44

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/view/IWindowSession;->updateTapExcludeRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_4f

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_44
    :try_start_44
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_4f

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_4f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.view.IWindowSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_1b

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1e

    :cond_1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1e
    iget-object v3, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_3c

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    if-eqz v3, :cond_3c

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/view/IWindowSession;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_47

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_3c
    :try_start_3c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_47

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_47
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "android.view.IWindowSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Landroid/view/IWindowSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    if-eqz v3, :cond_2f

    invoke-static {}, Landroid/view/IWindowSession$Stub;->getDefaultImpl()Landroid/view/IWindowSession;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/view/IWindowSession;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
