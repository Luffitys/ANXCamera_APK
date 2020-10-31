.class Landroid/net/ConnectivityDiagnosticsManager$DataStallReport$1;
.super Ljava/lang/Object;
.source "ConnectivityDiagnosticsManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;
    .registers 11

    new-instance v8, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/LinkProperties;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkCapabilities;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/PersistableBundle;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;-><init>(Landroid/net/Network;JILandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/os/PersistableBundle;)V

    return-object v8
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;
    .registers 3

    new-array v0, p1, [Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport$1;->newArray(I)[Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;

    move-result-object p1

    return-object p1
.end method
