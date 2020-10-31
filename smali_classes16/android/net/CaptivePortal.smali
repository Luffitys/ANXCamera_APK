.class public Landroid/net/CaptivePortal;
.super Ljava/lang/Object;
.source "CaptivePortal.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/CaptivePortal$EventId;
    }
.end annotation


# static fields
.field private static final APP_REQUEST_BASE:I = 0x64

.field public static final APP_REQUEST_REEVALUATION_REQUIRED:I = 0x64
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final APP_RETURN_DISMISSED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final APP_RETURN_UNWANTED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final APP_RETURN_WANTED_AS_IS:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/CaptivePortal;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBinder:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/CaptivePortal$1;

    invoke-direct {v0}, Landroid/net/CaptivePortal$1;-><init>()V

    sput-object v0, Landroid/net/CaptivePortal;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/CaptivePortal;->mBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public ignoreNetwork()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/net/CaptivePortal;->mBinder:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/net/ICaptivePortal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ICaptivePortal;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/net/ICaptivePortal;->appResponse(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_c

    :catch_b
    move-exception v0

    :goto_c
    return-void
.end method

.method public logEvent(ILjava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/net/CaptivePortal;->mBinder:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/net/ICaptivePortal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ICaptivePortal;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/net/ICaptivePortal;->logEvent(ILjava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_b

    :catch_a
    move-exception v0

    :goto_b
    return-void
.end method

.method public reevaluateNetwork()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/net/CaptivePortal;->mBinder:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/net/ICaptivePortal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ICaptivePortal;

    move-result-object v0

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Landroid/net/ICaptivePortal;->appRequest(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_d

    :catch_c
    move-exception v0

    :goto_d
    return-void
.end method

.method public reportCaptivePortalDismissed()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/net/CaptivePortal;->mBinder:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/net/ICaptivePortal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ICaptivePortal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/net/ICaptivePortal;->appResponse(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_c

    :catch_b
    move-exception v0

    :goto_c
    return-void
.end method

.method public useNetwork()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/net/CaptivePortal;->mBinder:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/net/ICaptivePortal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ICaptivePortal;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/net/ICaptivePortal;->appResponse(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_c

    :catch_b
    move-exception v0

    :goto_c
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/net/CaptivePortal;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
