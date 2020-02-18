.class public abstract Lcom/android/internal/app/IPerfShielder$Stub;
.super Landroid/os/Binder;
.source "IPerfShielder.java"

# interfaces
.implements Lcom/android/internal/app/IPerfShielder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IPerfShielder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IPerfShielder$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IPerfShielder"

.field static final TRANSACTION_abortMatchingScenario:I = 0x1e

.field static final TRANSACTION_abortSpecificScenario:I = 0x1f

.field static final TRANSACTION_addActivityLaunchTime:I = 0x2

.field static final TRANSACTION_addCallingPkgHookRule:I = 0x1a

.field static final TRANSACTION_addTimeConsumingIntent:I = 0x10

.field static final TRANSACTION_beginScenario:I = 0x1d

.field static final TRANSACTION_clearTimeConsumingIntent:I = 0x12

.field static final TRANSACTION_closeCheckPriority:I = 0xd

.field static final TRANSACTION_deleteFilterInfo:I = 0x25

.field static final TRANSACTION_deletePackageInfo:I = 0x17

.field static final TRANSACTION_deleteRedirectRule:I = 0x15

.field static final TRANSACTION_finishMatchingScenario:I = 0x20

.field static final TRANSACTION_finishSpecificScenario:I = 0x21

.field static final TRANSACTION_getAllRunningProcessMemInfos:I = 0x7

.field static final TRANSACTION_getFreeMemory:I = 0x18

.field static final TRANSACTION_getMemoryTrimLevel:I = 0x13

.field static final TRANSACTION_getPackageNameByPid:I = 0x5

.field static final TRANSACTION_getPerfEventSocketFd:I = 0x1c

.field static final TRANSACTION_insertFilterInfo:I = 0x24

.field static final TRANSACTION_insertPackageInfo:I = 0x16

.field static final TRANSACTION_insertRedirectRule:I = 0x14

.field static final TRANSACTION_killUnusedApp:I = 0x4

.field static final TRANSACTION_removeCallingPkgHookRule:I = 0x1b

.field static final TRANSACTION_removeServicePriority:I = 0xc

.field static final TRANSACTION_removeTimeConsumingIntent:I = 0x11

.field static final TRANSACTION_reportAnr:I = 0x19

.field static final TRANSACTION_reportExcessiveCpuUsageRecords:I = 0x22

.field static final TRANSACTION_reportNotificationClick:I = 0x23

.field static final TRANSACTION_reportPerceptibleJank:I = 0x1

.field static final TRANSACTION_reportProcessCleanEvent:I = 0x28

.field static final TRANSACTION_resolveQuickAppInfos:I = 0x26

.field static final TRANSACTION_setForkedProcessGroup:I = 0x6

.field static final TRANSACTION_setHapLinks:I = 0x27

.field static final TRANSACTION_setMiuiBroadcastDispatchEnable:I = 0xf

.field static final TRANSACTION_setMiuiContentProviderControl:I = 0xe

.field static final TRANSACTION_setSchedFgPid:I = 0x3

.field static final TRANSACTION_setServicePriority:I = 0xa

.field static final TRANSACTION_setServicePriorityWithNoProc:I = 0xb

.field static final TRANSACTION_updateProcessFullMemInfoByPids:I = 0x8

