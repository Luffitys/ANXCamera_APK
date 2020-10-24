.class public Lcom/google/android/play/core/splitinstall/SplitRemoteImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/play/core/remote/IRemote;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field static final sInstance:Lcom/google/android/play/core/remote/IRemote;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/play/core/splitinstall/SplitRemoteImpl;

    invoke-direct {v0}, Lcom/google/android/play/core/splitinstall/SplitRemoteImpl;-><init>()V

    sput-object v0, Lcom/google/android/play/core/splitinstall/SplitRemoteImpl;->sInstance:Lcom/google/android/play/core/remote/IRemote;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asInterface(Landroid/os/IBinder;)Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceProxy;
    .locals 0

    invoke-static {p1}, Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceHolder;->queryLocalInterface(Landroid/os/IBinder;)Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceProxy;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic asInterface(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/play/core/splitinstall/SplitRemoteImpl;->asInterface(Landroid/os/IBinder;)Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceProxy;

    move-result-object p0

    return-object p0
.end method
