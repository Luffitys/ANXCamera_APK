.class public Landroid/mtp/MtpEvent;
.super Ljava/lang/Object;
.source "MtpEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpEvent$IllegalParameterAccess;
    }
.end annotation


# static fields
.field public static final EVENT_CANCEL_TRANSACTION:I = 0x4001

.field public static final EVENT_CAPTURE_COMPLETE:I = 0x400d

.field public static final EVENT_DEVICE_INFO_CHANGED:I = 0x4008

.field public static final EVENT_DEVICE_PROP_CHANGED:I = 0x4006

.field public static final EVENT_DEVICE_RESET:I = 0x400b

.field public static final EVENT_OBJECT_ADDED:I = 0x4002

.field public static final EVENT_OBJECT_INFO_CHANGED:I = 0x4007

.field public static final EVENT_OBJECT_PROP_CHANGED:I = 0xc801

.field public static final EVENT_OBJECT_PROP_DESC_CHANGED:I = 0xc802

.field public static final EVENT_OBJECT_REFERENCES_CHANGED:I = 0xc803

.field public static final EVENT_OBJECT_REMOVED:I = 0x4003

.field public static final EVENT_REQUEST_OBJECT_TRANSFER:I = 0x4009

.field public static final EVENT_STORAGE_INFO_CHANGED:I = 0x400c

.field public static final EVENT_STORE_ADDED:I = 0x4004

.field public static final EVENT_STORE_FULL:I = 0x400a

.field public static final EVENT_STORE_REMOVED:I = 0x4005

.field public static final EVENT_UNDEFINED:I = 0x4000

.field public static final EVENT_UNREPORTED_STATUS:I = 0x400e


# instance fields
.field private mEventCode:I

.field private mParameter1:I

.field private mParameter2:I

.field private mParameter3:I


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x4000

    iput v0, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    return-void
.end method


# virtual methods
.method public getDevicePropCode()I
    .registers 4

    iget v0, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    const/16 v1, 0x4006

    if-ne v0, v1, :cond_9

    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    return v0

    :cond_9
    new-instance v0, Landroid/mtp/MtpEvent$IllegalParameterAccess;

    iget v1, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    const-string v2, "devicePropCode"

    invoke-direct {v0, v2, v1}, Landroid/mtp/MtpEvent$IllegalParameterAccess;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public getEventCode()I
    .registers 2

    iget v0, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    return v0
.end method

.method public getObjectFormatCode()I
    .registers 4

    iget v0, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    const v1, 0xc802

    if-ne v0, v1, :cond_a

    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter2:I

    return v0

    :cond_a
    new-instance v0, Landroid/mtp/MtpEvent$IllegalParameterAccess;

    iget v1, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    const-string/jumbo v2, "objectFormatCode"

    invoke-direct {v0, v2, v1}, Landroid/mtp/MtpEvent$IllegalParameterAccess;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public getObjectHandle()I
    .registers 4

    iget v0, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    const/16 v1, 0x4002

    if-eq v0, v1, :cond_36

    const/16 v1, 0x4003

    if-eq v0, v1, :cond_33

    const/16 v1, 0x4007

    if-eq v0, v1, :cond_30

    const/16 v1, 0x4009

    if-eq v0, v1, :cond_2d

    const v1, 0xc801

    if-eq v0, v1, :cond_2a

    const v1, 0xc803

    if-ne v0, v1, :cond_1f

    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    return v0

    :cond_1f
    new-instance v0, Landroid/mtp/MtpEvent$IllegalParameterAccess;

    iget v1, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    const-string/jumbo v2, "objectHandle"

    invoke-direct {v0, v2, v1}, Landroid/mtp/MtpEvent$IllegalParameterAccess;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2a
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    return v0

    :cond_2d
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    return v0

    :cond_30
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    return v0

    :cond_33
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    return v0

    :cond_36
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    return v0
.end method

.method public getObjectPropCode()I
    .registers 4

    iget v0, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    packed-switch v0, :pswitch_data_16

    new-instance v0, Landroid/mtp/MtpEvent$IllegalParameterAccess;

    iget v1, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    const-string/jumbo v2, "objectPropCode"

    invoke-direct {v0, v2, v1}, Landroid/mtp/MtpEvent$IllegalParameterAccess;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_10
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    return v0

    :pswitch_13
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter2:I

    return v0

    :pswitch_data_16
    .packed-switch 0xc801
        :pswitch_13
        :pswitch_10
    .end packed-switch
.end method

.method public getParameter1()I
    .registers 2

    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    return v0
.end method

.method public getParameter2()I
    .registers 2

    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter2:I

    return v0
.end method

.method public getParameter3()I
    .registers 2

    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter3:I

    return v0
.end method

.method public getStorageId()I
    .registers 4

    iget v0, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    const/16 v1, 0x4004

    if-eq v0, v1, :cond_26

    const/16 v1, 0x4005

    if-eq v0, v1, :cond_23

    const/16 v1, 0x400a

    if-eq v0, v1, :cond_20

    const/16 v1, 0x400c

    if-ne v0, v1, :cond_15

    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    return v0

    :cond_15
    new-instance v0, Landroid/mtp/MtpEvent$IllegalParameterAccess;

    iget v1, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    const-string/jumbo v2, "storageID"

    invoke-direct {v0, v2, v1}, Landroid/mtp/MtpEvent$IllegalParameterAccess;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_20
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    return v0

    :cond_23
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    return v0

    :cond_26
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    return v0
.end method

.method public getTransactionId()I
    .registers 4

    iget v0, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    const/16 v1, 0x400d

    if-ne v0, v1, :cond_9

    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    return v0

    :cond_9
    new-instance v0, Landroid/mtp/MtpEvent$IllegalParameterAccess;

    iget v1, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    const-string/jumbo v2, "transactionID"

    invoke-direct {v0, v2, v1}, Landroid/mtp/MtpEvent$IllegalParameterAccess;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