.field static final TRANSACTION_updateProcessPartialMemInfoByPids:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 173
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 174
    const-string v0, "com.android.internal.app.IPerfShielder"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IPerfShielder$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IPerfShielder;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 182
    if-nez p0, :cond_4

    .line 183
    const/4 v0, 0x0

    return-object v0

    .line 185
    :cond_4
    const-string v0, "com.android.internal.app.IPerfShielder"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 186
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/app/IPerfShielder;

    if-eqz v1, :cond_14

    .line 187
    move-object v1, v0

    check-cast v1, Lcom/android/internal/app/IPerfShielder;

    return-object v1

    .line 189
    :cond_14
    new-instance v1, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/android/internal/app/IPerfShielder;
    .registers 1

    .line 1930
    sget-object v0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/app/IPerfShielder;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 198
    packed-switch p0, :pswitch_data_90

    .line 362
    const/4 v0, 0x0

    return-object v0

    .line 358
    :pswitch_5
    const-string/jumbo v0, "reportProcessCleanEvent"

    return-object v0

    .line 354
    :pswitch_9
    const-string/jumbo v0, "setHapLinks"

    return-object v0

    .line 350
    :pswitch_d
    const-string/jumbo v0, "resolveQuickAppInfos"

    return-object v0

    .line 346
    :pswitch_11
    const-string v0, "deleteFilterInfo"

    return-object v0

    .line 342
    :pswitch_14
    const-string v0, "insertFilterInfo"

    return-object v0

    .line 338
    :pswitch_17
    const-string/jumbo v0, "reportNotificationClick"

    return-object v0

    .line 334
    :pswitch_1b
    const-string/jumbo v0, "reportExcessiveCpuUsageRecords"

    return-object v0

    .line 330
    :pswitch_1f
    const-string v0, "finishSpecificScenario"

    return-object v0

    .line 326
    :pswitch_22
    const-string v0, "finishMatchingScenario"

    return-object v0

    .line 322
    :pswitch_25
    const-string v0, "abortSpecificScenario"

    return-object v0

    .line 318
    :pswitch_28
    const-string v0, "abortMatchingScenario"

    return-object v0

    .line 314
    :pswitch_2b
    const-string v0, "beginScenario"

    return-object v0

    .line 310
    :pswitch_2e
    const-string v0, "getPerfEventSocketFd"

    return-object v0

    .line 306
    :pswitch_31
    const-string/jumbo v0, "removeCallingPkgHookRule"

    return-object v0

    .line 302
    :pswitch_35
    const-string v0, "addCallingPkgHookRule"

    return-object v0

    .line 298
    :pswitch_38
    const-string/jumbo v0, "reportAnr"

    return-object v0

    .line 294
    :pswitch_3c
    const-string v0, "getFreeMemory"

    return-object v0

    .line 290
    :pswitch_3f
    const-string v0, "deletePackageInfo"

    return-object v0

    .line 286
    :pswitch_42
    const-string v0, "insertPackageInfo"

    return-object v0

    .line 282
    :pswitch_45
    const-string v0, "deleteRedirectRule"

    return-object v0

    .line 278
    :pswitch_48
    const-string v0, "insertRedirectRule"

    return-object v0

    .line 274
    :pswitch_4b
    const-string v0, "getMemoryTrimLevel"

    return-object v0

    .line 270
    :pswitch_4e
    const-string v0, "clearTimeConsumingIntent"

    return-object v0

    .line 266
    :pswitch_51
    const-string/jumbo v0, "removeTimeConsumingIntent"

    return-object v0

    .line 262
    :pswitch_55
    const-string v0, "addTimeConsumingIntent"

    return-object v0

    .line 258
    :pswitch_58
    const-string/jumbo v0, "setMiuiBroadcastDispatchEnable"

    return-object v0

    .line 254
    :pswitch_5c
    const-string/jumbo v0, "setMiuiContentProviderControl"

    return-object v0

    .line 250
    :pswitch_60
    const-string v0, "closeCheckPriority"

    return-object v0

    .line 246
    :pswitch_63
    const-string/jumbo v0, "removeServicePriority"

    return-object v0

    .line 242
    :pswitch_67
    const-string/jumbo v0, "setServicePriorityWithNoProc"

    return-object v0

    .line 238
    :pswitch_6b
    const-string/jumbo v0, "setServicePriority"

    return-object v0

    .line 234
    :pswitch_6f
    const-string/jumbo v0, "updateProcessPartialMemInfoByPids"

    return-object v0

    .line 230
    :pswitch_73
    const-string/jumbo v0, "updateProcessFullMemInfoByPids"

    return-object v0

    .line 226
    :pswitch_77
    const-string v0, "getAllRunningProcessMemInfos"

    return-object v0

    .line 222
    :pswitch_7a
    const-string/jumbo v0, "setForkedProcessGroup"

    return-object v0

    .line 218
    :pswitch_7e
    const-string v0, "getPackageNameByPid"

    return-object v0

    .line 214
    :pswitch_81
    const-string v0, "killUnusedApp"

    return-object v0

    .line 210
    :pswitch_84
    const-string/jumbo v0, "setSchedFgPid"

    return-object v0

    .line 206
    :pswitch_88
    const-string v0, "addActivityLaunchTime"

    return-object v0

    .line 202
    :pswitch_8b
    const-string/jumbo v0, "reportPerceptibleJank"

    return-object v0

    nop

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_8b
        :pswitch_88
        :pswitch_84
        :pswitch_81
        :pswitch_7e
        :pswitch_7a
        :pswitch_77
        :pswitch_73
        :pswitch_6f
        :pswitch_6b
        :pswitch_67
        :pswitch_63
        :pswitch_60
        :pswitch_5c
        :pswitch_58
        :pswitch_55
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_38
        :pswitch_35
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method public static setDefaultImpl(Lcom/android/internal/app/IPerfShielder;)Z
    .registers 2
    .param p0, "impl"    # Lcom/android/internal/app/IPerfShielder;

    .line 1923
    sget-object v0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/app/IPerfShielder;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 1924
    sput-object p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/app/IPerfShielder;

    .line 1925
    const/4 v0, 0x1

    return v0

    .line 1927
    :cond_a
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 193
    return-object p0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 369
    invoke-static {p1}, Lcom/android/internal/app/IPerfShielder$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 34
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 373
    move-object/from16 v13, p0

    move/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v11, p3

    const-string v12, "com.android.internal.app.IPerfShielder"

    .line 374
    .local v12, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v10, 0x1

    if-eq v14, v0, :cond_48d

    const/4 v9, 0x0

    packed-switch v14, :pswitch_data_496

    .line 938
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 925
    :pswitch_19
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 927
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2b

    .line 928
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .local v0, "_arg0":Landroid/os/Bundle;
    goto :goto_2c

    .line 931
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_2b
    const/4 v0, 0x0

    .line 933
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_2c
    invoke-virtual {v13, v0}, Lcom/android/internal/app/IPerfShielder$Stub;->reportProcessCleanEvent(Landroid/os/Bundle;)V

    .line 934
    return v10

    .line 909
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :pswitch_30
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 911
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 912
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 914
    .local v1, "_arg0":Ljava/util/Map;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4e

    .line 915
    sget-object v2, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ActivityInfo;

    .local v2, "_arg1":Landroid/content/pm/ActivityInfo;
    goto :goto_4f

    .line 918
    .end local v2    # "_arg1":Landroid/content/pm/ActivityInfo;
    :cond_4e
    const/4 v2, 0x0

    .line 920
    .restart local v2    # "_arg1":Landroid/content/pm/ActivityInfo;
    :goto_4f
    invoke-virtual {v13, v1, v2}, Lcom/android/internal/app/IPerfShielder$Stub;->setHapLinks(Ljava/util/Map;Landroid/content/pm/ActivityInfo;)V

    .line 921
    return v10

    .line 894
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "_arg0":Ljava/util/Map;
    .end local v2    # "_arg1":Landroid/content/pm/ActivityInfo;
    :pswitch_53
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 896
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_65

    .line 897
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .local v0, "_arg0":Landroid/content/Intent;
    goto :goto_66

    .line 900
    .end local v0    # "_arg0":Landroid/content/Intent;
    :cond_65
    const/4 v0, 0x0

    .line 902
    .restart local v0    # "_arg0":Landroid/content/Intent;
    :goto_66
    invoke-virtual {v13, v0}, Lcom/android/internal/app/IPerfShielder$Stub;->resolveQuickAppInfos(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    .line 903
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/QuickAppResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 904
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 905
    return v10

    .line 884
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/QuickAppResolveInfo;>;"
    :pswitch_71
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 886
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 887
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/android/internal/app/IPerfShielder$Stub;->deleteFilterInfo(Ljava/lang/String;)Z

    move-result v1

    .line 888
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 889
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 890
    return v10

    .line 863
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_83
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 865
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 867
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 869
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9d

    .line 870
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .local v2, "_arg2":Landroid/net/Uri;
    goto :goto_9e

    .line 873
    .end local v2    # "_arg2":Landroid/net/Uri;
    :cond_9d
    const/4 v2, 0x0

    .line 876
    .restart local v2    # "_arg2":Landroid/net/Uri;
    :goto_9e
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 877
    .local v3, "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/internal/app/IPerfShielder$Stub;->insertFilterInfo(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)Z

    move-result v4

    .line 878
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 879
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 880
    return v10

    .line 846
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/net/Uri;
    .end local v3    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .end local v4    # "_result":Z
    :pswitch_af
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 848
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 850
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c5

    .line 851
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .local v1, "_arg1":Landroid/content/Intent;
    goto :goto_c6

    .line 854
    .end local v1    # "_arg1":Landroid/content/Intent;
    :cond_c5
    const/4 v1, 0x0

    .line 857
    .restart local v1    # "_arg1":Landroid/content/Intent;
    :goto_c6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 858
    .local v2, "_arg2":J
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/internal/app/IPerfShielder$Stub;->reportNotificationClick(Ljava/lang/String;Landroid/content/Intent;J)V

    .line 859
    return v10

    .line 838
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/Intent;
    .end local v2    # "_arg2":J
    :pswitch_ce
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 840
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 841
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-virtual {v13, v0}, Lcom/android/internal/app/IPerfShielder$Stub;->reportExcessiveCpuUsageRecords(Ljava/util/List;)V

    .line 842
    return v10

    .line 813
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :pswitch_db
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 815
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_ee

    .line 816
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v6, v0

    .local v0, "_arg0":Landroid/os/Bundle;
    goto :goto_f0

    .line 819
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_ee
    const/4 v0, 0x0

    move-object v6, v0

    .line 822
    .local v6, "_arg0":Landroid/os/Bundle;
    :goto_f0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_100

    .line 823
    sget-object v0, Landroid/os/statistics/E2EScenarioPayload;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/E2EScenarioPayload;

    move-object v7, v0

    .local v0, "_arg1":Landroid/os/statistics/E2EScenarioPayload;
    goto :goto_102

    .line 826
    .end local v0    # "_arg1":Landroid/os/statistics/E2EScenarioPayload;
    :cond_100
    const/4 v0, 0x0

    move-object v7, v0

    .line 829
    .local v7, "_arg1":Landroid/os/statistics/E2EScenarioPayload;
    :goto_102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 831
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 832
    .local v16, "_arg3":J
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move-wide/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IPerfShielder$Stub;->finishSpecificScenario(Landroid/os/Bundle;Landroid/os/statistics/E2EScenarioPayload;IJ)V

    .line 833
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 834
    return v10

    .line 786
    .end local v6    # "_arg0":Landroid/os/Bundle;
    .end local v7    # "_arg1":Landroid/os/statistics/E2EScenarioPayload;
    .end local v8    # "_arg2":I
    .end local v16    # "_arg3":J
    :pswitch_118
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 788
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12b

    .line 789
    sget-object v0, Landroid/os/statistics/E2EScenario;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/E2EScenario;

    move-object v7, v0

    .local v0, "_arg0":Landroid/os/statistics/E2EScenario;
    goto :goto_12d

    .line 792
    .end local v0    # "_arg0":Landroid/os/statistics/E2EScenario;
    :cond_12b
    const/4 v0, 0x0

    move-object v7, v0

    .line 795
    .local v7, "_arg0":Landroid/os/statistics/E2EScenario;
    :goto_12d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 797
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_141

    .line 798
    sget-object v0, Landroid/os/statistics/E2EScenarioPayload;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/E2EScenarioPayload;

    move-object v9, v0

    .local v0, "_arg2":Landroid/os/statistics/E2EScenarioPayload;
    goto :goto_143

    .line 801
    .end local v0    # "_arg2":Landroid/os/statistics/E2EScenarioPayload;
    :cond_141
    const/4 v0, 0x0

    move-object v9, v0

    .line 804
    .local v9, "_arg2":Landroid/os/statistics/E2EScenarioPayload;
    :goto_143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 806
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 807
    .local v17, "_arg4":J
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move/from16 v4, v16

    move-wide/from16 v5, v17

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/IPerfShielder$Stub;->finishMatchingScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;IJ)V

    .line 808
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 809
    return v10

    .line 768
    .end local v7    # "_arg0":Landroid/os/statistics/E2EScenario;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Landroid/os/statistics/E2EScenarioPayload;
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":J
    :pswitch_15b
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 770
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16d

    .line 771
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .local v0, "_arg0":Landroid/os/Bundle;
    goto :goto_16e

    .line 774
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_16d
    const/4 v0, 0x0

    .line 777
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_16e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 779
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 780
    .restart local v2    # "_arg2":J
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/internal/app/IPerfShielder$Stub;->abortSpecificScenario(Landroid/os/Bundle;IJ)V

    .line 781
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 782
    return v10

    .line 748
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":J
    :pswitch_17d
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 750
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_190

    .line 751
    sget-object v0, Landroid/os/statistics/E2EScenario;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/E2EScenario;

    move-object v6, v0

    .local v0, "_arg0":Landroid/os/statistics/E2EScenario;
    goto :goto_192

    .line 754
    .end local v0    # "_arg0":Landroid/os/statistics/E2EScenario;
    :cond_190
    const/4 v0, 0x0

    move-object v6, v0

    .line 757
    .local v6, "_arg0":Landroid/os/statistics/E2EScenario;
    :goto_192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 759
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 761
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 762
    .local v16, "_arg3":J
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move-wide/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IPerfShielder$Stub;->abortMatchingScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;IJ)V

    .line 763
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 764
    return v10

    .line 705
    .end local v6    # "_arg0":Landroid/os/statistics/E2EScenario;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v16    # "_arg3":J
    :pswitch_1ac
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c0

    .line 708
    sget-object v0, Landroid/os/statistics/E2EScenario;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/E2EScenario;

    move-object/from16 v16, v0

    .restart local v0    # "_arg0":Landroid/os/statistics/E2EScenario;
    goto :goto_1c3

    .line 711
    .end local v0    # "_arg0":Landroid/os/statistics/E2EScenario;
    :cond_1c0
    const/4 v0, 0x0

    move-object/from16 v16, v0

    .line 714
    .local v16, "_arg0":Landroid/os/statistics/E2EScenario;
    :goto_1c3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d4

    .line 715
    sget-object v0, Landroid/os/statistics/E2EScenarioSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/E2EScenarioSettings;

    move-object/from16 v17, v0

    .local v0, "_arg1":Landroid/os/statistics/E2EScenarioSettings;
    goto :goto_1d7

    .line 718
    .end local v0    # "_arg1":Landroid/os/statistics/E2EScenarioSettings;
    :cond_1d4
    const/4 v0, 0x0

    move-object/from16 v17, v0

    .line 721
    .local v17, "_arg1":Landroid/os/statistics/E2EScenarioSettings;
    :goto_1d7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 723
    .local v18, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1ec

    .line 724
    sget-object v0, Landroid/os/statistics/E2EScenarioPayload;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/E2EScenarioPayload;

    move-object/from16 v19, v0

    .local v0, "_arg3":Landroid/os/statistics/E2EScenarioPayload;
    goto :goto_1ef

    .line 727
    .end local v0    # "_arg3":Landroid/os/statistics/E2EScenarioPayload;
    :cond_1ec
    const/4 v0, 0x0

    move-object/from16 v19, v0

    .line 730
    .local v19, "_arg3":Landroid/os/statistics/E2EScenarioPayload;
    :goto_1ef
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 732
    .local v20, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v21

    .line 734
    .local v21, "_arg5":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1ff

    move v8, v10

    goto :goto_200

    :cond_1ff
    move v8, v9

    .line 735
    .local v8, "_arg6":Z
    :goto_200
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move/from16 v5, v20

    move-wide/from16 v6, v21

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/app/IPerfShielder$Stub;->beginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;IJZ)Landroid/os/Bundle;

    move-result-object v0

    .line 736
    .local v0, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 737
    if-eqz v0, :cond_21e

    .line 738
    invoke-virtual {v11, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 739
    invoke-virtual {v0, v11, v10}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_221

    .line 742
    :cond_21e
    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 744
    :goto_221
    return v10

    .line 691
    .end local v0    # "_result":Landroid/os/Bundle;
    .end local v8    # "_arg6":Z
    .end local v16    # "_arg0":Landroid/os/statistics/E2EScenario;
    .end local v17    # "_arg1":Landroid/os/statistics/E2EScenarioSettings;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Landroid/os/statistics/E2EScenarioPayload;
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":J
    :pswitch_222
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 692
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IPerfShielder$Stub;->getPerfEventSocketFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 693
    .local v0, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    if-eqz v0, :cond_235

    .line 695
    invoke-virtual {v11, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 696
    invoke-virtual {v0, v11, v10}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_238

    .line 699
    :cond_235
    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 701
    :goto_238
    return v10

    .line 679
    .end local v0    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_239
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 681
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 683
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 684
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/app/IPerfShielder$Stub;->removeCallingPkgHookRule(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 685
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 686
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 687
    return v10

    .line 665
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_24f
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 667
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 669
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 671
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 672
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/app/IPerfShielder$Stub;->addCallingPkgHookRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 673
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 674
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 675
    return v10

    .line 649
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_269
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 651
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 653
    .local v8, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 655
    .local v9, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 657
    .local v16, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 659
    .local v18, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 660
    .local v20, "_arg4":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move-wide/from16 v3, v16

    move-wide/from16 v5, v18

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/IPerfShielder$Stub;->reportAnr(ILjava/lang/String;JJLjava/lang/String;)V

    .line 661
    return v10

    .line 641
    .end local v8    # "_arg0":I
    .end local v9    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":J
    .end local v18    # "_arg3":J
    .end local v20    # "_arg4":Ljava/lang/String;
    :pswitch_28e
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IPerfShielder$Stub;->getFreeMemory()J

    move-result-wide v0

    .line 643
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 645
    return v10

    .line 631
    .end local v0    # "_result":J
    :pswitch_29c
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 634
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/android/internal/app/IPerfShielder$Stub;->deletePackageInfo(Ljava/lang/String;)Z

    move-result v1

    .line 635
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 637
    return v10

    .line 616
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_2ae
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 618
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2c0

    .line 619
    sget-object v0, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .local v0, "_arg0":Landroid/content/pm/PackageInfo;
    goto :goto_2c1

    .line 622
    .end local v0    # "_arg0":Landroid/content/pm/PackageInfo;
    :cond_2c0
    const/4 v0, 0x0

    .line 624
    .restart local v0    # "_arg0":Landroid/content/pm/PackageInfo;
    :goto_2c1
    invoke-virtual {v13, v0}, Lcom/android/internal/app/IPerfShielder$Stub;->insertPackageInfo(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    .line 625
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 627
    return v10

    .line 604
    .end local v0    # "_arg0":Landroid/content/pm/PackageInfo;
    .end local v1    # "_result":Z
    :pswitch_2cc
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 606
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 608
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 609
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/app/IPerfShielder$Stub;->deleteRedirectRule(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 610
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 612
    return v10

    .line 583
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_2e2
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 585
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 587
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 589
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 591
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_300

    .line 592
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .local v3, "_arg3":Landroid/os/Bundle;
    goto :goto_301

    .line 595
    .end local v3    # "_arg3":Landroid/os/Bundle;
    :cond_300
    const/4 v3, 0x0

    .line 597
    .restart local v3    # "_arg3":Landroid/os/Bundle;
    :goto_301
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/internal/app/IPerfShielder$Stub;->insertRedirectRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v4

    .line 598
    .restart local v4    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 599
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 600
    return v10

    .line 575
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/os/Bundle;
    .end local v4    # "_result":Z
    :pswitch_30c
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IPerfShielder$Stub;->getMemoryTrimLevel()I

    move-result v0

    .line 577
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 579
    return v10

    .line 568
    .end local v0    # "_result":I
    :pswitch_31a
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 569
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IPerfShielder$Stub;->clearTimeConsumingIntent()V

    .line 570
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    return v10

    .line 559
    :pswitch_324
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 561
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/android/internal/app/IPerfShielder$Stub;->removeTimeConsumingIntent([Ljava/lang/String;)V

    .line 563
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    return v10

    .line 550
    .end local v0    # "_arg0":[Ljava/lang/String;
    :pswitch_332
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 552
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 553
    .restart local v0    # "_arg0":[Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/android/internal/app/IPerfShielder$Stub;->addTimeConsumingIntent([Ljava/lang/String;)V

    .line 554
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    return v10

    .line 542
    .end local v0    # "_arg0":[Ljava/lang/String;
    :pswitch_340
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_34a

    move v9, v10

    :cond_34a
    move v0, v9

    .line 545
    .local v0, "_arg0":Z
    invoke-virtual {v13, v0}, Lcom/android/internal/app/IPerfShielder$Stub;->setMiuiBroadcastDispatchEnable(Z)V

    .line 546
    return v10

    .line 534
    .end local v0    # "_arg0":Z
    :pswitch_34f
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_359

    move v9, v10

    :cond_359
    move v0, v9

    .line 537
    .restart local v0    # "_arg0":Z
    invoke-virtual {v13, v0}, Lcom/android/internal/app/IPerfShielder$Stub;->setMiuiContentProviderControl(Z)V

    .line 538
    return v10

    .line 527
    .end local v0    # "_arg0":Z
    :pswitch_35e
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IPerfShielder$Stub;->closeCheckPriority()V

    .line 529
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    return v10

    .line 512
    :pswitch_368
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_37a

    .line 515
    sget-object v0, Lcom/android/internal/app/MiuiServicePriority;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/MiuiServicePriority;

    .local v0, "_arg0":Lcom/android/internal/app/MiuiServicePriority;
    goto :goto_37b

    .line 518
    .end local v0    # "_arg0":Lcom/android/internal/app/MiuiServicePriority;
    :cond_37a
    const/4 v0, 0x0

    .line 521
    .restart local v0    # "_arg0":Lcom/android/internal/app/MiuiServicePriority;
    :goto_37b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_382

    move v9, v10

    :cond_382
    move v1, v9

    .line 522
    .local v1, "_arg1":Z
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/app/IPerfShielder$Stub;->removeServicePriority(Lcom/android/internal/app/MiuiServicePriority;Z)V

    .line 523
    return v10

    .line 502
    .end local v0    # "_arg0":Lcom/android/internal/app/MiuiServicePriority;
    .end local v1    # "_arg1":Z
    :pswitch_387
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    sget-object v0, Lcom/android/internal/app/MiuiServicePriority;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 506
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/MiuiServicePriority;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 507
    .local v1, "_arg1":J
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/app/IPerfShielder$Stub;->setServicePriorityWithNoProc(Ljava/util/List;J)V

    .line 508
    return v10

    .line 494
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/MiuiServicePriority;>;"
    .end local v1    # "_arg1":J
    :pswitch_398
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    sget-object v0, Lcom/android/internal/app/MiuiServicePriority;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 497
    .restart local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/MiuiServicePriority;>;"
    invoke-virtual {v13, v0}, Lcom/android/internal/app/IPerfShielder$Stub;->setServicePriority(Ljava/util/List;)V

    .line 498
    return v10

    .line 484
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/MiuiServicePriority;>;"
    :pswitch_3a5
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 487
    .local v0, "_arg0":[I
    invoke-virtual {v13, v0}, Lcom/android/internal/app/IPerfShielder$Stub;->updateProcessPartialMemInfoByPids([I)Ljava/util/List;

    move-result-object v1

    .line 488
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 490
    return v10

    .line 474
    .end local v0    # "_arg0":[I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :pswitch_3b7
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 477
    .restart local v0    # "_arg0":[I
    invoke-virtual {v13, v0}, Lcom/android/internal/app/IPerfShielder$Stub;->updateProcessFullMemInfoByPids([I)Ljava/util/List;

    move-result-object v1

    .line 478
    .restart local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 480
    return v10

    .line 466
    .end local v0    # "_arg0":[I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :pswitch_3c9
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IPerfShielder$Stub;->getAllRunningProcessMemInfos()Ljava/util/List;

    move-result-object v0

    .line 468
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 470
    return v10

    .line 451
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :pswitch_3d7
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 455
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 457
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 459
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 460
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/internal/app/IPerfShielder$Stub;->setForkedProcessGroup(IIILjava/lang/String;)V

    .line 461
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    return v10

    .line 441
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_3f1
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 444
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Lcom/android/internal/app/IPerfShielder$Stub;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 447
    return v10

    .line 431
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_403
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 435
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 436
    .local v1, "_arg1":I
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/app/IPerfShielder$Stub;->killUnusedApp(II)V

    .line 437
    return v10

    .line 423
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_412
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 426
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Lcom/android/internal/app/IPerfShielder$Stub;->setSchedFgPid(I)V

    .line 427
    return v10

    .line 405
    .end local v0    # "_arg0":I
    :pswitch_41d
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 409
    .local v16, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 411
    .local v17, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 413
    .local v18, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 415
    .local v20, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_438

    move v7, v10

    goto :goto_439

    :cond_438
    move v7, v9

    .line 417
    .local v7, "_arg4":Z
    :goto_439
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_441

    move v8, v10

    goto :goto_442

    :cond_441
    move v8, v9

    .line 418
    .local v8, "_arg5":Z
    :goto_442
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-wide/from16 v3, v18

    move-wide/from16 v5, v20

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/app/IPerfShielder$Stub;->addActivityLaunchTime(Ljava/lang/String;Ljava/lang/String;JJZZ)V

    .line 419
    return v10

    .line 383
    .end local v7    # "_arg4":Z
    .end local v8    # "_arg5":Z
    .end local v16    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":J
    .end local v20    # "_arg3":J
    :pswitch_450
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 387
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 389
    .local v17, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 391
    .local v18, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 393
    .local v19, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v21

    .line 395
    .local v21, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v23

    .line 397
    .local v23, "_arg5":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 399
    .local v25, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v26

    .line 400
    .local v26, "_arg7":J
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move-wide/from16 v4, v19

    move-wide/from16 v6, v21

    move-wide/from16 v8, v23

    move/from16 v28, v10

    move/from16 v10, v25

    move-object v13, v11

    move-object v14, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .local v14, "descriptor":Ljava/lang/String;
    move-wide/from16 v11, v26

    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/app/IPerfShielder$Stub;->reportPerceptibleJank(IILjava/lang/String;JJJIJ)V

    .line 401
    return v28

    .line 378
    .end local v14    # "descriptor":Ljava/lang/String;
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":I
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":J
    .end local v21    # "_arg4":J
    .end local v23    # "_arg5":J
    .end local v25    # "_arg6":I
    .end local v26    # "_arg7":J
    .restart local v12    # "descriptor":Ljava/lang/String;
    :cond_48d
    move/from16 v28, v10

    move-object v13, v11

    move-object v14, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 379
    return v28

    nop

    :pswitch_data_496
    .packed-switch 0x1
        :pswitch_450
        :pswitch_41d
        :pswitch_412
        :pswitch_403
        :pswitch_3f1
        :pswitch_3d7
        :pswitch_3c9
        :pswitch_3b7
        :pswitch_3a5
        :pswitch_398
        :pswitch_387
        :pswitch_368
        :pswitch_35e
        :pswitch_34f
        :pswitch_340
        :pswitch_332
        :pswitch_324
        :pswitch_31a
        :pswitch_30c
        :pswitch_2e2
        :pswitch_2cc
        :pswitch_2ae
        :pswitch_29c
        :pswitch_28e
        :pswitch_269
        :pswitch_24f
        :pswitch_239
        :pswitch_222
        :pswitch_1ac
        :pswitch_17d
        :pswitch_15b
        :pswitch_118
        :pswitch_db
        :pswitch_ce
        :pswitch_af
        :pswitch_83
        :pswitch_71
        :pswitch_53
        :pswitch_30
        :pswitch_19
    .end packed-switch
.end method
