.class public Lmiui/mqsas/sdk/event/LowMemEvent;
.super Ljava/lang/Object;
.source "LowMemEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/mqsas/sdk/event/LowMemEvent$ProcessMemItem;,
        Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/mqsas/sdk/event/LowMemEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public aServicesMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

.field public bServicesMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

.field public backupMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

.field public cachedMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

.field public foregroundMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

.field public heavyWeightMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

.field public homeMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

.field public nativeMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

.field public perceptibleLowMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

.field public perceptibleMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

.field public persistentMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

.field public persistentServiceMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

.field public previousMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

.field public systemMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

.field public visibleMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/mqsas/sdk/event/LowMemEvent$1;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$1;-><init>()V

    sput-object v0, Lmiui/mqsas/sdk/event/LowMemEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    const-string v1, "nativeMemOom"

    invoke-direct {v0, v1}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->nativeMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    new-instance v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    const-string v1, "systemMemOom"

    invoke-direct {v0, v1}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->systemMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    new-instance v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    const-string v1, "persistentMemOom"

    invoke-direct {v0, v1}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->persistentMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    new-instance v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    const-string v1, "persistentServiceMemOom"

    invoke-direct {v0, v1}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->persistentServiceMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    new-instance v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    const-string v1, "foregroundMemOom"

    invoke-direct {v0, v1}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->foregroundMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    new-instance v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    const-string v1, "visibleMemOom"

    invoke-direct {v0, v1}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->visibleMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    new-instance v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    const-string v1, "perceptibleMemOom"

    invoke-direct {v0, v1}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->perceptibleMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    new-instance v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    const-string v1, "perceptibleLowMemOom"

    invoke-direct {v0, v1}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->perceptibleLowMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    new-instance v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    const-string v1, "heavyWeightMemOom"

    invoke-direct {v0, v1}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->heavyWeightMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    new-instance v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    const-string v1, "backupMemOom"

    invoke-direct {v0, v1}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->backupMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    new-instance v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    const-string v1, "aServicesMemOom"

    invoke-direct {v0, v1}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->aServicesMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    new-instance v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    const-string v1, "homeMemOom"

    invoke-direct {v0, v1}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->homeMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    new-instance v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    const-string v1, "previousMemOom"

    invoke-direct {v0, v1}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->previousMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    new-instance v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    const-string v1, "bServicesMemOom"

    invoke-direct {v0, v1}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->bServicesMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    new-instance v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    const-string v1, "cachedMemOom"

    invoke-direct {v0, v1}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->cachedMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->nativeMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    const-class v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->systemMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    const-class v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->persistentMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    const-class v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->persistentServiceMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    const-class v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->foregroundMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    const-class v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->visibleMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    const-class v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->perceptibleMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    const-class v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->perceptibleLowMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    const-class v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->heavyWeightMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    const-class v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->backupMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    const-class v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->aServicesMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    const-class v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->homeMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    const-class v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->previousMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    const-class v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->bServicesMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    const-class v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->cachedMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public sortAndSub()V
    .registers 2

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->nativeMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->sort()V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->systemMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->sort()V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->persistentMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->sort()V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->persistentServiceMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->sort()V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->foregroundMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->sort()V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->visibleMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->sort()V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->perceptibleMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->sort()V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->perceptibleLowMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->sort()V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->heavyWeightMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->sort()V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->backupMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->sort()V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->aServicesMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->sort()V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->homeMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->sort()V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->previousMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->sort()V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->bServicesMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->sort()V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->cachedMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->sort()V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->nativeMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->subItems()V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->systemMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->subItems()V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->persistentMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->subItems()V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->persistentServiceMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->subItems()V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->foregroundMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->subItems()V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->visibleMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->subItems()V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->perceptibleMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->subItems()V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->perceptibleLowMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->subItems()V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->heavyWeightMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->subItems()V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->backupMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->subItems()V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->aServicesMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->subItems()V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->homeMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->subItems()V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->previousMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->subItems()V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->bServicesMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->subItems()V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->cachedMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->subItems()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LowMemEvent{nativeMemOom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->nativeMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", systemMemOom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->systemMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", persistentMemOom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->persistentMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", persistentServiceMemOom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->persistentServiceMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", foregroundMemOom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->foregroundMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", visibleMemOom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->visibleMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", perceptibleMemOom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->perceptibleMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", perceptibleLowMemOom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->perceptibleLowMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", heavyWeightMemOom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->heavyWeightMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", backupMemOom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->backupMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", aServicesMemOom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->aServicesMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", homeMemOom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->homeMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", previousMemOom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->previousMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bServicesMemOom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->bServicesMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cachedMemOom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->cachedMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->nativeMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->systemMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->persistentMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->persistentServiceMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->foregroundMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->visibleMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->perceptibleMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->perceptibleLowMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->heavyWeightMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->backupMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->aServicesMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->homeMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->previousMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->bServicesMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->cachedMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
