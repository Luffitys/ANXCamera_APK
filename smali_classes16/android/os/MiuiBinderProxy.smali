.class public final Landroid/os/MiuiBinderProxy;
.super Ljava/lang/Object;
.source "MiuiBinderProxy.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mDescriptor:Ljava/lang/String;

.field private mService:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MiuiBinderProxy"

    iput-object v0, p0, Landroid/os/MiuiBinderProxy;->TAG:Ljava/lang/String;

    iput-object p1, p0, Landroid/os/MiuiBinderProxy;->mService:Landroid/os/IBinder;

    iput-object p2, p0, Landroid/os/MiuiBinderProxy;->mDescriptor:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public varargs callOneWayTransact(I[Ljava/lang/Object;)I
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/os/MiuiBinderProxy;->callTransact(II[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public varargs callTransact(II[Ljava/lang/Object;)I
    .registers 14

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, -0x1

    :try_start_9
    iget-object v3, p0, Landroid/os/MiuiBinderProxy;->mDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    array-length v3, p3

    const/4 v4, 0x0

    move v5, v4

    :goto_11
    if-ge v5, v3, :cond_f3

    aget-object v6, p3, v5

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_144

    :cond_25
    goto :goto_75

    :sswitch_26
    const-string v9, "java.io.FileDescriptor"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    const/4 v8, 0x7

    goto :goto_75

    :sswitch_30
    const-string v9, "java.lang.String"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    const/4 v8, 0x1

    goto :goto_75

    :sswitch_3a
    const-string v9, "java.lang.Double"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    const/4 v8, 0x5

    goto :goto_75

    :sswitch_44
    const-string v9, "java.lang.Long"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    const/4 v8, 0x3

    goto :goto_75

    :sswitch_4e
    const-string v9, "java.lang.Boolean"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    const/4 v8, 0x2

    goto :goto_75

    :sswitch_58
    const-string v9, "java.lang.Float"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    const/4 v8, 0x4

    goto :goto_75

    :sswitch_62
    const-string v9, "java.lang.CharSequence"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    const/4 v8, 0x6

    goto :goto_75

    :sswitch_6c
    const-string v9, "java.lang.Integer"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    move v8, v4

    :goto_75
    packed-switch v8, :pswitch_data_166

    instance-of v7, v6, Landroid/os/IBinder;

    goto :goto_c8

    :pswitch_7b
    move-object v7, v6

    check-cast v7, Ljava/io/FileDescriptor;

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    goto/16 :goto_ef

    :pswitch_83
    move-object v7, v6

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    goto :goto_ef

    :pswitch_8a
    move-object v7, v6

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_ef

    :pswitch_95
    move-object v7, v6

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_ef

    :pswitch_a0
    move-object v7, v6

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_ef

    :pswitch_ab
    move-object v7, v6

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_ef

    :pswitch_b6
    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_ef

    :pswitch_bd
    move-object v7, v6

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_ef

    :goto_c8
    if-eqz v7, :cond_d1

    move-object v7, v6

    check-cast v7, Landroid/os/IBinder;

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_ef

    :cond_d1
    iget-object v7, p0, Landroid/os/MiuiBinderProxy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "callBinderTransact not support param type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ef
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_11

    :cond_f3
    iget-object v3, p0, Landroid/os/MiuiBinderProxy;->mService:Landroid/os/IBinder;

    if-eqz v3, :cond_107

    iget-object v3, p0, Landroid/os/MiuiBinderProxy;->mService:Landroid/os/IBinder;

    invoke-interface {v3, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-eqz v3, :cond_107

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_106
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_106} :catch_111
    .catchall {:try_start_9 .. :try_end_106} :catchall_10f

    move v2, v3

    :cond_107
    nop

    :goto_108
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_13c

    :catchall_10f
    move-exception v3

    goto :goto_13d

    :catch_111
    move-exception v3

    :try_start_112
    iget-object v4, p0, Landroid/os/MiuiBinderProxy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callBinderTransact "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/os/MiuiBinderProxy;->mDescriptor:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " failed. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13a
    .catchall {:try_start_112 .. :try_end_13a} :catchall_10f

    nop

    goto :goto_108

    :goto_13c
    return v2

    :goto_13d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :sswitch_data_144
    .sparse-switch
        -0x7a988a96 -> :sswitch_6c
        -0x3f507f75 -> :sswitch_62
        -0x1f76ce78 -> :sswitch_58
        0x148d6054 -> :sswitch_4e
        0x17c521d0 -> :sswitch_44
        0x2d605225 -> :sswitch_3a
        0x473e3665 -> :sswitch_30
        0x64d0e727 -> :sswitch_26
    .end sparse-switch

    :pswitch_data_166
    .packed-switch 0x0
        :pswitch_bd
        :pswitch_b6
        :pswitch_ab
        :pswitch_a0
        :pswitch_95
        :pswitch_8a
        :pswitch_83
        :pswitch_7b
    .end packed-switch
.end method

.method public varargs callTransact(I[Ljava/lang/Object;)I
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/os/MiuiBinderProxy;->callTransact(II[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public varargs callTransactDefault(I[Ljava/lang/Object;)I
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/os/MiuiBinderProxy;->callTransact(II[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
