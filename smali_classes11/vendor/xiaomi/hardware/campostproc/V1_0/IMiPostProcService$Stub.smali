.class public abstract Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService$Stub;
.super Landroid/os/HwBinder;
.source ""

# interfaces
.implements Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0

    return-void
.end method

.method public final getDebugInfo()LOooO00o/OooO0O0/OooO00o/OooO00o/OooO0O0;
    .locals 2

    new-instance p0, LOooO00o/OooO0O0/OooO00o/OooO00o/OooO0O0;

    invoke-direct {p0}, LOooO00o/OooO0O0/OooO00o/OooO00o/OooO0O0;-><init>()V

    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, LOooO00o/OooO0O0/OooO00o/OooO00o/OooO0O0;->OooO00o:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LOooO00o/OooO0O0/OooO00o/OooO00o/OooO0O0;->OooO0O0:J

    const/4 v0, 0x0

    iput v0, p0, LOooO00o/OooO0O0/OooO00o/OooO00o/OooO0O0;->OooO0OO:I

    return-object p0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 4

    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    nop

    :array_0
    .array-data 1
        0x33t
        -0x58t
        0x52t
        0x3dt
        -0x49t
        0x1ct
        -0x7dt
        0x20t
        -0x78t
        -0x28t
        0xat
        0x34t
        -0x6bt
        -0x47t
        0x3ft
        -0x7t
        0x77t
        0x70t
        0x71t
        0x70t
        0x78t
        0x5dt
        0x71t
        0xbt
        0x51t
        -0x5bt
        0x78t
        0x1bt
        0x78t
        -0x58t
        -0x8t
        0x12t
    .end array-data

    :array_1
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 2

    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "vendor.xiaomi.hardware.campostproc@1.0::IMiPostProcService"

    const-string v1, "android.hidl.base@1.0::IBase"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "vendor.xiaomi.hardware.campostproc@1.0::IMiPostProcService"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 6

    const/4 p4, 0x1

    const-string v0, "vendor.xiaomi.hardware.campostproc@1.0::IMiPostProcService"

    const/4 v1, 0x0

    if-eq p1, p4, :cond_7

    const/4 p4, 0x2

    if-eq p1, p4, :cond_5

    const/4 p4, 0x3

    if-eq p1, p4, :cond_4

    const/4 p4, 0x4

    if-eq p1, p4, :cond_3

    const/4 p4, 0x5

    if-eq p1, p4, :cond_2

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_5

    :sswitch_0
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService$Stub;->notifySyspropsChanged()V

    goto/16 :goto_5

    :sswitch_1
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService$Stub;->getDebugInfo()LOooO00o/OooO0O0/OooO00o/OooO00o/OooO0O0;

    move-result-object p0

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p0, p3}, LOooO00o/OooO0O0/OooO00o/OooO00o/OooO0O0;->OooO0o0(Landroid/os/HwParcel;)V

    goto/16 :goto_4

    :sswitch_2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService$Stub;->ping()V

    goto/16 :goto_2

    :sswitch_3
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService$Stub;->setHALInstrumentation()V

    goto/16 :goto_5

    :sswitch_4
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v2, 0x8

    invoke-virtual {p1, v2, v3, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    invoke-virtual {p1, v2, v3, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v1, p2, :cond_1

    mul-int/lit8 v0, v1, 0x20

    int-to-long v2, v0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_0

    array-length v4, v0

    const/16 v5, 0x20

    if-ne v4, v5, :cond_0

    invoke-virtual {p4, v2, v3, v0}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    goto/16 :goto_4

    :sswitch_5
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :sswitch_6
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    goto :goto_2

    :sswitch_7
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    goto :goto_4

    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService;->getCapabilities()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService;->setCapabilities(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-static {p2}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o/OooO;->OooO0OO(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p0, p1}, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService;->setupVendorTags(Ljava/util/ArrayList;)V

    :goto_2
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    goto :goto_4

    :cond_5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance p1, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;

    invoke-direct {p1}, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;-><init>()V

    invoke-virtual {p1, p2}, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p2

    invoke-static {p2}, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcCallBacks;->asInterface(Landroid/os/IHwBinder;)Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcCallBacks;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService;->createPostProcessor(Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcCallBacks;)Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcSession;

    move-result-object p0

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_3

    :cond_6
    invoke-interface {p0}, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcSession;->asBinder()Landroid/os/IHwBinder;

    move-result-object p0

    :goto_3
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    goto :goto_4

    :cond_7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService;->getPostprocTypes()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    :goto_4
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xf43484e -> :sswitch_7
        0xf444247 -> :sswitch_6
        0xf445343 -> :sswitch_5
        0xf485348 -> :sswitch_4
        0xf494e54 -> :sswitch_3
        0xf504e47 -> :sswitch_2
        0xf524546 -> :sswitch_1
        0xf535953 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    const-string v0, "vendor.xiaomi.hardware.campostproc@1.0::IMiPostProcService"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "@Stub"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
