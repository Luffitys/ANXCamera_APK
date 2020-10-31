.class public abstract Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;
.super Landroid/os/Binder;
.source "IMiuiFreeFormGestureControlHelper.java"

# interfaces
.implements Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.internal.transition.IMiuiFreeFormGestureControlHelper"

.field static final TRANSACTION_hideCaptionView:I = 0x7

.field static final TRANSACTION_notifyExitFreeFormApplicationStart:I = 0x2

.field static final TRANSACTION_notifyExitSmallFreeFormApplicationStart:I = 0x3

.field static final TRANSACTION_notifyFreeFormApplicationResizeEnd:I = 0x5

.field static final TRANSACTION_notifyFreeFormApplicationResizeStart:I = 0x4

.field static final TRANSACTION_notifyFullScreenWidnowModeStart:I = 0x1

.field static final TRANSACTION_showCaptionView:I = 0x6

.field static final TRANSACTION_updateCaptionViewVisibility:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.miui.internal.transition.IMiuiFreeFormGestureControlHelper"

    invoke-virtual {p0, p0, v0}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.miui.internal.transition.IMiuiFreeFormGestureControlHelper"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;

    return-object v1

    :cond_14
    new-instance v1, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;
    .registers 1

    sget-object v0, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub$Proxy;->sDefaultImpl:Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_1e

    const/4 v0, 0x0

    return-object v0

    :pswitch_5
    const-string v0, "updateCaptionViewVisibility"

    return-object v0

    :pswitch_8
    const-string v0, "hideCaptionView"

    return-object v0

    :pswitch_b
    const-string v0, "showCaptionView"

    return-object v0

    :pswitch_e
    const-string v0, "notifyFreeFormApplicationResizeEnd"

    return-object v0

    :pswitch_11
    const-string v0, "notifyFreeFormApplicationResizeStart"

    return-object v0

    :pswitch_14
    const-string v0, "notifyExitSmallFreeFormApplicationStart"

    return-object v0

    :pswitch_17
    const-string v0, "notifyExitFreeFormApplicationStart"

    return-object v0

    :pswitch_1a
    const-string v0, "notifyFullScreenWidnowModeStart"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static setDefaultImpl(Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;)Z
    .registers 3

    sget-object v0, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub$Proxy;->sDefaultImpl:Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub$Proxy;->sDefaultImpl:Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.miui.internal.transition.IMiuiFreeFormGestureControlHelper"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_4c

    packed-switch p1, :pswitch_data_50

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->updateCaptionViewVisibility()V

    return v2

    :pswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->hideCaptionView()V

    return v2

    :pswitch_1e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->showCaptionView()V

    return v2

    :pswitch_25
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->notifyFreeFormApplicationResizeEnd(J)V

    return v2

    :pswitch_30
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->notifyFreeFormApplicationResizeStart()V

    return v2

    :pswitch_37
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->notifyExitSmallFreeFormApplicationStart()V

    return v2

    :pswitch_3e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->notifyExitFreeFormApplicationStart()V

    return v2

    :pswitch_45
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->notifyFullScreenWidnowModeStart()V

    return v2

    :cond_4c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_45
        :pswitch_3e
        :pswitch_37
        :pswitch_30
        :pswitch_25
        :pswitch_1e
        :pswitch_17
        :pswitch_10
    .end packed-switch
.end method
