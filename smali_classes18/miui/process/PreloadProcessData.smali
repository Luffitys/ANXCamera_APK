.class public Lmiui/process/PreloadProcessData;
.super Ljava/lang/Object;
.source "PreloadProcessData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/process/PreloadProcessData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private intent:Landroid/content/Intent;

.field private packageName:Ljava/lang/String;

.field private startActivity:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/process/PreloadProcessData$1;

    invoke-direct {v0}, Lmiui/process/PreloadProcessData$1;-><init>()V

    sput-object v0, Lmiui/process/PreloadProcessData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/process/PreloadProcessData;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput-boolean v0, p0, Lmiui/process/PreloadProcessData;->startActivity:Z

    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lmiui/process/PreloadProcessData;->intent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLandroid/content/Intent;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/process/PreloadProcessData;->packageName:Ljava/lang/String;

    iput-boolean p2, p0, Lmiui/process/PreloadProcessData;->startActivity:Z

    iput-object p3, p0, Lmiui/process/PreloadProcessData;->intent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lmiui/process/PreloadProcessData;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/process/PreloadProcessData;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .registers 2

    iput-object p1, p0, Lmiui/process/PreloadProcessData;->intent:Landroid/content/Intent;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/process/PreloadProcessData;->packageName:Ljava/lang/String;

    return-void
.end method

.method public startActivity(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/process/PreloadProcessData;->startActivity:Z

    return-void
.end method

.method public startActivity()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/process/PreloadProcessData;->startActivity:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lmiui/process/PreloadProcessData;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lmiui/process/PreloadProcessData;->startActivity:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lmiui/process/PreloadProcessData;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
