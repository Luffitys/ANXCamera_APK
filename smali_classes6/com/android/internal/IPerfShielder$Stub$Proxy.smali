.class Lcom/android/internal/app/IPerfShielder$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPerfShielder.java"

# interfaces
.implements Lcom/android/internal/app/IPerfShielder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IPerfShielder$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/android/internal/app/IPerfShielder;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 946
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 947
    iput-object p1, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 948
    return-void
.end method


# virtual methods
.method public abortMatchingScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;IJ)V
    .registers 16
    .param p1, "scenario"    # Landroid/os/statistics/E2EScenario;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "tid"    # I
    .param p4, "uptimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1589
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1590
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1592
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1593
    const/4 v2, 0x0

    if-eqz p1, :cond_18

    .line 1594
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1595
    invoke-virtual {p1, v0, v2}, Landroid/os/statistics/E2EScenario;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 1598
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1600
    :goto_1b
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1601
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1602
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1603
    iget-object v3, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1604
    .local v2, "_status":Z
    if-nez v2, :cond_46

    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v3

    if-eqz v3, :cond_46

    .line 1605
    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-wide v8, p4

    invoke-interface/range {v4 .. v9}, Lcom/android/internal/app/IPerfShielder;->abortMatchingScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;IJ)V
    :try_end_3f
    .catchall {:try_start_8 .. :try_end_3f} :catchall_51

    .line 1611
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1612
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1606
    return-void

    .line 1608
    :cond_46
    :try_start_46
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_51

    .line 1611
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1612
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1613
    nop

    .line 1614
    return-void

    .line 1611
    :catchall_51
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1612
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public abortSpecificScenario(Landroid/os/Bundle;IJ)V
    .registers 10
    .param p1, "scenarioBundle"    # Landroid/os/Bundle;
    .param p2, "tid"    # I
    .param p3, "uptimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1617
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1618
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1620
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1621
    const/4 v2, 0x0

    if-eqz p1, :cond_18

    .line 1622
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1623
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 1626
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1628
    :goto_1b
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1629
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1630
    iget-object v3, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1631
    .local v2, "_status":Z
    if-nez v2, :cond_3f

    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v3

    if-eqz v3, :cond_3f

    .line 1632
    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/android/internal/app/IPerfShielder;->abortSpecificScenario(Landroid/os/Bundle;IJ)V
    :try_end_38
    .catchall {:try_start_8 .. :try_end_38} :catchall_4a

    .line 1638
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1633
    return-void

    .line 1635
    :cond_3f
    :try_start_3f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_4a

    .line 1638
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1640
    nop

    .line 1641
    return-void

    .line 1638
    :catchall_4a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public addActivityLaunchTime(Ljava/lang/String;Ljava/lang/String;JJZZ)V
    .registers 25
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "launchStartTime"    # J
    .param p5, "launchEndTime"    # J
    .param p7, "fromHome"    # Z
    .param p8, "isColdStart"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 982
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 984
    .local v1, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v0, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_69

    .line 985
    move-object/from16 v11, p1

    :try_start_b
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_65

    .line 986
    move-object/from16 v12, p2

    :try_start_10
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_61

    .line 987
    move-wide/from16 v13, p3

    :try_start_15
    invoke-virtual {v1, v13, v14}, Landroid/os/Parcel;->writeLong(J)V

    .line 988
    move-wide/from16 v9, p5

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 989
    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p7, :cond_23

    move v3, v2

    goto :goto_24

    :cond_23
    move v3, v0

    :goto_24
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 990
    if-eqz p8, :cond_2a

    move v0, v2

    :cond_2a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2d
    .catchall {:try_start_15 .. :try_end_2d} :catchall_5d

    .line 991
    move-object/from16 v15, p0

    :try_start_2f
    iget-object v0, v15, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 992
    .local v0, "_status":Z
    if-nez v0, :cond_56

    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v2

    if-eqz v2, :cond_56

    .line 993
    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v2

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Lcom/android/internal/app/IPerfShielder;->addActivityLaunchTime(Ljava/lang/String;Ljava/lang/String;JJZZ)V
    :try_end_52
    .catchall {:try_start_2f .. :try_end_52} :catchall_5b

    .line 998
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 994
    return-void

    .line 998
    .end local v0    # "_status":Z
    :cond_56
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 999
    nop

    .line 1000
    return-void

    .line 998
    :catchall_5b
    move-exception v0

    goto :goto_72

    :catchall_5d
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_72

    :catchall_61
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_70

    :catchall_65
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_6e

    :catchall_69
    move-exception v0

    move-object/from16 v15, p0

    move-object/from16 v11, p1

    :goto_6e
    move-object/from16 v12, p2

    :goto_70
    move-wide/from16 v13, p3

    :goto_72
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public addCallingPkgHookRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "hostApp"    # Ljava/lang/String;
    .param p2, "originCallingPkg"    # Ljava/lang/String;
    .param p3, "hookCallingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1469
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1470
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1473
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1474
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1475
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1476
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1477
    iget-object v2, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1478
    .local v2, "_status":Z
    if-nez v2, :cond_36

    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 1479
    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/android/internal/app/IPerfShielder;->addCallingPkgHookRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_49

    .line 1485
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1486
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1479
    return v3

    .line 1481
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1482
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_49

    if-eqz v3, :cond_40

    const/4 v4, 0x1

    :cond_40
    move v2, v4

    .line 1485
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1486
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1487
    nop

    .line 1488
    return v2

    .line 1485
    .end local v2    # "_result":Z
    :catchall_49
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1486
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public addTimeConsumingIntent([Ljava/lang/String;)V
    .registers 7
    .param p1, "actions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1247
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1248
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1250
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1251
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1252
    iget-object v2, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1253
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 1254
    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/app/IPerfShielder;->addTimeConsumingIntent([Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 1260
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1255
    return-void

    .line 1257
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 1260
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1262
    nop

    .line 1263
    return-void

    .line 1260
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 951
    iget-object v0, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public beginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;IJZ)Landroid/os/Bundle;
    .registers 25
    .param p1, "scenario"    # Landroid/os/statistics/E2EScenario;
    .param p2, "settings"    # Landroid/os/statistics/E2EScenarioSettings;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "payload"    # Landroid/os/statistics/E2EScenarioPayload;
    .param p5, "tid"    # I
    .param p6, "uptimeMillis"    # J
    .param p8, "needResultBundle"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1539
    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v13

    .line 1540
    .local v13, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v14

    .line 1543
    .local v14, "_reply":Landroid/os/Parcel;
    :try_start_e
    const-string v0, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1544
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v10, :cond_1e

    .line 1545
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1546
    invoke-virtual {v10, v13, v1}, Landroid/os/statistics/E2EScenario;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_21

    .line 1549
    :cond_1e
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1551
    :goto_21
    if-eqz v11, :cond_2a

    .line 1552
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1553
    invoke-virtual {v11, v13, v1}, Landroid/os/statistics/E2EScenarioSettings;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2d

    .line 1556
    :cond_2a
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2d
    .catchall {:try_start_e .. :try_end_2d} :catchall_9b

    .line 1558
    :goto_2d
    move-object/from16 v15, p3

    :try_start_2f
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1559
    if-eqz v12, :cond_3b

    .line 1560
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1561
    invoke-virtual {v12, v13, v1}, Landroid/os/statistics/E2EScenarioPayload;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3e

    .line 1564
    :cond_3b
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1566
    :goto_3e
    move/from16 v9, p5

    invoke-virtual {v13, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1567
    move-wide/from16 v7, p6

    invoke-virtual {v13, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    .line 1568
    if-eqz p8, :cond_4b

    goto :goto_4c

    :cond_4b
    move v0, v1

    :goto_4c
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1569
    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1d

    invoke-interface {v0, v2, v13, v14, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1570
    .local v0, "_status":Z
    if-nez v0, :cond_7e

    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v1

    if-eqz v1, :cond_7e

    .line 1571
    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/app/IPerfShielder;->beginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;IJZ)Landroid/os/Bundle;

    move-result-object v1
    :try_end_77
    .catchall {:try_start_2f .. :try_end_77} :catchall_99

    .line 1582
    invoke-virtual {v14}, Landroid/os/Parcel;->recycle()V

    .line 1583
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    .line 1571
    return-object v1

    .line 1573
    :cond_7e
    :try_start_7e
    invoke-virtual {v14}, Landroid/os/Parcel;->readException()V

    .line 1574
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_90

    .line 1575
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;
    :try_end_8f
    .catchall {:try_start_7e .. :try_end_8f} :catchall_99

    .local v1, "_result":Landroid/os/Bundle;
    goto :goto_91

    .line 1578
    .end local v1    # "_result":Landroid/os/Bundle;
    :cond_90
    const/4 v1, 0x0

    .line 1582
    .end local v0    # "_status":Z
    .restart local v1    # "_result":Landroid/os/Bundle;
    :goto_91
    invoke-virtual {v14}, Landroid/os/Parcel;->recycle()V

    .line 1583
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    .line 1584
    nop

    .line 1585
    return-object v1

    .line 1582
    .end local v1    # "_result":Landroid/os/Bundle;
    :catchall_99
    move-exception v0

    goto :goto_9e

    :catchall_9b
    move-exception v0

    move-object/from16 v15, p3

    :goto_9e
    invoke-virtual {v14}, Landroid/os/Parcel;->recycle()V

    .line 1583
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public clearTimeConsumingIntent()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1285
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1286
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1288
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1289
    iget-object v2, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1290
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 1291
    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/app/IPerfShielder;->clearTimeConsumingIntent()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_37

    .line 1297
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1292
    return-void

    .line 1294
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    .line 1297
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1299
    nop

    .line 1300
    return-void

    .line 1297
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public closeCheckPriority()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1197
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1198
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1200
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1201
    iget-object v2, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1202
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 1203
    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/app/IPerfShielder;->closeCheckPriority()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_37

    .line 1209
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1204
    return-void

    .line 1206
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    .line 1209
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1211
    nop

    .line 1212
    return-void

    .line 1209
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public deleteFilterInfo(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1785
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1786
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1789
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1790
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1791
    iget-object v2, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1792
    .local v2, "_status":Z
    if-nez v2, :cond_30

    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 1793
    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/app/IPerfShielder;->deleteFilterInfo(Ljava/lang/String;)Z

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_43

    .line 1799
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1793
    return v3

    .line 1795
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1796
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_43

    if-eqz v3, :cond_3a

    const/4 v4, 0x1

    :cond_3a
    move v2, v4

    .line 1799
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1801
    nop

    .line 1802
    return v2

    .line 1799
    .end local v2    # "_result":Z
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public deletePackageInfo(Ljava/lang/String;)Z
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1406
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1407
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1410
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1411
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1412
    iget-object v2, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1413
    .local v2, "_status":Z
    if-nez v2, :cond_30

    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 1414
    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/app/IPerfShielder;->deletePackageInfo(Ljava/lang/String;)Z

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_43

    .line 1420
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1414
    return v3

    .line 1416
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1417
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_43

    if-eqz v3, :cond_3a

    const/4 v4, 0x1

    :cond_3a
    move v2, v4

    .line 1420
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1422
    nop

    .line 1423
    return v2

    .line 1420
    .end local v2    # "_result":Z
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public deleteRedirectRule(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "destPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1355
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1356
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1359
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1360
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1361
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1362
    iget-object v2, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1363
    .local v2, "_status":Z
    if-nez v2, :cond_33

    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 1364
    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/internal/app/IPerfShielder;->deleteRedirectRule(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_46

    .line 1370
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1364
    return v3

    .line 1366
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1367
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_46

    if-eqz v3, :cond_3d

    const/4 v4, 0x1

    :cond_3d
    move v2, v4

    .line 1370
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1372
    nop

    .line 1373
    return v2

    .line 1370
    .end local v2    # "_result":Z
    :catchall_46
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public finishMatchingScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;IJ)V
    .registers 23
    .param p1, "scenario"    # Landroid/os/statistics/E2EScenario;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "payload"    # Landroid/os/statistics/E2EScenarioPayload;
    .param p4, "tid"    # I
    .param p5, "uptimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1644
    move-object/from16 v8, p1

    move-object/from16 v9, p3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    .line 1645
    .local v10, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    .line 1647
    .local v11, "_reply":Landroid/os/Parcel;
    :try_start_c
    const-string v0, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1648
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v8, :cond_1c

    .line 1649
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1650
    invoke-virtual {v8, v10, v1}, Landroid/os/statistics/E2EScenario;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1f

    .line 1653
    :cond_1c
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_75

    .line 1655
    :goto_1f
    move-object/from16 v12, p2

    :try_start_21
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1656
    if-eqz v9, :cond_2d

    .line 1657
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1658
    invoke-virtual {v9, v10, v1}, Landroid/os/statistics/E2EScenarioPayload;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_30

    .line 1661
    :cond_2d
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_30
    .catchall {:try_start_21 .. :try_end_30} :catchall_73

    .line 1663
    :goto_30
    move/from16 v13, p4

    :try_start_32
    invoke-virtual {v10, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_71

    .line 1664
    move-wide/from16 v14, p5

    :try_start_37
    invoke-virtual {v10, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    .line 1665
    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x20

    invoke-interface {v0, v2, v10, v11, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1666
    .local v0, "_status":Z
    if-nez v0, :cond_64

    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v1

    if-eqz v1, :cond_64

    .line 1667
    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/app/IPerfShielder;->finishMatchingScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;IJ)V
    :try_end_5d
    .catchall {:try_start_37 .. :try_end_5d} :catchall_6f

    .line 1673
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 1674
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 1668
    return-void

    .line 1670
    :cond_64
    :try_start_64
    invoke-virtual {v11}, Landroid/os/Parcel;->readException()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_6f

    .line 1673
    .end local v0    # "_status":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 1674
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 1675
    nop

    .line 1676
    return-void

    .line 1673
    :catchall_6f
    move-exception v0

    goto :goto_7c

    :catchall_71
    move-exception v0

    goto :goto_7a

    :catchall_73
    move-exception v0

    goto :goto_78

    :catchall_75
    move-exception v0

    move-object/from16 v12, p2

    :goto_78
    move/from16 v13, p4

    :goto_7a
    move-wide/from16 v14, p5

    :goto_7c
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 1674
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public finishSpecificScenario(Landroid/os/Bundle;Landroid/os/statistics/E2EScenarioPayload;IJ)V
    .registers 16
    .param p1, "scenarioBundle"    # Landroid/os/Bundle;
    .param p2, "payload"    # Landroid/os/statistics/E2EScenarioPayload;
    .param p3, "tid"    # I
    .param p4, "uptimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1679
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1680
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1682
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1683
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 1684
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1685
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 1688
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1690
    :goto_1b
    if-eqz p2, :cond_24

    .line 1691
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1692
    invoke-virtual {p2, v0, v3}, Landroid/os/statistics/E2EScenarioPayload;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 1695
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1697
    :goto_27
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1698
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1699
    iget-object v2, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x21

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1700
    .local v2, "_status":Z
    if-nez v2, :cond_4f

    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v3

    if-eqz v3, :cond_4f

    .line 1701
    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-wide v8, p4

    invoke-interface/range {v4 .. v9}, Lcom/android/internal/app/IPerfShielder;->finishSpecificScenario(Landroid/os/Bundle;Landroid/os/statistics/E2EScenarioPayload;IJ)V
    :try_end_48
    .catchall {:try_start_8 .. :try_end_48} :catchall_5a

    .line 1707
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1708
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1702
    return-void

    .line 1704
    :cond_4f
    :try_start_4f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_5a

    .line 1707
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1708
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1709
    nop

    .line 1710
    return-void

    .line 1707
    :catchall_5a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1708
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getAllRunningProcessMemInfos()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1079
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1080
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1083
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1084
    iget-object v2, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1085
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 1086
    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/app/IPerfShielder;->getAllRunningProcessMemInfos()Ljava/util/List;

    move-result-object v3
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3e

    .line 1092
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1086
    return-object v3

    .line 1088
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1089
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_3e

    move-object v2, v3

    .line 1092
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1094
    nop

    .line 1095
    return-object v2

    .line 1092
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :catchall_3e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getFreeMemory()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1427
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1428
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1431
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1432
    iget-object v2, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1433
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 1434
    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/app/IPerfShielder;->getFreeMemory()J

    move-result-wide v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3d

    .line 1440
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1441
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1434
    return-wide v3

    .line 1436
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1437
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3d

    move-wide v2, v3

    .line 1440
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1441
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1442
    nop

    .line 1443
    return-wide v2

    .line 1440
    .end local v2    # "_result":J
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1441
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 955
    const-string v0, "com.android.internal.app.IPerfShielder"

    return-object v0
.end method

.method public getMemoryTrimLevel()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1303
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1304
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1307
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1308
    iget-object v2, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1309
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 1310
    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/app/IPerfShielder;->getMemoryTrimLevel()I

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3d

    .line 1316
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1317
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1310
    return v3

    .line 1312
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1313
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3d

    move v2, v3

    .line 1316
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1317
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1318
    nop

    .line 1319
    return v2

    .line 1316
    .end local v2    # "_result":I
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1317
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getPackageNameByPid(I)Ljava/lang/String;
    .registers 7
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1036
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1037
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1040
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1041
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1042
    iget-object v2, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1043
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 1044
    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/app/IPerfShielder;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v3
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3f

    .line 1050
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1051
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1044
    return-object v3

    .line 1046
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1047
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_3f

    move-object v2, v3

    .line 1050
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1051
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1052
    nop

    .line 1053
    return-object v2

    .line 1050
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1051
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getPerfEventSocketFd()Landroid/os/ParcelFileDescriptor;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1514
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1515
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1518
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1519
    iget-object v2, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1520
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 1521
    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/app/IPerfShielder;->getPerfEventSocketFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_48

    .line 1532
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1521
    return-object v3

    .line 1523
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1524
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3f

    .line 1525
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;
    :try_end_3e
    .catchall {:try_start_2d .. :try_end_3e} :catchall_48

    .local v3, "_result":Landroid/os/ParcelFileDescriptor;
    goto :goto_40

    .line 1528
    .end local v3    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_3f
    const/4 v3, 0x0

    .line 1532
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Landroid/os/ParcelFileDescriptor;
    :goto_40
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1534
    nop

    .line 1535
    return-object v3

    .line 1532
    .end local v3    # "_result":Landroid/os/ParcelFileDescriptor;
    :catchall_48
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public insertFilterInfo(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "iconUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1755
    .local p4, "filterInfos":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1756
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1759
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1760
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1761
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1762
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_1e

    .line 1763
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1764
    invoke-virtual {p3, v0, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_21

    .line 1767
    :cond_1e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1769
    :goto_21
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1770
    iget-object v4, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x24

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 1771
    .local v4, "_status":Z
    if-nez v4, :cond_43

    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v5

    if-eqz v5, :cond_43

    .line 1772
    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/app/IPerfShielder;->insertFilterInfo(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)Z

    move-result v2
    :try_end_3c
    .catchall {:try_start_8 .. :try_end_3c} :catchall_56

    .line 1778
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1772
    return v2

    .line 1774
    :cond_43
    :try_start_43
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1775
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_56

    if-eqz v5, :cond_4d

    goto :goto_4e

    :cond_4d
    move v2, v3

    .line 1778
    .end local v4    # "_status":Z
    .local v2, "_result":Z
    :goto_4e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1780
    nop

    .line 1781
    return v2

    .line 1778
    .end local v2    # "_result":Z
    :catchall_56
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public insertPackageInfo(Landroid/content/pm/PackageInfo;)Z
    .registers 8
    .param p1, "pInfo"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1379
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1380
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1383
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1384
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 1385
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1386
    invoke-virtual {p1, v0, v3}, Landroid/content/pm/PackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 1389
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1391
    :goto_1b
    iget-object v4, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x16

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 1392
    .local v4, "_status":Z
    if-nez v4, :cond_3a

    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v5

    if-eqz v5, :cond_3a

    .line 1393
    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/app/IPerfShielder;->insertPackageInfo(Landroid/content/pm/PackageInfo;)Z

    move-result v2
    :try_end_33
    .catchall {:try_start_8 .. :try_end_33} :catchall_4d

    .line 1399
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1393
    return v2

    .line 1395
    :cond_3a
    :try_start_3a
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1396
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_4d

    if-eqz v5, :cond_44

    goto :goto_45

    :cond_44
    move v2, v3

    .line 1399
    .end local v4    # "_status":Z
    .local v2, "_result":Z
    :goto_45
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1401
    nop

    .line 1402
    return v2

    .line 1399
    .end local v2    # "_result":Z
    :catchall_4d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public insertRedirectRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 11
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "destPkg"    # Ljava/lang/String;
    .param p3, "redirectPkgname"    # Ljava/lang/String;
    .param p4, "clsNameMap"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1325
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1326
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1329
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1330
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1331
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1332
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1333
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p4, :cond_21

    .line 1334
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1335
    invoke-virtual {p4, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_24

    .line 1338
    :cond_21
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1340
    :goto_24
    iget-object v4, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x14

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 1341
    .local v4, "_status":Z
    if-nez v4, :cond_43

    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v5

    if-eqz v5, :cond_43

    .line 1342
    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/app/IPerfShielder;->insertRedirectRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2
    :try_end_3c
    .catchall {:try_start_8 .. :try_end_3c} :catchall_56

    .line 1348
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1342
    return v2

    .line 1344
    :cond_43
    :try_start_43
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1345
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_56

    if-eqz v5, :cond_4d

    goto :goto_4e

    :cond_4d
    move v2, v3

    .line 1348
    .end local v4    # "_status":Z
    .local v2, "_result":Z
    :goto_4e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1350
    nop

    .line 1351
    return v2

    .line 1348
    .end local v2    # "_result":Z
    :catchall_56
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public killUnusedApp(II)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1019
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1021
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1022
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1023
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1024
    iget-object v1, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1025
    .local v1, "_status":Z
    if-nez v1, :cond_2b

    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 1026
    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/app/IPerfShielder;->killUnusedApp(II)V
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_30

    .line 1031
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1027
    return-void

    .line 1031
    .end local v1    # "_status":Z
    :cond_2b
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1032
    nop

    .line 1033
    return-void

    .line 1031
    :catchall_30
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public removeCallingPkgHookRule(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "hostApp"    # Ljava/lang/String;
    .param p2, "originCallingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1492
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1493
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1496
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1497
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1498
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1499
    iget-object v2, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1500
    .local v2, "_status":Z
    if-nez v2, :cond_33

    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 1501
    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/internal/app/IPerfShielder;->removeCallingPkgHookRule(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_46

    .line 1507
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1508
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1501
    return v3

    .line 1503
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1504
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_46

    if-eqz v3, :cond_3d

    const/4 v4, 0x1

    :cond_3d
    move v2, v4

    .line 1507
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1508
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1509
    nop

    .line 1510
    return v2

    .line 1507
    .end local v2    # "_result":Z
    :catchall_46
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1508
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public removeServicePriority(Lcom/android/internal/app/MiuiServicePriority;Z)V
    .registers 8
    .param p1, "servicePriority"    # Lcom/android/internal/app/MiuiServicePriority;
    .param p2, "inBlacklist"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1174
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1176
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1177
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    .line 1178
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1179
    invoke-virtual {p1, v0, v2}, Lcom/android/internal/app/MiuiServicePriority;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    .line 1182
    :cond_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1184
    :goto_17
    if-eqz p2, :cond_1a

    move v2, v1

    :cond_1a
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1185
    iget-object v2, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1186
    .local v1, "_status":Z
    if-nez v1, :cond_39

    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 1187
    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/app/IPerfShielder;->removeServicePriority(Lcom/android/internal/app/MiuiServicePriority;Z)V
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_3e

    .line 1192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1188
    return-void

    .line 1192
    .end local v1    # "_status":Z
    :cond_39
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1193
    nop

    .line 1194
    return-void

    .line 1192
    :catchall_3e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public removeTimeConsumingIntent([Ljava/lang/String;)V
    .registers 7
    .param p1, "actions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1266
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1267
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1269
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1270
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1271
    iget-object v2, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1272
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 1273
    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/app/IPerfShielder;->removeTimeConsumingIntent([Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 1279
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1274
    return-void

    .line 1276
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 1279
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1281
    nop

    .line 1282
    return-void

    .line 1279
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public reportAnr(ILjava/lang/String;JJLjava/lang/String;)V
    .registers 24
    .param p1, "callingPid"    # I
    .param p2, "windowName"    # Ljava/lang/String;
    .param p3, "totalDuration"    # J
    .param p5, "endTs"    # J
    .param p7, "cpuInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1447
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1449
    .local v1, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v0, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_58

    .line 1450
    move/from16 v10, p1

    :try_start_b
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_56

    .line 1451
    move-object/from16 v11, p2

    :try_start_10
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_54

    .line 1452
    move-wide/from16 v12, p3

    :try_start_15
    invoke-virtual {v1, v12, v13}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_52

    .line 1453
    move-wide/from16 v14, p5

    :try_start_1a
    invoke-virtual {v1, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    .line 1454
    move-object/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1455
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x19

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1456
    .local v0, "_status":Z
    if-nez v0, :cond_4b

    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v2

    if-eqz v2, :cond_4b

    .line 1457
    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lcom/android/internal/app/IPerfShielder;->reportAnr(ILjava/lang/String;JJLjava/lang/String;)V
    :try_end_47
    .catchall {:try_start_1a .. :try_end_47} :catchall_50

    .line 1462
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1458
    return-void

    .line 1462
    .end local v0    # "_status":Z
    :cond_4b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1463
    nop

    .line 1464
    return-void

    .line 1462
    :catchall_50
    move-exception v0

    goto :goto_61

    :catchall_52
    move-exception v0

    goto :goto_5f

    :catchall_54
    move-exception v0

    goto :goto_5d

    :catchall_56
    move-exception v0

    goto :goto_5b

    :catchall_58
    move-exception v0

    move/from16 v10, p1

    :goto_5b
    move-object/from16 v11, p2

    :goto_5d
    move-wide/from16 v12, p3

    :goto_5f
    move-wide/from16 v14, p5

    :goto_61
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public reportExcessiveCpuUsageRecords(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1713
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1715
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1716
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1717
    iget-object v1, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x22

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1718
    .local v1, "_status":Z
    if-nez v1, :cond_29

    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 1719
    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/app/IPerfShielder;->reportExcessiveCpuUsageRecords(Ljava/util/List;)V
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_2e

    .line 1724
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1720
    return-void

    .line 1724
    .end local v1    # "_status":Z
    :cond_29
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1725
    nop

    .line 1726
    return-void

    .line 1724
    :catchall_2e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public reportNotificationClick(Ljava/lang/String;Landroid/content/Intent;J)V
    .registers 10
    .param p1, "postPackage"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "uptimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1731
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1733
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1734
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1735
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_17

    .line 1736
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1737
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1a

    .line 1740
    :cond_17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1742
    :goto_1a
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1743
    iget-object v2, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1744
    .local v1, "_status":Z
    if-nez v1, :cond_39

    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 1745
    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/app/IPerfShielder;->reportNotificationClick(Ljava/lang/String;Landroid/content/Intent;J)V
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_3e

    .line 1750
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1746
    return-void

    .line 1750
    .end local v1    # "_status":Z
    :cond_39
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1751
    nop

    .line 1752
    return-void

    .line 1750
    :catchall_3e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public reportPerceptibleJank(IILjava/lang/String;JJJIJ)V
    .registers 29
    .param p1, "callingPid"    # I
    .param p2, "renderThreadTid"    # I
    .param p3, "windowName"    # Ljava/lang/String;
    .param p4, "totalDuration"    # J
    .param p6, "maxFrameDuration"    # J
    .param p8, "endTs"    # J
    .param p10, "selfCause"    # I
    .param p11, "num_frames"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 959
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 961
    .local v1, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v0, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_65

    .line 962
    move/from16 v15, p1

    :try_start_b
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 963
    move/from16 v13, p2

    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 964
    move-object/from16 v14, p3

    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 965
    move-wide/from16 v10, p4

    invoke-virtual {v1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 966
    move-wide/from16 v8, p6

    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 967
    move-wide/from16 v6, p8

    invoke-virtual {v1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 968
    move/from16 v12, p10

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 969
    move-wide/from16 v4, p11

    invoke-virtual {v1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 970
    move-object/from16 v3, p0

    iget-object v0, v3, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v3, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 971
    .local v0, "_status":Z
    if-nez v0, :cond_5e

    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v2

    if-eqz v2, :cond_5e

    .line 972
    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move/from16 v12, p10

    move-wide/from16 v13, p11

    invoke-interface/range {v2 .. v14}, Lcom/android/internal/app/IPerfShielder;->reportPerceptibleJank(IILjava/lang/String;JJJIJ)V
    :try_end_5a
    .catchall {:try_start_b .. :try_end_5a} :catchall_63

    .line 977
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 973
    return-void

    .line 977
    .end local v0    # "_status":Z
    :cond_5e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 978
    nop

    .line 979
    return-void

    .line 977
    :catchall_63
    move-exception v0

    goto :goto_68

    :catchall_65
    move-exception v0

    move/from16 v15, p1

    :goto_68
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public reportProcessCleanEvent(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "info"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1860
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1862
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1863
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    .line 1864
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1865
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    .line 1868
    :cond_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1870
    :goto_17
    iget-object v2, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1871
    .local v1, "_status":Z
    if-nez v1, :cond_33

    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 1872
    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/app/IPerfShielder;->reportProcessCleanEvent(Landroid/os/Bundle;)V
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_38

    .line 1877
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1873
    return-void

    .line 1877
    .end local v1    # "_status":Z
    :cond_33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1878
    nop

    .line 1879
    return-void

    .line 1877
    :catchall_38
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public resolveQuickAppInfos(Landroid/content/Intent;)Ljava/util/List;
    .registers 7
    .param p1, "targetIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/app/QuickAppResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1806
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1807
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1810
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1811
    const/4 v2, 0x0

    if-eqz p1, :cond_18

    .line 1812
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1813
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 1816
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1818
    :goto_1b
    iget-object v3, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x26

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1819
    .local v2, "_status":Z
    if-nez v2, :cond_3a

    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v3

    if-eqz v3, :cond_3a

    .line 1820
    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/app/IPerfShielder;->resolveQuickAppInfos(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v3
    :try_end_33
    .catchall {:try_start_8 .. :try_end_33} :catchall_4c

    .line 1826
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1827
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1820
    return-object v3

    .line 1822
    :cond_3a
    :try_start_3a
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1823
    sget-object v3, Lcom/android/internal/app/QuickAppResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_43
    .catchall {:try_start_3a .. :try_end_43} :catchall_4c

    move-object v2, v3

    .line 1826
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/QuickAppResolveInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1827
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1828
    nop

    .line 1829
    return-object v2

    .line 1826
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/QuickAppResolveInfo;>;"
    :catchall_4c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1827
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setForkedProcessGroup(IIILjava/lang/String;)V
    .registers 10
    .param p1, "puid"    # I
    .param p2, "ppid"    # I
    .param p3, "group"    # I
    .param p4, "processName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1057
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1058
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1060
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1061
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1062
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1063
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1064
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1065
    iget-object v2, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1066
    .local v2, "_status":Z
    if-nez v2, :cond_37

    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 1067
    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/android/internal/app/IPerfShielder;->setForkedProcessGroup(IIILjava/lang/String;)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    .line 1073
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1068
    return-void

    .line 1070
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 1073
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1075
    nop

    .line 1076
    return-void

    .line 1073
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setHapLinks(Ljava/util/Map;Landroid/content/pm/ActivityInfo;)V
    .registers 8
    .param p1, "data"    # Ljava/util/Map;
    .param p2, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1835
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1837
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1838
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 1839
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_17

    .line 1840
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1841
    invoke-virtual {p2, v0, v2}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1a

    .line 1844
    :cond_17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1846
    :goto_1a
    iget-object v2, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1847
    .local v1, "_status":Z
    if-nez v1, :cond_36

    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 1848
    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/app/IPerfShielder;->setHapLinks(Ljava/util/Map;Landroid/content/pm/ActivityInfo;)V
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_3b

    .line 1853
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1849
    return-void

    .line 1853
    .end local v1    # "_status":Z
    :cond_36
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1854
    nop

    .line 1855
    return-void

    .line 1853
    :catchall_3b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public setMiuiBroadcastDispatchEnable(Z)V
    .registers 7
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1231
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1233
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1234
    const/4 v1, 0x1

    if-eqz p1, :cond_e

    move v2, v1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1235
    iget-object v2, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1236
    .local v1, "_status":Z
    if-nez v1, :cond_2e

    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 1237
    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/app/IPerfShielder;->setMiuiBroadcastDispatchEnable(Z)V
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_33

    .line 1242
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1238
    return-void

    .line 1242
    .end local v1    # "_status":Z
    :cond_2e
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1243
    nop

    .line 1244
    return-void

    .line 1242
    :catchall_33
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public setMiuiContentProviderControl(Z)V
    .registers 7
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1215
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1217
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1218
    const/4 v1, 0x1

    if-eqz p1, :cond_e

    move v2, v1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1219
    iget-object v2, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1220
    .local v1, "_status":Z
    if-nez v1, :cond_2e

    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 1221
    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/app/IPerfShielder;->setMiuiContentProviderControl(Z)V
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_33

    .line 1226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1222
    return-void

    .line 1226
    .end local v1    # "_status":Z
    :cond_2e
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1227
    nop

    .line 1228
    return-void

    .line 1226
    :catchall_33
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public setSchedFgPid(I)V
    .registers 7
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1003
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1005
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1006
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1007
    iget-object v1, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1008
    .local v1, "_status":Z
    if-nez v1, :cond_28

    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 1009
    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/app/IPerfShielder;->setSchedFgPid(I)V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_2d

    .line 1014
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1010
    return-void

    .line 1014
    .end local v1    # "_status":Z
    :cond_28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1015
    nop

    .line 1016
    return-void

    .line 1014
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public setServicePriority(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/MiuiServicePriority;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1141
    .local p1, "servicePrioritys":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/MiuiServicePriority;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1143
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1144
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1145
    iget-object v1, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1146
    .local v1, "_status":Z
    if-nez v1, :cond_29

    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 1147
    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/app/IPerfShielder;->setServicePriority(Ljava/util/List;)V
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_2e

    .line 1152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1148
    return-void

    .line 1152
    .end local v1    # "_status":Z
    :cond_29
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1153
    nop

    .line 1154
    return-void

    .line 1152
    :catchall_2e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public setServicePriorityWithNoProc(Ljava/util/List;J)V
    .registers 9
    .param p2, "noProcDelayTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/MiuiServicePriority;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1157
    .local p1, "servicePrioritys":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/MiuiServicePriority;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1159
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1160
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1161
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1162
    iget-object v1, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1163
    .local v1, "_status":Z
    if-nez v1, :cond_2c

    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 1164
    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/app/IPerfShielder;->setServicePriorityWithNoProc(Ljava/util/List;J)V
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_31

    .line 1169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1165
    return-void

    .line 1169
    .end local v1    # "_status":Z
    :cond_2c
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1170
    nop

    .line 1171
    return-void

    .line 1169
    :catchall_31
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public updateProcessFullMemInfoByPids([I)Ljava/util/List;
    .registers 7
    .param p1, "pids"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1099
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1100
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1103
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1104
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1105
    iget-object v2, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1106
    .local v2, "_status":Z
    if-nez v2, :cond_30

    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 1107
    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/app/IPerfShielder;->updateProcessFullMemInfoByPids([I)Ljava/util/List;

    move-result-object v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_42

    .line 1113
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1107
    return-object v3

    .line 1109
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1110
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_42

    move-object v2, v3

    .line 1113
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1115
    nop

    .line 1116
    return-object v2

    .line 1113
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public updateProcessPartialMemInfoByPids([I)Ljava/util/List;
    .registers 7
    .param p1, "pids"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1121
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1124
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1125
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1126
    iget-object v2, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1127
    .local v2, "_status":Z
    if-nez v2, :cond_30

    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 1128
    invoke-static {}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultImpl()Lcom/android/internal/app/IPerfShielder;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/app/IPerfShielder;->updateProcessPartialMemInfoByPids([I)Ljava/util/List;

    move-result-object v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_42

    .line 1134
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1128
    return-object v3

    .line 1130
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1131
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_42

    move-object v2, v3

    .line 1134
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1136
    nop

    .line 1137
    return-object v2

    .line 1134
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
