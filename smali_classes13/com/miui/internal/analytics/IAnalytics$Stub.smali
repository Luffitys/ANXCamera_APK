.class public abstract Lcom/miui/internal/analytics/IAnalytics$Stub;
.super Landroid/os/Binder;
.source "IAnalytics.java"

# interfaces
.implements Lcom/miui/internal/analytics/IAnalytics;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/analytics/IAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/analytics/IAnalytics$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.internal.analytics.IAnalytics"

.field static final TRANSACTION_track:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.miui.internal.analytics.IAnalytics"

    invoke-virtual {p0, p0, v0}, Lcom/miui/internal/analytics/IAnalytics$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/internal/analytics/IAnalytics;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.miui.internal.analytics.IAnalytics"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/miui/internal/analytics/IAnalytics;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/miui/internal/analytics/IAnalytics;

    return-object v1

    :cond_14
    new-instance v1, Lcom/miui/internal/analytics/IAnalytics$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/internal/analytics/IAnalytics$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/miui/internal/analytics/IAnalytics;
    .registers 1

    sget-object v0, Lcom/miui/internal/analytics/IAnalytics$Stub$Proxy;->sDefaultImpl:Lcom/miui/internal/analytics/IAnalytics;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/miui/internal/analytics/IAnalytics;)Z
    .registers 3

    sget-object v0, Lcom/miui/internal/analytics/IAnalytics$Stub$Proxy;->sDefaultImpl:Lcom/miui/internal/analytics/IAnalytics;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lcom/miui/internal/analytics/IAnalytics$Stub$Proxy;->sDefaultImpl:Lcom/miui/internal/analytics/IAnalytics;

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

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.miui.internal.analytics.IAnalytics"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_13

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_f

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :cond_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v2, Lcom/miui/internal/analytics/Event;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/miui/internal/analytics/Event;

    invoke-virtual {p0, v2}, Lcom/miui/internal/analytics/IAnalytics$Stub;->track([Lcom/miui/internal/analytics/Event;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method
