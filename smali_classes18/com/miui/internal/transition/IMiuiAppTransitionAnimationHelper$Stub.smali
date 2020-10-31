.class public abstract Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub;
.super Landroid/os/Binder;
.source "IMiuiAppTransitionAnimationHelper.java"

# interfaces
.implements Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.internal.transition.IMiuiAppTransitionAnimationHelper"

.field static final TRANSACTION_getSpec:I = 0x1

.field static final TRANSACTION_notifyMiuiAnimationEnd:I = 0x3

.field static final TRANSACTION_notifyMiuiAnimationStart:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.miui.internal.transition.IMiuiAppTransitionAnimationHelper"

    invoke-virtual {p0, p0, v0}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.miui.internal.transition.IMiuiAppTransitionAnimationHelper"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    return-object v1

    :cond_14
    new-instance v1, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;
    .registers 1

    sget-object v0, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub$Proxy;->sDefaultImpl:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_11

    const/4 v0, 0x2

    if-eq p0, v0, :cond_e

    const/4 v0, 0x3

    if-eq p0, v0, :cond_b

    const/4 v0, 0x0

    return-object v0

    :cond_b
    const-string v0, "notifyMiuiAnimationEnd"

    return-object v0

    :cond_e
    const-string v0, "notifyMiuiAnimationStart"

    return-object v0

    :cond_11
    const-string v0, "getSpec"

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)Z
    .registers 3

    sget-object v0, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub$Proxy;->sDefaultImpl:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub$Proxy;->sDefaultImpl:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

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

    invoke-static {p1}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.miui.internal.transition.IMiuiAppTransitionAnimationHelper"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_27

    const/4 v2, 0x2

    if-eq p1, v2, :cond_20

    const/4 v2, 0x3

    if-eq p1, v2, :cond_19

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_15

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :cond_15
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub;->notifyMiuiAnimationEnd()V

    return v1

    :cond_20
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub;->notifyMiuiAnimationStart()V

    return v1

    :cond_27
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub;->getSpec(Ljava/lang/String;I)Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_42

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, p3, v1}, Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_46

    :cond_42
    const/4 v5, 0x0

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    :goto_46
    return v1
.end method
