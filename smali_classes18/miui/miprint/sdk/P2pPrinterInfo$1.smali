.class Lmiui/miprint/sdk/P2pPrinterInfo$1;
.super Ljava/lang/Object;
.source "P2pPrinterInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/miprint/sdk/P2pPrinterInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmiui/miprint/sdk/P2pPrinterInfo;",
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
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lmiui/miprint/sdk/P2pPrinterInfo$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/miprint/sdk/P2pPrinterInfo;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiui/miprint/sdk/P2pPrinterInfo;
    .registers 3

    new-instance v0, Lmiui/miprint/sdk/P2pPrinterInfo;

    invoke-direct {v0, p1}, Lmiui/miprint/sdk/P2pPrinterInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lmiui/miprint/sdk/P2pPrinterInfo$1;->newArray(I)[Lmiui/miprint/sdk/P2pPrinterInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lmiui/miprint/sdk/P2pPrinterInfo;
    .registers 3

    new-array v0, p1, [Lmiui/miprint/sdk/P2pPrinterInfo;

    return-object v0
.end method
